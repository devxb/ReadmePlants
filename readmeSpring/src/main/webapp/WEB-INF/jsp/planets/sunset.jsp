<%@ page language="java" contentType="image/svg+xml charset=UTF-8" pageEncoding="UTF-8"%>

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
<g filter="url(#sunset1)">
<circle cx="123" cy="83" r="50" fill="url(#sunset2)"/>
</g>
<defs>
<filter id="sunset1" x="0" y="0" width="246" height="246" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feMorphology radius="3" operator="dilate" in="SourceAlpha" result="effect1_dropShadow"/>
<feOffset dy="40"/>
<feGaussianBlur stdDeviation="35"/>
<feComposite in2="hardAlpha" operator="out"/>
<feColorMatrix type="matrix" values="0 0 0 0 0.992157 0 0 0 0 0.0117647 0 0 0 0 0.0117647 0 0 0 1 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
<feGaussianBlur stdDeviation="7.5" result="effect2_foregroundBlur"/>
</filter>
<radialGradient id="sunset2" cx="0" cy="0" r="1" gradientUnits="userSpaceOnUse" gradientTransform="translate(125.143 84.4286) rotate(36.7142) scale(52.5716)">
<stop offset="0.479005" stop-color="#FF5441"/>
<stop offset="0.658712" stop-color="#FE0E05"/>
<stop offset="0.916346" stop-color="#FB0E00"/>
</radialGradient>
</defs>
</g>
</svg>
