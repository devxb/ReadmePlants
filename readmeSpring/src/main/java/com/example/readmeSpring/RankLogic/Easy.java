package com.example.readmeSpring.RankLogic;

import org.springframework.stereotype.Component; 

@Component
public class Easy extends RankSelectorTemplate{
    
    /*
        2000000
        / 4 = 500000
    */
    
    @Override
    public long getQuarter(){
        return 500000;
    }
    
}