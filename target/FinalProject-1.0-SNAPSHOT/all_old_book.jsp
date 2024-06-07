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
        <%@include file="all_component/navbar.jsp"%>
        <div class="container-fluid">
            <div class="row p-3">
                <%
                        BookDAOImpl dao = new BookDAOImpl();
                        List<BookDtls> list = dao.getAllOldBook();
                        for(BookDtls b:list)
                        {%>
                    <div class="col-md-3">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="book/<%=b.getPhotoName()%>" alt="" style="width: 100px;height: 150px"  class="img-thumblin"/>
                                <p><%=b.getBookName() %></p>
                                <p><%=b.getAuthor() %></p>
                                <p>
                                    Categories:<%=b.getBookCategory() %></p>
                                <div class="row">
<!--                                    <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>-->
                                    <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">View Details</a>
                                    <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %></a>
                                </div>
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
