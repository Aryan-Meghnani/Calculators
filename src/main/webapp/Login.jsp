<%--
  Created by IntelliJ IDEA.
  User: aryan
  Date: 31-08-2021
  Time: 04:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<form action="Login.jsp" method="post">
    Enter Username <input name="username">
    Enter Password<input name="password" type="password">
    <button type="submit">
        Login
    </button>
</form>

<%
    if (request.getParameterNames().hasMoreElements()) {
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String username = (user != null) ? user : " ";
        String password = (pass != null) ? pass : " ";
        if (username.equals("Sachin bhansali") && password.equals("123sachin@b")) {
            HttpSession httpSession = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("Home.jsp");
        } else
            response.sendRedirect("Login.jsp");
    }
%>
</body>
</html>
