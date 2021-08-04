package com.example.readmeSpring.Controller;

import java.util.LinkedList;
import java.util.Queue;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;

import com.example.readmeSpring.ViewLogic.Decoraters.*;
import com.example.readmeSpring.ViewLogic.DecorateFactory.DecorateFactory;
import com.example.readmeSpring.Repository.User.User;
import com.example.readmeSpring.Controller.Satellite.GetSatellite;

@Controller
public class MainController{
    
    @Autowired
    GetSatellite getSatellite;
    
    @GetMapping("/get")
    public String draw(Model model, User user){
        System.out.println(user.getBackground());
        getSatellite.runSatellite(model, user);
        if(user.getBackground().equals("none")) return "canvas";
        return "background";
    }
    
    @GetMapping("/canvasTest")
    public String fixPosition(Model model, User user){
        model.addAttribute("name", user.getName());
        model.addAttribute("nameTag", user.getNameTag()+".jsp");
        model.addAttribute("planetName", user.getPlanet()+".jsp");
        model.addAttribute("plantName", user.getPlant().substring(0, user.getPlant().length()-1)+"/"+user.getPlant()+".jsp");
        model.addAttribute("groundName", user.getGround()+".jsp");
        return "canvasTest";
    }
    
    @GetMapping("/")
    public String indexPage(){
        return "web/index";
    }
    
    @GetMapping("/maker")
    public String maker(Model model, User user){
        model.addAttribute("name", user.getName());
        model.addAttribute("nameTag", user.getNameTag());
        model.addAttribute("planet", user.getPlanet());
        model.addAttribute("plant", user.getPlant());
        model.addAttribute("ground", user.getGround());
        model.addAttribute("background", user.getBackground());
        return "web/maker";
    }
    
}