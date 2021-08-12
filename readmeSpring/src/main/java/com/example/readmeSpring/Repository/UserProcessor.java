package com.example.readmeSpring.Repository;

import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;

import com.example.readmeSpring.DateGenerator;
import com.example.readmeSpring.EXP.EXP;

@Service
public class UserProcessor{
    
    @Autowired
    private DateGenerator dateGenerator;
    
    @Autowired
    private EXP exp;
    
    @Autowired
    @Qualifier("mysqlDataBase")
    private DataBase mysqlDataBase;
    
    public void doProcess(Model model, String userName){
        UserInfo userInfo = new UserInfo(userName, -1, dateGenerator.getServerDate(), 0, 0, 0);
        if(checkDataBase(userInfo)) updateUser(userInfo, model);
        model.addAttribute("EXP", userInfo.getTotalEXP());
        model.addAttribute("totalContributions", userInfo.getTotalContributions());
        model.addAttribute("totalStargazer", userInfo.getTotalStargazer());
        model.addAttribute("totalFollower", userInfo.getTotalFollower());
    }
    
    // same = false
    // different, null = true
    private boolean checkDataBase(UserInfo userInfo){
        UserInfo getUser = this.mysqlDataBase.getUserInfo(userInfo.getName());
        if(getUser == null) return true;
        userInfo = userInfoSetter(userInfo, getUser.getTotalEXP(), getUser.getTotalContributions(), getUser.getTotalStargazer(), getUser.getTotalFollower());
        return !(getUser.getLastUpdate().equals(userInfo.getLastUpdate()));
    }
    
    private void updateUser(UserInfo userInfo, Model model){
        HashMap<String, Long> userGithubData = exp.getEXP(userInfo.getName());
        userInfo = userInfoSetter(userInfo, userGithubData.get("totalEXP"), userGithubData.get("totalContributions"), userGithubData.get("totalStargazer"), userGithubData.get("totalFollower"));
        this.mysqlDataBase.insertTable(userInfo);
    }
    
    private UserInfo userInfoSetter(UserInfo userInfo, long totalEXP, long totalContributions, long totalStargazer, long totalFollower){
        userInfo.setTotalEXP(totalEXP);
        userInfo.setTotalContributions(totalContributions);
        userInfo.setTotalStargazer(totalStargazer);
        userInfo.setTotalFollower(totalFollower);
        return userInfo;
    }
    
}