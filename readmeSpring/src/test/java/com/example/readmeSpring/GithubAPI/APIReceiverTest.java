package com.example.readmeSpring.EXP.GithubAPI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import org.junit.jupiter.api.Test;

import java.util.HashMap;

@SpringBootTest
public class APIReceiverTest{
    
    @Autowired
    APIReceiver apiReceiver;
    
    @Test
    public void 데이터_파싱_성공확인(){
        HashMap<String, Long> ret = this.apiReceiver.getUserGithubData("Devxb");
        System.out.println(ret.get("totalContributions"));
        System.out.println(ret.get("totalStargazer"));
        System.out.println(ret.get("totalFollowers"));
    }
}