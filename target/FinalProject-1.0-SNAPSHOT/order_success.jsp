<%-- 
    Document   : order_success
    Created on : 04-Oct-2023, 10:45:04 pm
    Author     : Smit Soni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="all_component/navbar.jsp" %>
        <div class="container text-center mt-3">
            <i class="fas fa-check-circle fa-5x text-success"></i>
            <h1>Thank You</h1>
            <h2>Your Order Successfully Placed</h2>
            <h5>Your Product will be Delivered Within 7 Days</h5>
            <a href="first.jsp" class="btn btn-primary mt-3">Home</a>
            <a href="order.jsp" class="btn btn-danger mt-3">View Order</a>
        </div>
    </body>
</html>
