<%-- 
    Document   : makeQuiz
    Created on : June 7, 2021, 10:14:15 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS/makeQuiz.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/generalCss.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/headerCss.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


    </head>
    <body>


        <div class="container">
            
            <%@include file="conponent/header.jsp" %>
            <div id="contentMakeQuiz" class="content">
            <c:choose>
                <c:when test="${!sessionScope.user.isType()}">
                    <span class="gen-text4">you are not allowed to do this funtion!!</span>
                </c:when>
                <c:otherwise>

                    
                    
                        <form action="makeQuiz" method="post">
                            <table>
                                <tbody>
                                    <tr>
                                        <td id="q" class="gen-text1">Question: </td>
                                        <td><textarea id="content"  name="content" >${requestScope.content}</textarea></td>
                                    </tr>
                                    <tr>
                                        <td class="gen-text1" >Option 1: </td>
                                        <td><textarea class="text-op" name="opt1">${requestScope.opt1}</textarea></td>
                                    </tr>
                                    <tr>
                                        <td class="gen-text1">Option 2: </td>
                                        <td><textarea class="text-op" name="opt2">${requestScope.opt2}</textarea></td>
                                    </tr>
                                    <tr>
                                        <td class="gen-text1">Option 3: </td>
                                        <td><textarea class="text-op" name="opt3" >${requestScope.opt3}</textarea></td>
                                    </tr>
                                    <tr>
                                        <td class="gen-text1">Option 4: </td>
                                        <td><textarea class="text-op" name="opt4">${requestScope.opt4}</textarea></td>
                                    </tr>
                                    <tr>
                                        <td class="gen-text1">Answer(s): </td>
                                        <td>
                                            <input type="checkbox" name="ans1" ${requestScope.ans1}>
                                            <span class="gen-text1">Option 1</span>
                                            <input type="checkbox" name="ans2" ${requestScope.ans2}>
                                            <span class="gen-text1">Option 2</span>
                                            <input type="checkbox" name="ans3" ${requestScope.ans3}>
                                            <span class="gen-text1">Option 3</span>
                                            <input type="checkbox" name="ans4" ${requestScope.ans4}>
                                            <span class="gen-text1">Option 4</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><input type="submit" value="Save"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    <c:if test="${not empty requestScope.mess}">
                        <span class="gen-text4"> ${requestScope.mess}</span>
                        </c:if>
                </c:otherwise>
            </c:choose>
                     </div>
        </div>
            
       
    </body>
</html>
