package com.example.readmeSpring.ViewLogic.DecorateFactory;

import com.example.readmeSpring.ViewLogic.Decoraters.*;

import java.util.Map;
import java.util.LinkedList;
import java.util.Queue;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.ApplicationContext;

@Service
public class DecorateFactory{
    
    @Autowired
    ApplicationContext applicationContext;
    
    public PaintDecorater getPaintDecorater(Queue<String> query){
        
        Map<String, PaintDecorater> paintDecoraters = this.getPaintDecoraters();
        
        PaintDecorater answerPaintDecorater = null;
        while(!query.isEmpty()){
            String q = query.poll();
            PaintDecorater paintDecorater = findDecorater(paintDecoraters, q);
            if(answerPaintDecorater == null) answerPaintDecorater = paintDecorater;
            else answerPaintDecorater.setPaintDecorater(paintDecorater);
        }
        return answerPaintDecorater;
    }
    
    private Map<String, PaintDecorater> getPaintDecoraters(){
        return applicationContext.getBeansOfType(PaintDecorater.class);
    }
    
    private PaintDecorater findDecorater(Map<String, PaintDecorater> paintDecoraters, String decoraterName){
        return paintDecoraters.get(decoraterName);
    }
    
}