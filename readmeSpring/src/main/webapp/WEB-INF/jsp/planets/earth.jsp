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

<g filter="url(#earth1)">
<circle cx="123" cy="83" r="50" fill="url(#earth2)"/>
</g>
<g filter="url(#earth_land1)">
<path d="M129.247 65.675C133.562 56.0273 137.078 50.6974 140.042 50.5503C140.042 50.5503 136.04 48.1323 152.649 58.4351C161.567 62.4238 148.701 77.2948 139.196 73.0436C129.691 68.7923 124.932 75.3227 129.247 65.675Z" fill="url(#ep1)"/>
<path d="M115.247 111.675C119.562 102.027 123.078 96.6974 126.042 96.5503C126.042 96.5503 122.04 94.1323 138.649 104.435C147.567 108.424 134.701 123.295 125.196 119.044C115.691 114.792 110.932 121.323 115.247 111.675Z" fill="url(#ep2)"/>
<path d="M129 92.2393C129 104.674 114.253 119.838 109.043 115.117C93.0143 100.591 114.188 92.2393 91.8268 89.152C80.547 89.152 87.0964 67 99.1185 67C111.141 67 129 79.8045 129 92.2393Z" fill="url(#ep3)"/>
</g>
<g filter="url(#earth_cloud1)">
<path d="M107.979 104C93.9787 106.5 132.979 111 103.479 111C32.4785 111 96.4784 107.59 96.4784 104C71.4785 101.5 94.366 98 103.479 98C134.979 98 122.979 106 107.979 104Z" fill="white" fill-opacity="0.3"/>
</g>
<g filter="url(#earth_cloud2)">
<path d="M108.981 67.1861C127.038 68.4143 193.954 62.5404 144.351 58.2346C138.298 57.6071 167.043 52.0453 160.63 52.0818C146.642 52.1614 88.1054 59.52 106.992 59.9405C170.612 61.3572 92.6965 66.0785 108.981 67.1861Z" fill="white" fill-opacity="0.3"/>
</g>
<g filter="url(#earth_cloud3)">
<path d="M144.325 89.2056C119.375 86.2498 142.323 83.168 151.434 83.3343C182.929 83.909 159.286 91.4789 144.325 89.2056Z" fill="white" fill-opacity="0.3"/>
</g>
</g>
<defs>
<filter id="earth1" x="0" y="0" width="246" height="246" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
<feMorphology radius="3" operator="dilate" in="SourceAlpha" result="effect1_dropShadow"/>
<feOffset dy="40"/>
<feGaussianBlur stdDeviation="35"/>
<feComposite in2="hardAlpha" operator="out"/>
<feColorMatrix type="matrix" values="0 0 0 0 0.172549 0 0 0 0 0.435294 0 0 0 0 0.737255 0 0 0 1 0"/>
<feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
<feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
<feGaussianBlur stdDeviation="7.5" result="effect2_foregroundBlur"/>
</filter>
<filter id="earth_land1" x="71" y="34" width="102.114" height="107.275" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feBlend mode="normal" in="SourceGraphic" in2="BackgroundImageFix" result="shape"/>
<feGaussianBlur stdDeviation="7.5" result="effect1_foregroundBlur"/>
</filter>
<filter id="earth_cloud1" x="66" y="94" width="61.277" height="21" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feBlend mode="normal" in="SourceGraphic" in2="BackgroundImageFix" result="shape"/>
<feGaussianBlur stdDeviation="2" result="effect1_foregroundBlur"/>
</filter>
<filter id="earth_cloud2" x="99" y="46" width="67.6691" height="27.1445" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feBlend mode="normal" in="SourceGraphic" in2="BackgroundImageFix" result="shape"/>
<feGaussianBlur stdDeviation="2" result="effect1_foregroundBlur"/>
</filter>
<filter id="earth_cloud3" x="129" y="79" width="42.0303" height="14.9389" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feBlend mode="normal" in="SourceGraphic" in2="BackgroundImageFix" result="shape"/>
<feGaussianBlur stdDeviation="2" result="effect1_foregroundBlur"/>
</filter>
<radialGradient id="earth2" cx="0" cy="0" r="1" gradientUnits="userSpaceOnUse" gradientTransform="translate(98 66.5) rotate(31.7989) scale(88.2454)">
<stop stop-color="#2C6FBC"/>
<stop offset="1" stop-color="#0F132C"/>
</radialGradient>
<linearGradient id="ep1" x1="132.541" y1="69.4781" x2="148.307" y2="30.0209" gradientUnits="userSpaceOnUse">
<stop stop-color="#C8AB83"/>
<stop offset="0.0001" stop-color="#374B14"/>
<stop offset="1" stop-color="#C8AB83"/>
</linearGradient>
<linearGradient id="ep2" x1="118.541" y1="115.478" x2="134.307" y2="76.0209" gradientUnits="userSpaceOnUse">
<stop stop-color="#C8AB83"/>
<stop offset="0.0001" stop-color="#374B14"/>
<stop offset="1" stop-color="#C8AB83"/>
</linearGradient>
<linearGradient id="ep3" x1="107.5" y1="67" x2="109.559" y2="116.949" gradientUnits="userSpaceOnUse">
<stop stop-color="#C8AB83"/>
<stop offset="0.421015" stop-color="#374B14"/>
<stop offset="1" stop-color="#C8AB83"/>
</linearGradient>
</defs>
</svg>
