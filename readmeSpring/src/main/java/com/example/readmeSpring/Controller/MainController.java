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
    public String drawPaintTest(Model model, User user){
        getSatellite.runSatellite(model, user);
        if(user.getBackground().equals("none")) return "canvas";
        return "background";
    }
    
    @GetMapping("/canvasTest")
    public String fixPosition(Model model, User user){
        model.addAttribute("name", user.getName()+".jsp");
        model.addAttribute("nameTag", user.getNameTag()+".jsp");
        model.addAttribute("planetName", user.getPlanet()+".jsp");
        model.addAttribute("plantName", user.getPlant()+"/"+user.getPlant()+".jsp");
        model.addAttribute("groudnName", user.getGround()+".jsp");
        return "canvasTest";
    }
    
    @GetMapping("/")
    public String indexPage(){
        return "web/index";
    }
    
    @Autowired
    
    @GetMapping("/maker")
    public String maker(){
        return "web/maker";
    }
    
}