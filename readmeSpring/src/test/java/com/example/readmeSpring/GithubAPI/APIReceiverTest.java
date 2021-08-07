package com.example.readmeSpring.EXP.GithubAPI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import org.junit.jupiter.api.Test;

@SpringBootTest
public class APIReceiverTest{
    
    @Autowired
    APIReceiver apiReceiver;
    
    @Test
    public void 데이터_파싱_성공확인(){
        System.out.println(this.apiReceiver.getTotalContributions("Devxb"));
    }
}