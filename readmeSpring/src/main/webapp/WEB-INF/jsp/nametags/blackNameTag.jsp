<%@ page language="java" contentType="image/svg+xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<svg width="264" height="264" viewBox="0 0 264 264" fill="none" xmlns="http://www.w3.org/2000/svg">

<style>
    .nameTag{
        transform : translate(50px, 0px);
    }
    
    .name{
        transform:translate(75px, 11px);
        width:140px;
        height:29px;
        fill: white;
        font-size:12px;
        font-weight:bold;
        overflow:hidden;
    }
    
    .exp{
        transform:translate(75px, 23px);
        width: 151px;
        height: 29px;
        fill: white;
        font-size:11px;
        font-weight:bold;
    }
    
</style>
<g class="nameTag">
<g filter="url(#nameTag1)">
<rect x="1" y="1" width="151" height="29" rx="5" fill="black"/>
</g>
    <text class="name" text-anchor="middle" alignment-baseline="middle">"${name}"</text>
    <text class="exp" text-anchor="middle" alignment-baseline="middle">Github EXP : <fmt:formatNumber value="${EXP}" pattern="##,###,###"/> </text>
</g>
<defs>
<filter id="nameTag1" x="0" y="0" width="153" height="31" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feBlend mode="normal" in="SourceGraphic" in2="BackgroundImageFix" result="shape"/>
<feGaussianBlur stdDeviation="0.5" result="effect1_foregroundBlur"/>
</filter>
</defs>
</svg>
