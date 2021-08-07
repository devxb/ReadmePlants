<%@ page language="java" contentType="image/svg+xml; charset=UTF-8" pageEncoding="UTF-8"%>

<svg width="246" height="246" viewBox="0 0 246 246" fill="none" xmlns="http://www.w3.org/2000/svg">

<style>
    @keyframes planetAnimation{
        0%{
            fill-opacity : 0%;
            transform:translate(300px,150px);
        }
        20%{
            fill-opacity: 0%;
        }
        100%{
            fill-opacity : 100%;
            transform:translate(0px,0px);
        }
    }
    
    .planet{
        transform:translateX(3px);
        transform:translateY(10px);
    }
    
    .planetWhite{
        animation:planetAnimation 5s ease-out;
    }
</style>
<g class="planet">
<g filter="url(#eclipse1)">
<g filter="url(#eclipse3)">
    <circle cx="123" cy="83" r="50" fill="white"/>
</g>
<g class="planetWhite">
    <g filter="url(#eclipse2)">
    <circle cx="144" cy="87" r="50" fill="black"/>
    </g>
</g>
</g>
</g>
<defs>
<filter id="eclipse1" x="0" y="0" width="246" height="246" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feBlend mode="normal" in="SourceGraphic" in2="BackgroundImageFix" result="shape"/>
<feGaussianBlur stdDeviation="7.5" result="effect1_foregroundBlur"/>
</filter>
<filter id="eclipse2" x="0" y="0" width="246" height="246" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feMorphology radius="3" operator="dilate" in="SourceAlpha" result="effect1_dropShadow"/>
<feOffset dy="40"/>
<feGaussianBlur stdDeviation="35"/>
<feComposite in2="hardAlpha" operator="out"/>
<feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
</filter>
<filter id="eclipse3" x="21" y="4" width="246" height="246" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feMorphology radius="3" operator="dilate" in="SourceAlpha" result="effect1_dropShadow"/>
<feOffset dy="40"/>
<feGaussianBlur stdDeviation="35"/>
<feComposite in2="hardAlpha" operator="out"/>
<feColorMatrix type="matrix" values="0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
</filter>
</defs>
</svg>