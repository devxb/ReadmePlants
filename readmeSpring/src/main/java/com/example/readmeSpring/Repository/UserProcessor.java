package com.example.readmeSpring.Repository;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;

import com.example.readmeSpring.DateGenerator;
import com.example.readmeSpring.EXP.EXP;

@Service
public class UserProcessor{
    
    @Autowired
    DateGenerator dateGenerator;
    
    @Autowired
    EXP exp;
    
    @Autowired
    @Qualifier("mysqlDataBase")
    DataBase mysqlDataBase;
    
    public void doProcess(Model model, String userName){
        UserInfo userInfo = new UserInfo(userName, -1, dateGenerator.getServerDate());
        if(checkDataBase(userInfo)) updateUser(userInfo);
        model.addAttribute("EXP", userInfo.getTotalEXP());
    }
    
    // same = false
    // different, null = true
    private boolean checkDataBase(UserInfo userInfo){
        UserInfo getUser = this.mysqlDataBase.getUserInfo(userInfo.getName());
        if(getUser == null) return true;
        userInfo.setTotalEXP(getUser.getTotalEXP());
        return !(getUser.getLastUpdate().equals(userInfo.getLastUpdate()));
    }
    
    private void updateUser(UserInfo userInfo){
        userInfo.setTotalEXP(this.exp.getEXP(userInfo.getName()));
        this.mysqlDataBase.insertTable(userInfo);
    }
    
}