<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>

<html>
    <head>
        <link href = "/resources/css/error.css" type = "text/css" rel = "stylesheet">
        <title> readme plants - error </title>
    </head>
    <body style = "margin:0; padding:0;">
        <navigater>
            <div class = "navigater">
                <p class = "title"> <a href="/" class="removeA"> Readme Plants </a> </p>
                <div class = "navigaterItem"> 
                    <!-- <p class = "forum"> <a href="/forum" class="removeA"> Forum </a> </p> -->
                    <p class = "about"> <a href="https://github.com/devxb/ReadmePlants/blob/main/about-project.md" class="removeA"> About </a> </p>
                    <p class = "custom"> <a href="https://github.com/devxb/readmeplants" class="removeA"> Github </a> </p>
                    <p class = "user"> <a href="/donate" class="removeA"> Donate </a> </p>
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