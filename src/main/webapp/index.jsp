<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculators</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("Login.jsp");
    }
%>
<h3><%= "Welcome " + session.getAttribute("username") %>
</h3>
<h3>
    <a href="SimpleInterest.jsp">Simple Interest Calculator</a><br>
    <a href="CompoundInterest.jsp">Compound Interest Calculator</a><br>
    <a href="Loan.jsp">Loan Calculator</a><br>
    <a href="ROI.jsp">ROI Calculator</a>
</h3>
</body>
</html>