<%--
  Created by IntelliJ IDEA.
  User: aryan
  Date: 31-08-2021
  Time: 06:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("Login.jsp");
    }
%>
<H3>Home Page</H3>
<H4>Details about the Clients
</H4>
<H4>About the Website</H4>
<H4>Menu
    <H5><a href="index.jsp">Calculators</a></H5>
</H4>
<H4>Contact Page
    <H5><a href="Contact.jsp">Contact Page</a></H5>
</H4>

</body>
</html>
