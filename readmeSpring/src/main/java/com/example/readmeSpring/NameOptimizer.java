package com.example.readmeSpring;

import org.springframework.stereotype.Component;

@Component
public class NameOptimizer{
    
    public String optimze(String name){
        String ret = "";
        for(int i = 0; i < name.length(); i++){
            if((int)name.charAt(i) >= (int)'A' && (int)name.charAt(i) <= (int)'Z') ret += (char)((int)name.charAt(i)+32);
            else ret += name.charAt(i);
        }
        return ret;
    }
    
}