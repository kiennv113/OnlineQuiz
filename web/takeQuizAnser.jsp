<%-- 
    Document   : takeQuizAnser
    Created on : June 7, 2021, 10:52:10 AM
    Author     : DELL
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="entity.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        
        <link href="CSS/generalCss.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/headerCss.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/takeQuizCss.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <%
            int totalQ =(Integer)request.getAttribute("totalQ");
            int min =(Integer) request.getAttribute("min");
            int sec =(Integer) request.getAttribute("sec");
        %>
        
        
    </head>
    <body onload="timeRun(<%=min%>,<%=sec%>,onloadFirst(<%=totalQ%>))">
       
        <div class="container">
            <%@include file="conponent/header.jsp" %>
            <div class="content">            
                <div class="wel-num-score" ><span class="gen-text2">Welcome<span> 
                            <span class="gen-text3">${sessionScope.user.getUsername()}</span></div>
                            <div class="time-takeQ"> 
                                
                                <span class="gen-text2">Time remaining</span> 
                                <span class="gen-text4" id="minutes"></span>
                                <span class="gen-text4" id="minutes">:</span>
                                <span class="gen-text4" id="seconds"></span>
                                
                            </div>
                            <%int i=0;%>
                            <%String answer = "answer";%>
                            
                            <c:if test="${not empty requestScope.mess}">
                                <span class="gen-text4"> ${requestScope.mess}</span>
                            </c:if>
                            
                            <c:if test="${empty requestScope.mess}">
                                
                            <form id="forma" action="takeQuiz" method="post">
                            <input name="isSubmit" value="1" type="hidden">
                            
                            <c:forEach items="${requestScope.questions}" var="question" >
                                
                                <div id="q<%=i%>" class="display">
                                <div><span id="content1" class="gen-text2">${question.getContent()}</span></div>                
                              
                                <c:forEach begin="0" end="3" var="xx">
                                    
                                        <input type="checkbox" name="answer" value="<%=i%>${xx+1}"> 
                                        <span class="gen-text2">
                                            ${question.getOpt().get(xx)}
                                        </span> 
                                         </br>    
                                         
                                </c:forEach>
                                </div>
                                
                              <%i++;%>
                            </c:forEach>
                             <p id="mess-submit" class="display gen-text2">Click next to start from question 1 or submit</p>
                            <button type="submit" id="sub-but" class="display">submit</button>
                            </form>
                               
                            <div id="div-next">
                            <button type="button" onclick="nextQuiz(<%=totalQ%>)" name="next" class="but-takeQ">
                                Next
                            </button>
                            </div>
                            
                            </c:if>
            </div>
            </div>     
                            <script src="js/timer.js" type="text/javascript"></script>
                            <script src="js/question.js" type="text/javascript"></script>
    </body>
</html>
