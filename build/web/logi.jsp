<%-- 
    Document   : logi.jsp
    Created on : 10 Mar, 2019, 3:58:41 PM
    Author     : aravind
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        
        
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
           
%>

        
        
        
        <c:set var="email" scope="session" value="<%=email%>"/> 
        <c:set var="pass" scope="session" value="<%=pass%>"/> 
     
          
  <sql:setDataSource var="db" driver="org.apache.derby.jdbc.ClientDriver"  
     url="jdbc:derby://localhost:1527/LISA"  
     user="lisa"  password="lisa"/>  
        
  <sql:query dataSource="${db}" var="count">  
 
 select * from signup where email=? and pass=?;
  <sql:param value="<%=email%>" /> 
   <sql:param value="<%=pass%>" /> 
  </sql:query>> 
           

<% 
    response.sendRedirect("index.jsp");
%>
    </body>
</html>
