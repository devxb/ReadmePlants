package com.example.readmeSpring.RankLogic;

import org.springframework.ui.Model;

public abstract class RankSelectorTemplate implements RankSelector{
    
    @Override
    public String getRank(long EXP, Model model){
        if(EXP <= 0) setEXP(model, (double)(0), "1");
        long quarter = getQuarter();
        for(int i = 1; i <= 4; i++){
            if(EXP < i*quarter){
                setEXP(model, (double)(152 * ((double)EXP / (double)(i * quarter))), ""+i);
                return ""+i;
            }
        }
        setEXP(model, 152, "Max");
        return "5";
    }
    
    private void setEXP(Model model, double EXP, String LV){
        /*model.addAttribute("rank", this.getClass().getSimpleName());*/
        model.addAttribute("growBar", EXP);
        model.addAttribute("level", LV);
    }
    
    abstract public long getQuarter();
    
}