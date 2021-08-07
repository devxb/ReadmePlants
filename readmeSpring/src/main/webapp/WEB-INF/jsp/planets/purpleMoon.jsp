<%@page language="java" contentType="image/svg+xml; charset=UTF-8" pageEncoding="UTF-8"%>

<svg width="246" height="246" viewBox="0 0 246 246" fill="none" xmlns="http://www.w3.org/2000/svg">
<style>

    @keyframes planetAnimation{
        0%{
            fill-opacity : 0%;
            transform:translateY(300px);
        }
        20%{
            fill-opacity: 0%;
        }
        100%{
            fill-opacity : 100%;
            transform:translateY(10px);
        }
    }
    
    .planet{
        transform:translateX(3px);
        transform:translateY(10px);
        animation:planetAnimation 5s ease-out;
    }
    
</style>

<g class="planet">

<g filter="url(#purpleMoon1)">
<circle cx="123" cy="83" r="50" fill="url(#purpleMoon2)"/>
</g>
</g>
<defs>
<filter id="purpleMoon1" x="0" y="0" width="246" height="246" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feMorphology radius="3" operator="dilate" in="SourceAlpha" result="effect1_dropShadow"/>
<feOffset dy="40"/>
<feGaussianBlur stdDeviation="35"/>
<feComposite in2="hardAlpha" operator="out"/>
<feColorMatrix type="matrix" values="0 0 0 0 0.747648 0 0 0 0 0.496094 0 0 0 0 0.9375 0 0 0 1 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
<feGaussianBlur stdDeviation="7.5" result="effect2_foregroundBlur"/>
</filter>
<radialGradient id="purpleMoon2" cx="0" cy="0" r="1" gradientUnits="userSpaceOnUse" gradientTransform="translate(94.5 57) rotate(44.5379) scale(87.6841)">
<stop stop-color="#9845D7"/>
<stop offset="1" stop-color="#FDD0F8"/>
</radialGradient>
</defs>
</svg>
