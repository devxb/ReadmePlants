package com.example.readmeSpring.ViewLogic.Decoraters;

import org.springframework.ui.Model;

public abstract class PaintDecoraterTemplate implements PaintDecorater{
    
    private PaintDecorater paintDecorater;
    
    @Override
    public void setPaintDecorater(PaintDecorater paintDecorater){
        if(this.paintDecorater == null) this.paintDecorater = paintDecorater;
        else this.paintDecorater.setPaintDecorater(paintDecorater);
    }
    
    @Override
    public void paintView(Model model){
        painting(model);
        if(this.paintDecorater != null) this.paintDecorater.paintView(model);
    }
    
    public abstract void painting(Model model);
}