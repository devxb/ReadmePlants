package com.example.readmeSpring.Repository;

public class UserInfo{
    
    private String name;
    private long totalEXP;
    private String lastUpdate;
    private long totalContributions;
    private long totalStargazer;
    
    public UserInfo(){}
    
    public UserInfo(String name, long totalEXP, String lastUpdate, long totalContributions, long totalStargazer){
        this.name = name;
        this.totalEXP = totalEXP;
        this.lastUpdate = lastUpdate;
        this.totalContributions = totalContributions;
        this.totalStargazer = totalStargazer;
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
    
    public long getTotalContributions(){
        return this.totalContributions;
    }
    
    public long getTotalStargazer(){
        return this.totalStargazer;
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
    
    public void setTotalContributions(long totalContributions){
        this.totalContributions = totalContributions;
    }
    
    public void setTotalStargazer(long totalStargazer){
        this.totalStargazer = totalStargazer;
    }
    
}