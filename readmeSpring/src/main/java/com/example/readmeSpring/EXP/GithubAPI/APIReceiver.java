package com.example.readmeSpring.EXP.GithubAPI;

import com.example.readmeSpring.DateGenerator;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;
import org.springframework.beans.factory.annotation.Autowired;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

@Component
public class APIReceiver{
    
    @Autowired
    private TokenStorage tokenStorage;
    
    @Autowired
    private DateGenerator dateGenerator;
    
    public long getTotalContributions(String userName){
        long totalContributions = 0;
        JSONParser parser = null;
        Object obj = null;
        try{
            parser = new JSONParser();
            obj = parser.parse(getJSONData(userName));
        } catch (ParseException PE){
            return -500;
        }
        JSONObject Jobj = (JSONObject)obj;
        try{
            Jobj = (JSONObject)Jobj.get("data");
            Jobj = (JSONObject)Jobj.get("user");
            Jobj = (JSONObject)Jobj.get("contributionsCollection");
            Jobj = (JSONObject)Jobj.get("contributionCalendar");
            totalContributions = (long)Jobj.get("totalContributions");
        } catch (NullPointerException NPE){
            return -404;
        }
        return totalContributions;
    }
    
    private String getJSONData(String userName){
        String ret = "ERR";
        HttpURLConnection httpURLConnection = null;
        BufferedReader br = null;
        try{
            httpURLConnection = this.connectGithub(userName);
            br = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "utf-8"));
            ret = br.readLine();
            br.close();
            httpURLConnection.disconnect();
        }catch(Exception E){}
        return ret;
    }
    
    private HttpURLConnection connectGithub(String userName) throws Exception{
        URL url = new URL("https://api.github.com/graphql");
        HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Content-Type","application/json");
        httpURLConnection.setRequestProperty("Authorization","bearer " + this.tokenStorage.getToken());
        httpURLConnection.setDoOutput(true);
        
        String query = "{\n";
        query += "\"query\" : \"query($login: String!, $to: DateTime){ rateLimit{cost remaining limit nodeCount} user(login:$login){ name contributionsCollection(to:$to){ contributionCalendar{ totalContributions } } } }\", ";
        query += "\"variables\" : {\"login\" : " + "\"" + userName + "\"," + "\"to\" : " + "\"" + dateGenerator.getServerDate() + "T00:00:00Z\"" + "}\n";
        query += "}\n";
        
        OutputStream setQuery = httpURLConnection.getOutputStream();
        setQuery.write(query.getBytes("utf-8"));
        setQuery.close();
        
        return httpURLConnection;
    }
    
}