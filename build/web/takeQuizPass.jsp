<%-- 
    Document   : takeQuizAnser
    Created on : June 7, 2021, 10:59:49 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link href="CSS/generalCss.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/headerCss.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/takeQuizCss.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <%@include file="conponent/header.jsp" %>
            <div class="content">
                <c:if test="${empty requestScope.message}">
                <div class="div-score">
                    <span class="gen-text2">Your score</span>
                            <span class="gen-text3">${requestScope.point} (${requestScope.pointP}%) -  </span>
                                <c:choose>
                                    <c:when test="${requestScope.point>'1'}">
                                        <span class="gen-text3">   passed </span>
                                    </c:when>    
                                    <c:otherwise>
                                        <span class="gen-text4">   not passed </span>
                                    </c:otherwise>
                                </c:choose>
                          
                              
                </div>  
                   </c:if>
                
                <c:if test="${not empty requestScope.message}">
                    <span class="gen-text4">${requestScope.message}</span>
                </c:if>
                <div>
                    <span class="gen-text2">Take another test</span>
                    <form class="form-class" action="takeQuiz" method="get">
                        <button type="submit" >Start</button>
                    </form>
                   
                </div>                   
            </div>    
        </div>
    </body>
</html>
