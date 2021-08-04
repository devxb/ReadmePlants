package com.example.readmeSpring.RankLogic;

import org.springframework.ui.Model;

public abstract class RankSelectorTemplate implements RankSelector{
    
    @Override
    public String getRank(long EXP, Model model){
        long quarter = getQuarter();
        for(int i = 1; i <= 4; i++){
            if(EXP < i*quarter){
                System.out.println("EXP/quarter " + (i*quarter)%EXP);
                System.out.println("EXP/quarter/152 " + (((i*quarter)%EXP)/152));
                setEXP(model, (double)(((i*quarter)%EXP)/152), i);
                return ""+i;
            }
        }
        setEXP(model, 152, 5);
        return "5";
    }
    
    private void setEXP(Model model, double EXP, int LV){
        System.out.println(EXP);
        model.addAttribute("growBar", EXP);
        model.addAttribute("level", LV);
    }
    
    abstract public long getQuarter();
    
}