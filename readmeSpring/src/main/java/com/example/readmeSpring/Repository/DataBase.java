package com.example.readmeSpring.Repository;

public interface DataBase{
    
    public void insertTable(UserInfo userInfo);
    public UserInfo getUserInfo(String name);
    
}