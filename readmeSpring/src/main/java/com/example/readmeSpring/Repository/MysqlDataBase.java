package com.example.readmeSpring.Repository;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MysqlDataBase implements DataBase{
    
    @Autowired
    SqlSession sqlSession;
    
    @Override
    public void insertTable(UserInfo userInfo){
        this.sqlSession.insert("userInfo.insertTable", userInfo);
    }
    
    @Override
    public UserInfo getUserInfo(String name){
        return (UserInfo)this.sqlSession.selectOne("userInfo.getUserInfo", name);
    }

}