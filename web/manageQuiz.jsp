<%-- 
    Document   : manageQuiz
    Created on : June 7, 2021, 10:25:47 AM
    Author     : DELL
--%>

<%@page import="util.HtmlHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link href="CSS/generalCss.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/headerCss.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/manaQuizCss.css" rel="stylesheet" type="text/css"/>
      
        <%Integer pageindex = (Integer) request.getAttribute("pageindex");
            Integer pagecount = (Integer) request.getAttribute("pagecount");
            Integer pagegap = (Integer) request.getAttribute("pagegap");

        %>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <%@include file="conponent/header.jsp" %>
            <div class="content">
                <c:choose>
                    <c:when test="${!sessionScope.user.isType()}">
                        <span class="gen-text4">you are not allowed to do this funtion!!</span>
                    </c:when>
                        <c:otherwise>
                            
                <div>
                <div>
                    <span class="gen-text2">Number of question:</span>
                    <span class="gen-text3">${requestScope.totalQ}</span>
                </div>
                <table>
                    <tr>
                        <th class="gen-text3" id="th1">Question</th>
                        <th class="gen-text3">Date Created </th>
                    </tr>
                    <c:if test="${not empty requestScope.pageIndexErr}">
                        <p>${requestScope.pageIndexErr}</p>
                    </c:if>
                    <c:if test="${not empty requestScope.mess}">
                        <span class="gen-text4"> ${requestScope.mess}</span>
                    </c:if>   
                    <c:if test="${empty requestScope.mess}">
                    <c:if test="${empty requestScope.pageIndexErr}">
                    <c:forEach items="${requestScope.qList}" var="q">
                        <tr>
                            <td id="td1">
                                <span class="gen-text2" > ${q.getContent()}</span>
                            </td>
                            <td>
                                <span  class="gen-text2"> ${q.getDateFormat()} </span>

                            </td>
                            <td>
                                <form id="formDelete" action="manageQuiz" method="post">
                                    <input type="hidden" name="qid" value="${q.getId()}"/>
                                    <input type="button" onclick="isDelete()" value="Delete"/>
                                </form>
                            </td>    
                        <tr>
                        </c:forEach>
                            <th><%=HtmlHelper.pager(pageindex, pagecount, pagegap)%></th>
                        </c:if>        
                        </c:if>        
                </table>
                </div>
                 </c:otherwise>
                  </c:choose>
                          <script src="js/question.js" type="text/javascript"></script>
            </div>    
        </div>
    </body>
</html>
