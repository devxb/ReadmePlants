<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>

<html>
    <head>
        <title> readme plants - maker </title>
        <link href = "/resources/css/maker.css" type = "text/css" rel = "stylesheet"/>
    </head>
    <body style = "margin:0; padding:0; background-color:black">
        <navigater>
            <div class = "navigater">
                <p class = "title"> <a href="/" class="removeA"> Readme Plants </a> </p>
                <div class = "navigaterItem"> 
                    <!-- <p class = "forum"> <a href="/forum" class="removeA"> Forum </a> </p> -->
                    <p class = "about"> <a href="/forum?tag=Custom Tree" class="removeA"> CustomTree </a> </p>
                    <p class = "custom"> <a href="/about" class="removeA"> About </a> </p>
                    <!-- <p class = "user"> <a href="/login" class="removeA"> Login </a> </p> -->
                </div>
            </div>
        </navigater>
        <div class = "article">
        
            <div class ="maker">
                <span class = "resultText" style="font-size : 1.2em; font-weight:700"> Copy and Paste below Link on your Readme! </span>
                <span class = "resultText"> <a href = "/get?name=${name}&planet=${planet}&plant=${plant}&nameTag=${nameTag}&ground=${ground}&background=${background}" style="color : #4DC0CF; animation: resultTextAnimation 3s infinite;">![readmeplants](readmeplants/get?name=${name}&planet=${planet}&plant=${plant}&nameTag=${nameTag}&ground=${ground}&background=${background})</a> </span>
                <br/>
                <img src = "/get?name=${name}&planet=${planet}&plant=${plant}&nameTag=${nameTag}&ground=${ground}&background=${background}" style="object-fit : none"/>
                <span class = "resultText" style="color : red"> ${notice} </span>
                <div class = "makerWrapper">
                    <div class = "inputDiv">
                        <form class = "inputForm" accpet-charset = "UTF-8">
                            <span style = "width : 99%">
                            <span class = "inputFormText"> Github name </span>
                            </br>
                            <input type = "text" name = "name" required>
                            </span>
                            <span class = "selectForm">
                                    <span style = "width : 49%">
                                    <label for = "nametags" class = "inputFormText"> nametags </label>
                                    </br>
                                    <select id = "nametags" name = "nametag">
                                        <option selected> blackNameTag </option>
                                    </select>
                                </span>
                                <span style = "width : 49%">
                                    <label for = "planets" class = "inputFormText"> planets </label>
                                    </br>
                                    <select id = "planets" name = "planet">
                                        <option selected> yellowMoon </option>
                                        <option> blueMoon </option>
                                        <option> purpleMoon </option>
                                        <option> sunset </option>
                                        <option> eclipse </option>
                                        <option> earth </option>
                                    </select>
                                </span>
                                <span style = "width : 49%">
                                    <label for = "plants" class = "inputFormText"> plants </label>
                                    </br>
                                    <select id = "plants" name = "plant">
                                        <option selected> blossomTree </option>
                                        <option> palmTree </option>
                                        <option> pineTree </option>
                                    </select>
                                </span>
                                <span style = "width : 49%">
                                    <label for = "grounds" class = "inputFormText"> grounds </label>
                                    </br>
                                    <select id = "grounds" name = "ground">
                                        <option selected> hill </option>
                                    </select>
                                </span>
                                <span style = "width : 49%">
                                    <label for = "backgrounds" class = "inputFormText"> backgrounds </label>
                                    </br>
                                    <select id = "backgrounds" name = "background">
                                        <option selected> black </option>
                                        <option> none </option>
                                    </select>
                                </span>
                            </span>
                            <br>
                            <div class = "submitDiv">
                                <input class = "submit" type = "submit" value = "Get"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>