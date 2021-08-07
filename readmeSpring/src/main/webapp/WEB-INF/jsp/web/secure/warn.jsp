<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>

<html>
    <head>
        <title> readme plants - warnning </title>
    </head>
<style>
@CHARSET "UTF-8";

@font-face {
    font-family: 'Noto Sans KR';
    src: url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
}

body{
    display : flex;
    flex-direction : column;
    flex-wrap : nowrap;
    justify-content : space-around;
}

navigater{
    display : flex;
    width : 100%;
    justify-content : center;
}

.navigater{
    padding-left : 1em;
    padding-right : 1em;
    display : flex;
    height : 3.750em;
    width : 67.500em;
    background-color : white;
    align-items : center;
    justify-content : space-between;
}

.navigaterItem{
    display: flex;
    align-items : center;
    justify-content : space-between;
    height : 100%;
    width : 45%;
}

.removeA{ 
    color : black;
    text-decoration : none !important 
} 
.removeA:hover{ 
    text-decoration : none !important 
}


span, p{
    font-family : "Noto Sans KR", sans-serif;
    color : black;
    font-size : 1em;
    font-weight : bold;
}    
    
warnning{
    width : 100%;
    height : 80vh;
    display : flex;
    justify-content : center;
    align-items : center;
    flex-direction : column;
}

.warnTitle{
    font-size : 1.5625em;
    font-weight : 500;
}

.warnText{
    font-size : 1em;
    text-align : center;
    font-weight : 300;
}

.inputForm{
    display : flex;
    justify-content : center;
    align-items : space-around;
    flex-direction : column;
    flex-wrap: wrap;
    width : 20%;
    height : auto;
    padding : 1em;
}

.submitDiv{
    width : 100%;
    height : 2.8em;
    display : flex;
    justify-content : center;
    align-items : center;
}

.submit{
    width : 100%;
    height : 100%;
    background-color : #4DC0CF;
    border : solid #4DC0CF;
    border-radius : 0.625em;
    font-family : "Noto Sans KR", sans-serif;
    font-weight : 900;
    font-size : 1em;
    color : white;
}

.submit:hover{
    background-color : #3FA0AC;
    border : solid #3FA0AC;
}

</style>
    <body style = "margin:0; padding:0;">
        <navigater>
            <div class = "navigater">
                <p class = "title"> <a href="/" class="removeA"> Readme Plants </a> </p>
                <div class = "navigaterItem"> 
                    <p class = "about"> <a href="/forum?tag=Custom Tree" class="removeA"> Custom Tree </a> </p>
                    <p class = "custom"> <a href="/about" class="removeA"> About </a> </p>
                    <p class = "user"> <a href="/login" class="removeA"> Login </a> </p>
                </div>
            </div>
        </navigater>
        <warnning>
            <div> <img src = "/resources/svgfiles/warnning.svg" style="object-fit:none"/> </div>
            <span class = "warnTitle">
                왜 이런페이지가 나올까요?
            </span>
            <span class = "warnText">
                양질의 컨텐츠(Forum, CustomTree)를 제공하기위해서, https 프로토콜이 필요하였고, 개인 SSL인증서를 사용하여 인증했습니다.
                <br> 서버에서 어떠한 결제관련 정보를 요구하지 않으며, accept를 누르지 않아도 앱의 주요 기능은 문제없이 사용 가능합니다.
            </span>
            <form class = "inputForm" method = "GET" accpet-charset = "UTF-8">
                <div class="submitDiv">
                    <input class = "submit" type = "submit" name="flag" value="accept"/>
                </div>
            </form>
        </warnnig>
    </body>
</html>