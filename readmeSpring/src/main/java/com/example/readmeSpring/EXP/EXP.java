package com.example.readmeSpring.EXP;

import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import java.util.HashMap;

import com.example.readmeSpring.EXP.GithubAPI.APIReceiver;

@Component
public class EXP{
    
    @Autowired
    private APIReceiver apiReceiver;
    private final static long contributionEXP = 9876;
    private final static long starEXP = 19876;
    private final static long followerEXP = 13457;
    
    public HashMap<String, Long> getEXP(String userName){
        HashMap<String, Long> userGithubData = apiReceiver.getUserGithubData(userName);
        userGithubData.put("totalEXP",Math.min(999999999, userGithubData.get("totalContributions") * contributionEXP
        + userGithubData.get("totalStargazer") * starEXP
        + followerEXP * userGithubData.get("totalFollower")
        ));
        return userGithubData;
    }
    
}