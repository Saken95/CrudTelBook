<%-- 
    Document   : TelAddNew
    Created on : 10.06.2016, 21:46:24
    Author     : Saken
--%>

<%@page import="dao.DataAccess"%>
<%@page import="model.News"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            
            News n = new News(0, name, surname, phone, email);
            DataAccess da = new DataAccess();
            da.addNew(n);
            
            response.sendRedirect("/TelBook/index.html/AllPost");
        %>
        
    </body>
</html>
