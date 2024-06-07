<%-- 
    Document   : order
    Created on : 03-Oct-2023, 6:32:40 pm
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
        <title>Order Book</title>
        <%@include file="all_component/allCss.jsp" %>
    </head>
    <body>
    <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        <%@include file="all_component/navbar.jsp" %>
        
        <div class="container p-1">
            <h4 class="text-center text-primary">Your Order</h4>
            <table class="table table-striped mt-3">
                <thead class="bg-primary text-white">
                  <tr>
                    <th scope="col">Order Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Book Name</th>
                    <th scope="col">Author</th>
                    <th scope="col">Price</th>
                    <th scope="col">Payment Type</th>
                  </tr>
                </thead>
                <tbody>
                    <% 
                    User u = (User)session.getAttribute("userobj");
                    BookOrderImpl dao = new BookOrderImpl();
                    List<Book_Order> blist = dao.getBook(u.getEmail());
                    for(Book_Order b:blist)
                    {%>
                        <tr>
                            <th scope="row"><%=b.getOrderId()%></th>
                            <td><%=b.getUserName()%></td>
                            <td><%=b.getBookName()%></td>
                            <td><%=b.getAuthor()%></td>
                            <td><%=b.getPrice()%></td>
                            <td><%=b.getPaymentType()%></td>
                        </tr>
                    <%}
                    %> 
                  
                </tbody>
            </table>
        </div>
    </body>
</html>
