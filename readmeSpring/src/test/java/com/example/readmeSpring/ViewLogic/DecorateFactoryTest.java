package com.example.readmeSpring.ViewLogic.DecorateFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import org.junit.jupiter.api.Test;

import java.util.Queue;
import java.util.LinkedList;

import com.example.readmeSpring.ViewLogic.Decoraters.*;

@SpringBootTest
public class DecorateFactoryTest{
    
    @Autowired
    DecorateFactory decorateFactory;
    
    @Test
    public void 데코레이트팩토리_테스트(){
        /*
            p1과 p2가 다른 주솟값을 갖고있는 PaintDecorater를 반환하는지 확인
        */
        Queue<String> q = new LinkedList<String>();
        q.add("hill");
        q.add("basicNameTag");
        q.add("blueMoon");
        q.add("blossomTree");
        
        PaintDecorater p1 = decorateFactory.getPaintDecorater(q);
        
        q.add("hill");
        q.add("basicNameTag");
        q.add("blueMoon");
        q.add("blossomTree");
        PaintDecorater p2 = decorateFactory.getPaintDecorater(q);
        
        System.out.println(p1 + " " + p2);
        
    }
    
}