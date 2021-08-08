package com.example.readmeSpring.RankLogic;

import org.springframework.stereotype.Component;

@Component
public class VeryEasy extends RankSelectorTemplate{
    
    /*
        200000
        / 4 = 50000
    */
    
    @Override
    public long getQuarter(){
        return 50000;
    }
    
}