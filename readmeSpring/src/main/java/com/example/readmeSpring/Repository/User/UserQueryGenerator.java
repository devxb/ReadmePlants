package com.example.readmeSpring.Repository.User;

import org.springframework.stereotype.Component;

import java.util.Queue;
import java.util.LinkedList;

@Component
public class UserQueryGenerator{
    
    public Queue<String> getUserQuery(User user){
        Queue<String> ans = new LinkedList<String>();
        ans.add(user.getGround());
        ans.add(user.getNameTag());
        ans.add(user.getPlanet());
        ans.add(user.getPlant());
        return ans;
    }
    
}