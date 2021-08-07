package com.example.readmeSpring.RankLogic;

import org.springframework.stereotype.Component;

@Component
public class Normal extends RankSelectorTemplate{
    
    /*
        4000000
        / 4 = 1000000
    */
    
    @Override
    public long getQuarter(){
        return 1000000;
    }
    
}