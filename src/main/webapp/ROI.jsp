<%--
  Created by IntelliJ IDEA.
  User: aryan
  Date: 31-08-2021
  Time: 03:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ROI Calculator</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("Login.jsp");
    }
%>
<form action="ROI.jsp" method="get">
    Enter Total Revenue <input name="Revenue">
    Enter Total Cost<input name="Cost">
    <button type="submit">
        Calculate
    </button>
</form>
Return on Investment:
<%
    if (request.getParameterNames().hasMoreElements()) {
        double revenue;
        double cost;
        String r = request.getParameter("Revenue");
        String c = request.getParameter("Cost");
        try {
            revenue = (r != null) ? Double.parseDouble(r) : 0;
            cost = (c != null) ? Double.parseDouble(c) : 0;
            double result = ((revenue - cost) / cost) * 100;
            out.println(result+"%");
        } catch (NumberFormatException e) {
            out.println("Please Enter Correct Parameters");
        }
    }
%><br><br>
<a href="index.jsp">Go Back To Index</a><br>
</body>
</html>
