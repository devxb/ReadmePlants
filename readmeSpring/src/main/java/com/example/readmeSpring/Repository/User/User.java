package com.example.readmeSpring.Repository.User;

public class User{
    
    private String name = "Devxb";
    private String ground = "hill";
    private String nameTag = "blackNameTag";
    private String planet = "yellowMoon";
    private String plant = "blossomTree";
    private String background = "none";
    
    public User(){}
    
    public User(String name, String ground, String nameTag, String planet, String plant, String background){
        this.name = name;
        this.ground = ground;
        this.nameTag = nameTag;
        this.planet = planet;
        this.plant = plant;
        this.background = background;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public void setGround(String ground){
        this.ground = ground;
    }
    
    public void setNameTag(String nameTag){
        this.nameTag = nameTag;
    }
    
    public void setPlanet(String planet){
        this.planet = planet;
    }
    
    public void setPlant(String plant){
        this.plant = plant;
    }
    
    public void setBackground(String background){
        this.background = background;
    }
    
    public String getName(){
        return this.name;
    }
    
    public String getGround(){
        return this.ground;
    }
    
    public String getNameTag(){
        return this.nameTag;
    }
    
    public String getPlanet(){
        return this.planet;
    }
    
    public String getPlant(){
        return this.plant;
    }
    
    public String getBackground(){
        return this.background;
    }
    
}