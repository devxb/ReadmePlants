package com.example.readmeSpring.RankLogic;

import org.springframework.stereotype.Component;

@Component
public class VeryEasy extends RankSelectorTemplate{
    
    /*
        1000000
        / 4 = 250000
    */
    
    @Override
    public long getQuarter(){
        return 250000;
    }
    
}