package com.example.readmeSpring.RankLogic;

import org.springframework.ui.Model;

public interface RankSelector{
    
    public String getRank(long EXP, Model model);
    
}