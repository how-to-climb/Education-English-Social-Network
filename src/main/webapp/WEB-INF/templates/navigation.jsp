<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top scrollclass">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">EESN</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/"> <spring:message code="home.home"/> </a></li>
                <li><a href="/login">LOGIN</a></li>
                <li><a href="/authorOrUser">TEST</a></li>

                <li><a href="/dep">DEPARTMENTS</a></li>
                <li><a href="/chat">CHAT</a></li>
                <li><a href="/points">POINTS</a></li>
                <li><a href="/translate">TRANSLATOR</a></li>
                <li><a href="/video">VIDEO</a></li>
                <li><a href="#contact">CONTACT</a></li>
                <li><a href="/activities">ACTIVITIES</a></li>
                <li><a href="#social-section">SOCIAL</a></li>
                <li><a href="/account">ACCOUNT</a></li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>


