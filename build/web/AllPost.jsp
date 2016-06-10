<%-- 
    Document   : AllPost
    Created on : 10.06.2016, 21:49:56
    Author     : Saken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Posts</title>
    </head>
    <body>
        <div style="width: 1200px; margin-left: auto; margin-right: auto;">
            <table cellpadding="10">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th></th>
                </tr>
                <c:forEach items="${AllPost}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>${p.surname}</td>
                        <td>${p.phone}</td>
                        <td>${p.email}</td>
                        <td>
                            <a href="edit?id=${p.id}">Edit</a>
                            <a href="delete?id=${p.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
