<%-- 
    Document   : EditPost
    Created on : 10.06.2016, 23:13:44
    Author     : Saken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body>
        <h1>Edit News</h1>
        <div style="width: 900px; margin-left: auto; margin-right: auto">
            <c:forEach items="${getNewsById}" var="p">
                <form action="JSP/TelEditPost.jsp" method="post">
                    <input type="hidden" name="id" value="${p.id}">
                    Name:<br>
                    <input type="text" value="${p.name}" name="name" style="width: 200px"><br>
                    Surname:<br>
                    <input type="text" value="${p.surname}" name="surname" style="width: 200px"><br>
                    Phone:<br>
                    <input type="text" value="${p.phone}" name="phone" style="width: 200px"><br>
                    Email:<br>
                    <input type="text" value="${p.email}" name="email" style="width: 200px"><br>
                    <input type="submit" value="Submit">
                </form>
            </c:forEach>

        </div>
    </body>
</html>
