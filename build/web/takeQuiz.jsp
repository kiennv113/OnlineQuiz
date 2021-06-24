<%-- 
    Document   : takeQuiz
    Created on : June 7, 2021, 10:45:18 AM
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
                <div class="wel-num-score"><span class="gen-text1">Welcome<span> 
                            <span class="gen-text3">${sessionScope.user.getUsername()}</span></div>                
                            <div><span class="gen-text2">Enter number of question:</span></div>
                            <form action="takeQuiz" method="post">
                            <div><input type="number" name="number" class="input-takeQ">
                                <c:if test="${not empty requestScope.mess}">
                                    <span class="gen-text4">${requestScope.mess}</span>
                                </c:if>
                            </div >  
                            <div class="div-but1"><button type="submit" class="but-takeQ">Start</button></div>
                                </form>
            </div>    
        </div>
    </body>
</html>
