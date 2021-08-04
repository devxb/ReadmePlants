package com.example.readmeSpring.ViewLogic.Decoraters;

import org.springframework.ui.Model;
import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;

@Component
@Scope("prototype")
public class BlueMoon extends PaintDecoraterTemplate{
    
    private String planetName = "blueMoon.jsp";
    
    @Override
    public void painting(Model model){
        model.addAttribute("planetName", this.planetName);
    }
    
}