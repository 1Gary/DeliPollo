<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .con{
        width:100%;
        background:url(img/ra1.jpg);
        height:100px;
        position:relative;
        
    }
    .c1{
        width:40%;
        font-size:72px;
        color:white;
        float:left;
        padding:10px;
        position:absolute;
        
    }
    .c2{
        width:55%;
        
        color:white;
        float:right;
        text-align:right;
        padding:10px;
        
    }
    </style>

<div class="con">
    
    <div class="c1"><img src="fimg/delilogo.png" alt="delipollo" title="delipollo"/></div>
    <div class="c2"><%@include file="umenu.jsp"%></div>
    
</div>
