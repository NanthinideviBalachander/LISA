<%-- 
    Document   : Signup
    Created on : 9 Mar, 2019, 5:39:07 PM
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
        
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String cpass=request.getParameter("cpass");      
%>

        
        
        
        <c:set var="pass" scope="session" value="<%=pass%>"/> 
        <c:set var="cpass" scope="session" value="<%=cpass%>"/> 
     
          
  <sql:setDataSource var="db" driver="org.apache.derby.jdbc.ClientDriver"  
     url="jdbc:derby://localhost:1527/LISA"  
     user="lisa"  password="lisa"/>  
 
<c:catch var ="catchtheException">
<sql:update dataSource="${db}" var="count">  
INSERT INTO signup VALUES (?,?,?) 
 <sql:param value="<%=name%>" />  
  <sql:param value="<%=email%>" /> 
   <sql:param value="<%=pass%>" /> 
</sql:update> 
</c:catch> 

<c:if test = "${catchtheException != null}"> 
    
  <c:set var="ce" scope="session" value="1"/> 
   <c:redirect url="index.jsp">
     <c:param name="co" value="${ce}"></c:param>
</c:redirect>
    
 </c:if>  
    

<c:choose>
    <c:when test = "${catchtheException != null}">
        <c:set var="ce" scope="session" value="1"/> 
   <c:redirect url="index.jsp">
     <c:param name="co" value="${ce}"></c:param>
</c:redirect>
    </c:when>    
    <c:otherwise>
         <c:set var="ce" scope="session" value="0"/> 
        <c:redirect url="index.jsp">
     <c:param name="co" value="${ce}"></c:param>
</c:redirect>
    </c:otherwise>
</c:choose>
    
    



    </body>
</html>
