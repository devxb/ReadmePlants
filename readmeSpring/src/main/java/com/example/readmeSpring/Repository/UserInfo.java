package com.example.readmeSpring.Repository;

public class UserInfo{
    
    private String name;
    private long totalEXP;
    private String lastUpdate;
    
    public UserInfo(){}
    
    public UserInfo(String name, long totalEXP, String lastUpdate){
        this.name = name;
        this.totalEXP = totalEXP;
        this.lastUpdate = lastUpdate;
    }
    
    public String getName(){
        return this.name;
    }
    
    public long getTotalEXP(){
        return this.totalEXP;
    }
    
    public String getLastUpdate(){
        return this.lastUpdate;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public void setTotalEXP(long totalEXP){
        this.totalEXP = totalEXP;
    }
    
    public void setLastUpdate(String lastUpdate){
        this.lastUpdate = lastUpdate;
    }
    
}