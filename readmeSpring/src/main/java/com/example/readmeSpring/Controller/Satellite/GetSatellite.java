package com.example.readmeSpring.Controller.Satellite;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.example.readmeSpring.NameOptimizer;
import com.example.readmeSpring.Repository.User.User;
import com.example.readmeSpring.Repository.User.UserQueryGenerator;
import com.example.readmeSpring.Repository.UserProcessor;
import com.example.readmeSpring.ViewLogic.DecorateFactory.DecorateFactory;
import com.example.readmeSpring.ViewLogic.Decoraters.PaintDecorater;

import java.util.Queue;

@Service
public class GetSatellite{
    
    @Autowired
    DecorateFactory decorateFactory;
    
    @Autowired
    UserQueryGenerator userQueryGenerator;
    
    @Autowired
    UserProcessor userProcessor;
    
    @Autowired
    NameOptimizer nameOptimizer;
    
    public void runSatellite(Model model, User user){
        this.nameSetter(model, user);
        model.addAttribute("background", user.getBackground());
        userProcessor.doProcess(model, user.getName());
        Queue<String> userQuery = userQueryGenerator.getUserQuery(user);
        PaintDecorater paintDecorater = decorateFactory.getPaintDecorater(userQuery);
        paintDecorater.paintView(model);
        return;
    }
    
    private void nameSetter(Model model, User user){
        model.addAttribute("name", user.getName());
        user.setName(nameOptimizer.optimze(user.getName()));
    }
    
}