<%@ page language="java" contentType="image/svg+xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<svg width="316" height="239" viewBox="0 0 316 239" fill="none" xmlns="http://www.w3.org/2000/svg">
<style>

    @keyframes levelBarAnimation{
        0%{
            transform: scale(0,0);
        }
        100%{
            transform: scale(1,1);
        }
    }

    .canvas{
        transform:translate(-50px, 0px);
    }
    
    .readmeSpring{
        transform:translate(155px, 17px);
        width:88px;
        height:26px;
        fill:white;
        font-size:12px;
        font-weight:bold;
    }
    
    .nameLarge{
        transform:translate(155px, 50px);
        width:120px;
        height:50px;
        fill:white;
        font-size:20px;
        font-weight:bold;
        overflow:hidden;
    }
    
    .level{
        transform:translate(155px, 80px);
        width:100px;
        height:50px;
        fill:white;
        font-size:13px;
        font-weight:bold;
        overflow:hidden;
    }
    
    .expLarge{
        transform:translate(155px, 105px);
        width:100px;
        height:50px;
        fill:white;
        font-size:13px;
        font-weight:bold;
        overflow:hidden;
    }
    
    .levelBarTag{
        transform:translate(155px, 130px);
        width:100px;
        height:50px;
        fill:white;
        font-size:13px;
        font-weight:bold;
        overflow:hidden;
    }
    
    .levelBar{
        transform:translate(155px, 140px);
    }
    
    .levelBarGrow{
        transform:translate(155px, 140px);
        overflow : hidden;
        animaiton: levelBarAnimation 3s forwards ease-in-out;
    }
    
</style>
<rect width="316" height="239" rx="5" fill="black"/>
<g class = "canvas">
    <jsp:include page="./canvas.jsp"></jsp:include>
</g>

<text class="readmeSpring" text-anchor="start" alignment-baseline="middle"> README Spring</text>
<text class="nameLarge" text-anchor="start" alignment-baseline="middle"> ${name} </text>
<text class="level" text-anchor="start" alignment-baseline="middle"> Grow Level ${level} </text>
<text class="expLarge" text-anchor="start" alignment-baseline="middle"> EXP : <fmt:formatNumber value="${EXP}" pattern="##,###,###"/> </text>
<text class="levelBarTag" text-anchor="start" alignment-baseline="middle"> next level </text>
<rect class="levelBar" width="152" height="9" rx="3" fill="white"/>
<rect class="levelBarGrow" width="0" height="9" rx="3" fill="#3F9DE5">
    <animate attributeName="width" from="0" to="${growBar}" dur="3s" fill="freeze"/>
</rect>
</svg>