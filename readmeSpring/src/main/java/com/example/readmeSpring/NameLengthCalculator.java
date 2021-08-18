package com.example.readmeSpring;

import org.springframework.stereotype.Component;

@Component
public class NameLengthCalculator{
    
    public int getLargeNameLength(String name){
        int[] Alph = {13, 14, 12, 15, 12, 11, 15, 16, 6, 11, 15, 12, 18, 16, 17, 15, 17, 16, 11, 14, 17, 14, 18, 14, 13, 14};
        int[] alph = {12, 13, 11, 13, 11, 6, 12, 12, 4, 5, 12, 5, 19, 13, 12, 13, 13, 9, 9, 7, 13, 12, 17, 11, 11, 9};
        int[] numb = {11, 11, 11, 11, 11, 11, 11, 11, 11, 11};
        int ans = 0;
        int idx = name.length()-1;
        for(int i = 0; i < name.length(); i++){
            if((int)name.charAt(i) >= (int)'a' && (int)name.charAt(i) <= (int)'z') ans += alph[(int)name.charAt(i)-(int)'a'];
            else if((int)name.charAt(i) >= (int)'0' && (int)name.charAt(i) <= (int)'9') ans += numb[(int)name.charAt(i)-(int)'0'];
            else if((int)name.charAt(i) >= (int)'A' && (int)name.charAt(i) <= 'Z') ans += Alph[(int)name.charAt(i)-(int)'A'];
            else ans += 10;
            ans += 1; // jump 1px;
            if(ans > 150) return i;
        }
        return idx;
    }
    
}