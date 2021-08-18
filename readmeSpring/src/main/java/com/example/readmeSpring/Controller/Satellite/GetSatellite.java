package com.example.readmeSpring.Controller.Satellite;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.example.readmeSpring.NameOptimizer;
import com.example.readmeSpring.NameLengthCalculator;
import com.example.readmeSpring.Repository.User.User;
import com.example.readmeSpring.Repository.User.UserQueryGenerator;
import com.example.readmeSpring.Repository.UserProcessor;
import com.example.readmeSpring.ViewLogic.DecorateFactory.DecorateFactory;
import com.example.readmeSpring.ViewLogic.Decoraters.PaintDecorater;

import java.util.Queue;

@Service
public class GetSatellite{
    
    @Autowired
    private DecorateFactory decorateFactory;
    
    @Autowired
    private UserQueryGenerator userQueryGenerator;
    
    @Autowired
    private UserProcessor userProcessor;
    
    @Autowired
    private NameOptimizer nameOptimizer;
    
    @Autowired
    private NameLengthCalculator nameLengthCalculator;
    
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
        if(user.getBackground() != "none") model.addAttribute("name", nameOptimizer.cropString(user.getName(), nameLengthCalculator.getLargeNameLength(user.getName())));
        else model.addAttribute("name", user.getName());
        user.setName(nameOptimizer.optimze(user.getName()));
    }
    
}