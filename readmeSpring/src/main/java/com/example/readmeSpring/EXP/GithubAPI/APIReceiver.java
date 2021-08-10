package com.example.readmeSpring.EXP.GithubAPI;

import com.example.readmeSpring.DateGenerator;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;
import org.springframework.beans.factory.annotation.Autowired;

import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

@Component
public class APIReceiver{
    
    @Autowired
    private TokenStorage tokenStorage;
    
    @Autowired
    private DateGenerator dateGenerator;
    
    public HashMap<String, Long> getUserGithubData(String userName){
        HashMap<String, Long> ret = new HashMap<String, Long>();
        JSONParser parser = null;
        Object obj = null;
        try{
            parser = new JSONParser();
            obj = parser.parse(getJSONData(userName));
        } catch (ParseException PE){
            return errorMap();
        }
        JSONObject Jobj = (JSONObject)obj;
        try{
            Jobj = (JSONObject)Jobj.get("data");
            parseContribution((JSONObject)Jobj.get("user"));
            parseStargazer((JSONObject)Jobj.get("user"));
            ret.put("totalContributions", parseContribution((JSONObject)Jobj.get("user")));
            ret.put("totalStargazer", parseStargazer((JSONObject)Jobj.get("user")));
        } catch (NullPointerException NPE){
            return errorMap();
        }
        return ret;
    }
    
    private HashMap<String, Long> errorMap(){
        HashMap<String, Long> err = new HashMap<String, Long>();
        err.put("totalContributions", new Long(-404));
        err.put("totalStargazer", new Long(-404));
        return err;
    }
    
    private Long parseContribution(JSONObject Cobj){
        Cobj = (JSONObject)Cobj.get("contributionsCollection");
        Cobj = (JSONObject)Cobj.get("contributionCalendar");
        return new Long((long)Cobj.get("totalContributions"));
    }
    
    private Long parseStargazer(JSONObject Sobj){
        long ret = 0;
        Sobj = (JSONObject)Sobj.get("repositories");
        JSONArray SArray = (JSONArray)Sobj.get("nodes");
        for(int i = 0; i < SArray.size(); i++) ret += (long)((JSONObject)SArray.get(i)).get("stargazerCount");
        return new Long(ret);
    }
    
    private String getJSONData(String userName){
        String ret = "ERR";
        HttpURLConnection httpURLConnection = null;
        try{
            httpURLConnection = this.connectGithub(userName);
        }catch(Exception E){
            E.printStackTrace();
        }
        
        try(BufferedReader br = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "utf-8"))){
            ret = br.readLine();
        }catch(Exception E){
            E.printStackTrace();
        }
        httpURLConnection.disconnect();
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
        query += "\"query\" : \"query($login: String!, $to: DateTime){ rateLimit{cost remaining limit nodeCount} user(login:$login){ name repositories(first:100){ nodes{ stargazerCount } } contributionsCollection(to:$to){ contributionCalendar{ totalContributions } } } }\", ";
        query += "\"variables\" : {\"login\" : " + "\"" + userName + "\"," + "\"to\" : " + "\"" + dateGenerator.getServerDate() + "T00:00:00Z\"" + "}\n";
        query += "}\n";
        
        try(OutputStream setQuery = httpURLConnection.getOutputStream()){
            setQuery.write(query.getBytes("utf-8"));
        } catch (IOException IOE){
            IOE.printStackTrace();
        }
        
        return httpURLConnection;
    }
    
}