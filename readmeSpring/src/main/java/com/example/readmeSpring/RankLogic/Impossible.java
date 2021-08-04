package com.example.readmeSpring.RankLogic;

import org.springframework.stereotype.Component;

@Component
public class Impossible extends RankSelectorTemplate{
    
    /*
        16000000
        / 4 = 4000000
    */
    
    @Override
    public long getQuarter(){
        return 4000000;
    }
    
}