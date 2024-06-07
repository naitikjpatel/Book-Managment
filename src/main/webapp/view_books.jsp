<%-- 
    Document   : view_books
    Created on : 02-Oct-2023, 2:14:16 pm
    Author     : Smit Soni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.List" %>
<%@page import="com.DAO.BookDAOImpl" %>
<%@page import="com.entity.BookDtls" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/allCss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="all_component/navbar.jsp"%>
        <%
        int bid = Integer.parseInt(request.getParameter("bid"));
        BookDAOImpl dao = new BookDAOImpl();
        BookDtls b = dao.getBookById(bid);
        %>
        <div class="container p-3">
            <div class="row">
                <div class="col-md-6 text-center p-5 border bg-white">
                    <img src="book/<%=b.getPhotoName() %>" style="height: 150px;width: 100px"><br>
                    <h4 class="mt-3">Book Name:<span class="text-success"><%=b.getBookName() %></span></h4>
                    <h4>Author Name:<span class="text-success"><%=b.getAuthor() %></span></h4>
                    <h4>Category:<span class="text-success"><%=b.getBookCategory() %></span></h4>
                </div>
                <div class="col-md-6 text-center p-5 border bg-white">
                    <h2><%=b.getBookName() %></h2>
                    <%
                     if("Old".equals(b.getBookCategory()))
                     {%>
                     <h5 class="text-primary">Contact to Seller</h5>
                     <h5 class="text-primary">Email: <%=b.getEmail() %></h5>
                     <%
                     }    
                    %>
                    <div class="row">
                        <div class="col-md-4 text-danger text-center p-2">
                            <i class="fa-solid fa-money-bill-wave fa-2x"></i>
                            <p>Cash On Delivery</p>
                        </div>
                        <div class="col-md-4 text-danger text-center p-2">
                            <i class="fa-solid fa-arrow-rotate-left fa-2x"></i>
                            <p>Return Available</p>
                        </div>
                        <div class="col-md-4 text-danger text-center p-2">
                            <i class="fa-solid fa-truck fa-2x"></i>
                            <p>Free Shipping</p>
                        </div>
                    </div>
                    <%
                     if("Old".equals(b.getBookCategory()))
                     {%>
                        <div class="text-center p-3">
                         <a href="first.jsp" class="btn btn-success">Continue Shopping</a>
                         <a href="" class="btn btn-danger">500</a>
                        </div>
                    <%
                     }else{%>
                        <div class="text-center p-3">
                            <a href="" class="btn btn-primary">Add to Cart</a>
                            <a href="" class="btn btn-danger">500</a>
                        </div>
                     <%}  
                    %>
                    
                </div>
            </div>
        </div>
    </body>
</html>
