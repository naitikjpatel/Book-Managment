<%-- 
    Document   : all_recent_book
    Created on : 02-Oct-2023, 12:04:51 pm
    Author     : Smit Soni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.List" %>
<%@page import="com.DAO.BookDAOImpl" %>
<%@page import="com.entity.BookDtls" %>
<%@page import="com.entity.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Recent Book</title>
        <%@include file="all_component/allCss.jsp"%>
        <style type="text/css">
            .crd-ho:hover{
                background-color: #fcf7f7;
            }
        </style>
    </head>
    <body>
        <% 
            User u = (User)session.getAttribute("userobj");
        %>
        <%@include file="all_component/navbar.jsp"%>
        <div class="container-fluid">
            <div class="row p-3">
                
                    <%
                    BookDAOImpl dao2 = new BookDAOImpl();
                    List<BookDtls> list2 = dao2.getAllRecentBook();
                    for(BookDtls b:list2)
                    {%>
                        <div class="col-md-3">
                            <div class="card crd-ho mt-2">
                                <div class="card-body text-center">
                                    <img src="book/<%=b.getPhotoName()%>" alt="" style="width: 100px;height: 150px"  class="img-thumblin"/>
                                    <p><%=b.getBookName() %></p>
                                    <p><%=b.getAuthor() %></p>
                                    <p>
                                        <%
                                        if(b.getBookCategory().equals("Old"))
                                        {%>
                                        Categories:<%=b.getBookCategory() %></p>
                                        <div class="row">

                                            <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">View Details</a>
                                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fas fa-rupee-sign"></i></a>
                                        </div>
                                        <%}else{%>
                                          Categories:<%=b.getBookCategory() %></p>
                                    <div class="row">
                                        <%
                                        if(u==null)
                                        {%>
                                            <a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                                        <%}else
                                        {%>
                                        <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
                                        <%
                                         }
                                        %>
<!--                                        <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>-->
                                        <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a>
                                        <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fas fa-rupee-sign"></i></a>
                                    </div> 
                                        <%}
                                        %>
                                        
                                </div>
                            </div>
                        </div>
                    <%
                    }
                    %>
                
            </div>
        </div>
    </body>
</html>
