<%-- 
    Document   : login
    Created on : June 7, 2021, 9:55:35 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <c:if test="${empty sessionScope.user}">
                <div class="login-left">
                    <div class="login-text">Login Form</div>
                    <div> <span class="login-text1">User Name : </span>
                    </div>
                    <div><span class="login-text1" >Password : </span> 
                    </div>
                </div>
                <div class="login-right">
                    <form action="login" method="post">
                    <div class="div-input">
                        <div>  <input name="username" value="${requestScope.username}"></div>
                        <div>  <input name="password" type="password"></div>
                        <button type="submit">Sign In</button>
                        <a href="register"> Register</a>
                    </div>
                          <c:if test="${not empty requestScope.mess}">
                              <span class="gen-text4">${requestScope.mess}</span>
                    </c:if>
                    </form>   
                </div>   
                </c:if>
                <c:if test="${not empty sessionScope.user}">
               <div class="wel-num-score">
                   <span class="gen-text1">Welcome<span> 
                <span class="gen-text3">
                    ${sessionScope.user.getUsername()}
                </span>       
                </div>
                <div class=wel-num-score">
                    <span class="gen-text1">Your type : </span>
                    <span class="gen-text3">
                        <c:choose>
                            <c:when test="${sessionScope.user.isType()==true}">
                                Teacher
                            </c:when>
                        <c:otherwise>
                            Normar User
                        </c:otherwise>
                              </c:choose>
                    </span>
                </div>
                <div class="wel-num-score">
                    <span class="gen-text1"> Email : </span>
                    <span class="gen-text3"> ${sessionScope.user.getEmail()}</span>
                </div>
                </c:if>
                
            </div>    
        </div>
    </body>
</html>
