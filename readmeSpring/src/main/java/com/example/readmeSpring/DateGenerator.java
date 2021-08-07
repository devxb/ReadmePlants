package com.example.readmeSpring;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class DateGenerator{
    
    public String getServerDate(){
        return getYear()+"-"+getMonth()+"-"+getDay();
    }
    
    private String getYear(){
        SimpleDateFormat y = new SimpleDateFormat("yyyy");
        return y.format(new Date());
    }
    
    private String getMonth(){
        SimpleDateFormat m = new SimpleDateFormat("MM");
        return m.format(new Date());
    }
    
    private String getDay(){
        SimpleDateFormat d = new SimpleDateFormat("dd");
        return d.format(new Date());
    }
    
}