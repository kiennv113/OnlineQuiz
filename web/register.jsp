<%-- 
    Document   : register
    Created on : June 7, 2021, 10:36:45 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS/logCss.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/generalCss.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/headerCss.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="container">
            <%@include file="conponent/header.jsp" %>
            <div class="content">
                <div class="login-left-logout">
                    <div class="login-text">Registration Form</div>
                    <div> <span class="login-text1">User Name: </span>
                    </div>
                    <div><span class="login-text1" >Password: </span> 
                    </div>
                    <div><span class="login-text1" >User Type: </span> 
                    </div>
                    <div><span class="login-text1" >Email: </span> 
                    </div>
                </div>
                <div class="login-right-logout">
                    <form action="register" method="post">
                        <div class="div-input-logout">
                            <div>  <input id="inputt" name="username" value="${requestScope.username}" ></div>
                            <div>  <input type="password" id="inputt" name="password" ></div>
                            <div> <select name="userType">
                                    <option value="1" <c:if test="${requestScope.userType == 1}"> selected</c:if>>Teacher</option>
                                    <option value="2" <c:if test="${requestScope.userType == 2}"> selected</c:if>>Normal User</option>
                                </select></div>
                            <div>  <input name="email" value="${requestScope.email}"></div>
                            <button type="submit">Register</button>

                        </div>
                    </form>
                    <c:if test="${not empty requestScope.mess}">
                        <span class="gen-text4">${requestScope.mess}</span>
                    </c:if>
                </div>    
            </div>    
        </div>
    </body>
</html>
