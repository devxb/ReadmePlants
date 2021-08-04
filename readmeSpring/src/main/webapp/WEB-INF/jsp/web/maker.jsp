<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>

<html>
    <head>
        <title> readmePlants - maker </title>
    </head>
<style>

@CHARSET "UTF-8";

@font-face {
    font-family: 'Noto Sans KR';
    src: url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
}

navigater{
    display : flex;
    width : 100%;
    justify-content : center;
}

p{
    font-family : 'Noto Sans KR', sans-serif;
    font-weight : 500;
    font-size: 1em;
}

.navigater{
    padding-left : 1em;
    padding-right : 1em;
    display : flex;
    height : 3.750em;
    width : 67.500em;
    background-color : black;
    align-items : center;
    justify-content : space-between;
}

.navigaterItem{
    display: flex;
    align-items : center;
    justify-content : space-between;
    height : 100%;
    width : 55%;
}


.removeA{ 
    color : white;
    text-decoration : none !important 
} 
.removeA:hover{ 
    text-decoration : none !important 
}


.title{
    color : white;
}

.forum{
    color : white;
}

.about{    
    color : white;
}

.custom{
    color : white;
}

.user{
    color : white;
}

.article{
    margin-top:15vh;
    width : 100%;
    display : flex;
    justify-content : center;
    align-items : center;
}

.maker{
    width : 50%;
    height : 30em;
    min-width : 36.250em;
    background-color : white;
    border-radius : 0.625em;
    display : flex;
    justify-content : space-around;
}

.inputDiv{
    width : 30%;
    height : 100%;
    padding : 1em;
    margin-top : -2em;
}

.inputForm{
    display : flex;
    justify-content : center;
    align-items : space-around;
    flex-direction : column;
    flex-wrap: wrap;
    width : 100%;
    height : 100%;
}

.inputFormText{
    font-family : "Noto Sans KR", sans-serif;
    font-weight : 700;
    font-size : 0.8em;
    color : black;
}

input{
    width : 100%;
    height : 2em;
    background-color : white;
    border-color : black;
    border-radius : 0.3125em;
}

select{
    width : 100%;
    height : 2.35em;
    background-color : white;
    border-color : black;
    border-radius : 0.3125em;  
    border-width : 0.2em;
    font-family : "Noto Sans KR", sans-serif;
    font-weight : 700;
    font-size : 0.8em;
    color : #black;
}

.submitDiv{
    width : 100%;
    height : 2.8em;
    display : flex;
    justify-content : center;
    align-items : center;
}

.submit{
    width : 70%;
    height : 100%;
    background-color : #4DC0CF;
    border : solid #4DC0CF;
    border-radius = 0.625em;
    font-family : "Noto Sans KR", sans-serif;
    font-weight : 900;
    font-size : 1em;
    color : white;
}

.submit:hover{
    background-color : #3FA0AC;
    border : solid #3FA0AC;
}

.selectForm{
    width : 100%;
    height : auto;
    display : flex;
    justify-content : space-between;
    flex-wrap : wrap;
}

.viewer{
    width : 70%;
    height : 100%;
    flex-direction : row;
}


.viewerInner{
    width : 100%;
    height : 100%;
    display : flex;
    justify-content : center;
    align-items : center;
    overflow-y: hidden;
    overflow-x: scroll;
}

</style>
    <body style = "margin : 0px; padding : 0px; background-color : black; width : 100%;">
        <navigater>
            <div class = "navigater">
                <p class = "title"><a href="/" class="removeA"> Readme Plants </a></p>
                <div class = "navigaterItem"> 
                    <p class = "forum"> Forum </p>
                    <p class = "about"> Custom Tree </p>
                    <p class = "custom"> About </p>
                    <p class = "user"> Login </p>
                </div>
            </div>
        </navigater>
        <div class = "article">
            <div class = "maker">
                <div class = "inputDiv">
                    <form class = "inputForm">
                        <span style = "width : 98%">
                        <span class = "inputFormText"> Github name </span>
                        </br>
                        <input type = "text" name = "name">
                        </span>
                        <span class = "selectForm">
                            <span style = "width : 49%">
                                <label for = "nametags" class = "inputFormText"> nametags </label>
                                </br>
                                <select id = "nametags" name = "plants">
                                    <option selected> blackNameTag </option>
                                </select>
                            </span>
                            <span style = "width : 49%">
                                <span for = "planets" class = "inputFormText"> planets </span>
                                </br>
                                <select id = "planets" name = "plants">
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
                                <select id = "plants" name = "plants">
                                    <option selected> blossomTree </option>
                                    <option> palmTree </option>
                                    <option> pineTree </option>
                                </select>
                            </span>
                            <span style = "width : 49%">
                                <span id = "grounds" class = "inputFormText"> grounds </span>
                                </br>
                                <select for = "grounds" name = "plants">
                                    <option selected> hill </option>
                                </select>
                            </span>
                        </span>
                        <br>
                        <div class = "submitDiv">
                            <input class = "submit" type = "submit" value = "Get"/>
                        </div>
                    </form>
                </div>
                <div class = "viewer">
                    <div class = "viewerInner">
                    <div class = "LV1">
                        <img src = "/canvasTest?name=Devxb&planet=yellowMoon&plant=blossomTree1&nameTag=blackNameTag&ground=hill" style = "object-fit:none">
                    </div>
                    <div class = "LV2">
                        <img src = "/canvasTest?name=Devxb&planet=yellowMoon&plant=blossomTree2&nameTag=blackNameTag&ground=hill" style = "object-fit:none">
                    </div>
                    <div class = "LV3">
                        <img src = "/canvasTest?name=Devxb&planet=yellowMoon&plant=blossomTree3&nameTag=blackNameTag&ground=hill" style = "object-fit:none">
                    </div>
                    <div class = "LV4">
                        <img src = "/canvasTest?name=Devxb&planet=yellowMoon&plant=blossomTree4&nameTag=blackNameTag&ground=hill" style = "object-fit:none">
                    </div>
                    <div class = "LV5">
                        <img src = "/canvasTest?name=Devxb&planet=yellowMoon&plant=blossomTree5&nameTag=blackNameTag&ground=hill" style = "object-fit:none">
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>