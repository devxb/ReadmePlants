package com.example.readmeSpring.EXP;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import org.junit.jupiter.api.Test;

@SpringBootTest
public class EXPTest{
    
    @Autowired
    EXP exp;
    
    @Test
    public void EXP_테스트(){
        System.out.println(this.exp.getEXP("Devxb"));
    }
}