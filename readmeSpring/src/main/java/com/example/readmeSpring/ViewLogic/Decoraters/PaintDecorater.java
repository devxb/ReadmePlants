package com.example.readmeSpring.ViewLogic.Decoraters;

import org.springframework.ui.Model;

public interface PaintDecorater{
    
    public void paintView(Model model);
    public void setPaintDecorater(PaintDecorater paintDecorater);
    
}