package com.example.readmeSpring.Repository;

import org.assertj.core.api.Assertions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.beans.factory.annotation.Qualifier;

import org.junit.jupiter.api.Test;

import com.example.readmeSpring.DateGenerator;
import com.example.readmeSpring.EXP.GithubAPI.APIReceiver;
import com.example.readmeSpring.EXP.EXP;

@SpringBootTest
public class MysqlDataBaseTest{
    
    @Autowired
    @Qualifier("mysqlDataBase")
    DataBase mysqlDataBase;
    
    @Autowired
    DateGenerator dateGenerator;
    
    @Autowired
    APIReceiver apiReceiver;
    
    @Autowired
    EXP exp;
    
    @Test
    public void DB연결_저장_추출_확인(){
        
        // UserInfo userInfo = new UserInfo("Devxb", exp.getEXP("Devxb"), this.dateGenerator.getServerDate());
        // mysqlDataBase.insertTable(userInfo);
        
        // UserInfo result = mysqlDataBase.getUserInfo("Devxb");
        
        // System.out.println(result.getName() + " " + result.getTotalEXP() + " " + result.getLastUpdate());
    }
}