package com.example.readmeSpring.ViewLogic.Decoraters;

import org.springframework.ui.Model;
import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;

@Component
@Scope("prototype")
public class BlackNameTag extends PaintDecoraterTemplate{
    
    private String nameTag = "blackNameTag.jsp";
    
    @Override
    public void painting(Model model){
        if(model.getAttribute("background").equals("none")) model.addAttribute("nameTag", this.nameTag);
    }
    
}