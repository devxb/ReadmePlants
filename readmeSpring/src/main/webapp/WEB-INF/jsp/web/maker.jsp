<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>

<html>
    <head>
        <title> readme plants - maker </title>
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
    margin-top:5vh;
    width : 100%;
    display : flex;
    justify-content : center;
    align-items : center;
    flex-direction : column;
}

.maker{
    width : 45%;
    min-width : auto;
    height : auto;
    border-radius : 0.625em;
    display : flex;
    justify-content : center;
    align-items : center;
    flex-direction : column;  
    border-radius : 0.625em;
    background-color : white;
    padding-top : 1em;
}

.makerWrapper{
    width : auto;
    height : auto;
    padding-top : 1em;
    padding-right : 2em;
    display : flex;
    justify-content : space-around;
    flex-direction : column;
}

.inputDiv{
    width : 100%;
    height : auto;
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

.result{
    display : flex;
    justify-content : cetner;
    align-items : center;
    height : auto;
    width : auto;
}

.resultText{
    font-family : "Noto Sans KR", sans-serif;
    font-size : 1em;
    text-align : center;
    width : 70%;
    word-break: break-all;
}

</style>
    <body style = "margin : 0px; padding : 0px; background-color : black; width : 100%;">
        <navigater>
            <div class = "navigater">
                <p class = "title"> <a href="/" class="removeA"> Readme Plants </a> </p>
                <div class = "navigaterItem"> 
                    <p class = "forum"> <a href="/forum" class="removeA"> Forum </a> </p>
                    <p class = "about"> <a href="/forum?tag=Custom Tree" class="removeA"> Custom Tree </a> </p>
                    <p class = "custom"> <a href="/about" class="removeA"> About </a> </p>
                    <p class = "user"> <a href="/login" class="removeA"> Login </a> </p>
                </div>
            </div>
        </navigater>
        <div class = "article">
        
            <div class ="maker">
                <span class = "resultText" style="font-size : 1.2em; font-weight:700"> Copy and Paste below Link on your Readme! </span>
                <span class = "resultText"> <a href = "/get?name=${name}&planet=${planet}&plant=${plant}&nameTag=${nameTag}&ground=${ground}&background=${background}" style="color : #4DC0CF;">![readmeplants](readmeplants/get?name=${name}&planet=${planet}&plant=${plant}&nameTag=${nameTag}&ground=${ground}&background=${background})</a> </span>
                <br/>
                <img src = "/get?name=${name}&planet=${planet}&plant=${plant}&nameTag=${nameTag}&ground=${ground}&background=${background}" style="object-fit : none"/>
                <div class = "makerWrapper">
                    <div class = "inputDiv">
                        <form class = "inputForm">
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