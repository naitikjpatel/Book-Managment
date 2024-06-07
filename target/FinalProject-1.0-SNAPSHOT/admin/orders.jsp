<%-- 
    Document   : all_books
    Created on : 01-Oct-2023, 3:04:44 pm
    Author     : Smit Soni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.DAO.BookOrderImpl" %>
<%@page import="java.util.List" %>
<%@page import="com.entity.Book_Order" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin All Orders</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body>
    <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <%@include file="navbar.jsp" %>
        <h3 class="text-center">Hello Admin</h3>
        <table class="table table-striped">
            <thead class="bg-primary text-white">
                <tr>
                    <th scope="col">Order Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Address</th>
                    <th scope="col">Phone No.</th>
                    <th scope="col">Book Name</th>
                    <th scope="col">Author</th>
                    <th scope="col">Price</th>
                    <th scope="col">Payment Type</th>
                </tr>
            </thead>
            <tbody>
                <%
                 BookOrderImpl dao = new BookOrderImpl();
                 List<Book_Order> blist = dao.getAllOrder();
                 for(Book_Order b:blist)
                 {%>
                    <tr>
                        <th scope="row"><%=b.getOrderId()%></th>
                        <td><%=b.getUsername() %></td>
                        <td><%=b.getEmail() %></td>
                        <td><%=b.getFulladd() %></td>
                        <td><%=b.getPhno() %></td>
                        <td><%=b.getBookName() %></td>
                        <td><%=b.getAuthor() %>td>
                        <td><%=b.getPrice() %></td>
                        <td><%=b.getPaymentType() %></td>
                    </tr>
                 <%}
                %>
                
            </tbody>
        </table>
        <div style="margin-top: 270px">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
