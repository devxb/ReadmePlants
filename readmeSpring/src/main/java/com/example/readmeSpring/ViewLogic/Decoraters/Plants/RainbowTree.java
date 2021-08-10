package com.example.readmeSpring.ViewLogic.Decoraters;


import org.springframework.ui.Model;
import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Scope;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.example.readmeSpring.RankLogic.Normal;
import com.example.readmeSpring.RankLogic.RankSelector;

@Component
@Scope("prototype")
public class RainbowTree extends PaintDecoraterTemplate{
    
    @Autowired
    @Qualifier("normal")
    private RankSelector rankSelector;
    private String plantName = "rainbowTree/rainbowTree";

    @Override
    public void painting(Model model){
        model.addAttribute("plantName", this.plantName+this.rankSelector.getRank((long)model.getAttribute("EXP"), model)+".jsp");
    }
    
}