package com.example.readmeSpring.ViewLogic.Decoraters;

import org.springframework.ui.Model;
import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;

@Component
@Scope("prototype")
public class Hill extends PaintDecoraterTemplate{
    
    private String groundName = "hill.jsp";
    
    @Override
    public void painting(Model model){
        model.addAttribute("groundName", this.groundName);
    }
    
}