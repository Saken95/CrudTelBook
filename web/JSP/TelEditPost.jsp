<%-- 
    Document   : TelEditNew
    Created on : 10.06.2016, 22:14:15
    Author     : Saken
--%>

<%@page import="dao.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idTemp = request.getParameter("id");
            int id = Integer.parseInt(idTemp);
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            
            DataAccess da = new DataAccess();
            da.edit(id, name, surname, phone, email);
            
            response.sendRedirect("/TelBook/index.html/AllPost");
        %>
    </body>
</html>
