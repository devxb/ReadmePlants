package com.example.readmeSpring.EXP;

import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.example.readmeSpring.EXP.GithubAPI.APIReceiver;

@Component
public class EXP{
    
    @Autowired
    private APIReceiver apiReceiver;
    private static long EXPValue = 9876;
    
    public long getEXP(String userName){
        return (long)(Math.min(99999999, this.apiReceiver.getTotalContributions(userName)*this.EXPValue));
    }
    
}