<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>

<html>
    <head>
        <link href = "/resources/css/error.css" type = "text/css" rel = "stylesheet">
        <title> readme plants - error </title>
    </head>
    <body>
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
        <error>
            <p> OOPS! Somthing went wrong </p>
            <br>
            <span style="font-size : 10em"> ${status} </span>
        </error>
    </body>
</html>