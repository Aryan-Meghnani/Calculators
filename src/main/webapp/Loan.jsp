<%--
  Created by IntelliJ IDEA.
  User: aryan
  Date: 31-08-2021
  Time: 03:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Loan Calculator</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("Login.jsp");
    }
%>
<form action="Loan.jsp" method="get">
    Enter Principal <input name="Principal">
    Enter Interest Rate<input name="Rate">
    Enter Time(In Years)<input name="Time">
    <button type="submit">
        Calculate
    </button>
</form>
Monthly EMI is:
<%
    if (request.getParameterNames().hasMoreElements()) {
        double principal;
        double rate;
        double time;
        String p = request.getParameter("Principal");
        String r = request.getParameter("Rate");
        String t = request.getParameter("Time");
        try {
            principal = (p != null) ? Double.parseDouble(p) : 0;
            rate = (r != null) ? Double.parseDouble(r) : 0;
            time = (t != null) ? Double.parseDouble(t) : 0;
            rate = rate / (12 * 100);
            time = time * 12;
            double result = (principal * rate * Math.pow(1 + rate, time)) / (Math.pow(1 + rate, time) - 1);
            out.println(result);
        } catch (NumberFormatException e) {
            out.println("Please Enter Correct Parameters");
        }
    }
%><br><br>
<a href="index.jsp">Go Back To Index</a><br>
</body>
</html>
