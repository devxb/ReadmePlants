<%@ page language="java" contentType="image/svg+xml; charset=UTF-8" pageEncoding="UTF-8"%>

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

<g filter="url(#blueMoon1)">
<circle cx="123" cy="83" r="50" fill="url(#blueMoon2)"/>
</g>
</g>
<defs>
<filter id="blueMoon1" x="0" y="0" width="246" height="246" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feMorphology radius="3" operator="dilate" in="SourceAlpha" result="effect1_dropShadow"/>
<feOffset dy="40"/>
<feGaussianBlur stdDeviation="35"/>
<feComposite in2="hardAlpha" operator="out"/>
<feColorMatrix type="matrix" values="0 0 0 0 0.247059 0 0 0 0 0.615686 0 0 0 0 0.898039 0 0 0 1 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
<feGaussianBlur stdDeviation="7.5" result="effect2_foregroundBlur"/>
</filter>
<radialGradient id="blueMoon2" cx="0" cy="0" r="1" gradientUnits="userSpaceOnUse" gradientTransform="translate(101.5 67.5) rotate(37.9477) scale(69.1122)">
<stop stop-color="#3F9DE5"/>
<stop offset="0.262745" stop-color="#45A2E7"/>
<stop offset="1" stop-color="#B9E1FE"/>
</radialGradient>
</defs>
</svg>
