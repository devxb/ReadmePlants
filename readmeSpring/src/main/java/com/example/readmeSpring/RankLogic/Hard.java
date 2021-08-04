package com.example.readmeSpring.RankLogic;

import org.springframework.stereotype.Component;

@Component
public class Hard extends RankSelectorTemplate{
    
    /*
        8000000
        / 4 = 2000000
    */
    
    @Override
    public long getQuarter(){
        return 2000000;
    }
    
}