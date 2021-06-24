<%-- 
    Document   : header
    Created on : June 7, 2021, 9:40:20 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="../CSS/generalCss.css" rel="stylesheet" type="text/css"/>
        <link href="../CSS/headerCss.css" rel="stylesheet" type="text/css"/>
        <link href="../CSS/homeCss.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="header">
            <div class="header-top">
            </div>
            <div class="header-bot">
                <div class="header-bot-img">
                    <div class="header-menu-text"> 
                        <a href="login" class="header-text"> Home</a>
                        <a href="takeQuiz" class="header-text">Take Quiz</a>
                        <a href="makeQuiz" class="header-text"> Make Quiz</a>
                        <a href="manageQuiz" class="header-text"> Manage Quiz</a>
                        <c:if test="${not empty sessionScope.user}"> <a href="logout" class="header-text"> Log Out</a> </c:if>
                    </div>     
                </div>    
            </div>    
        </div>

    </body>
</html>
