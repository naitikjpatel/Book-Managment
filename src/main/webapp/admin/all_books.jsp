<%-- 
    Document   : all_books
    Created on : 01-Oct-2023, 3:04:44 pm
    Author     : Smit Soni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.BookDAOImpl" %>
<%@page import="com.entity.BookDtls" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin All Books</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <h3 class="text-center">Hello Admin</h3>
        <c:if test="${not empty succMsg}">
            <p class="text-center text-success">${succMsg }</p>
            <c:remove var="succMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty failedMsg}">
            <p class="text-center text-danger">${failedMsg }</p>
            <c:remove var="failedMsg" scope="session"/>
        </c:if>
        <table class="table table-striped">
            <thead class="bg-primary text-white">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Image</th>
                    <th scope="col">Book Name</th>
                    <th scope="col">Author</th>
                    <th scope="col">Price</th>
                    <th scope="col">Categories</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    BookDAOImpl dao = new BookDAOImpl();
                    List<BookDtls> list = dao.getAllBooks();
                    for(BookDtls b:list){
                    %>
                    <tr>
                        <td><%=b.getBookId() %></td>
                        <td><img src="../book/<%=b.getPhotoName() %>" style="width: 50px;height: 50px"></td>
                        <td><%=b.getBookName()%></td>
                        <td><%=b.getAuthor()%></td>
                        <td><%=b.getPrice()%></td>
                        <td><%=b.getBookCategory()%></td>
                        <td><%=b.getStatus()%></td>
                        <td>
                            <a href="edit_books.jsp?id=<%=b.getBookId() %>" class="btn btn-primary btn-sm"><i class="fa-regular fa-pen-to-square"></i> Edit</a>
                            <a href="../delete?id=<%=b.getBookId() %>" class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i> Delete</a>
                        </td>
                    </tr>
                    <%
                    }
                %>
                
<!--                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>
                        <a href="#" class="btn btn-primary btn-sm">Edit</a>
                        <a href="#" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td>Larry</td>
                  <td>the Bird</td>
                  <td>@twitter</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                  <td>
                        <a href="#" class="btn btn-primary btn-sm">Edit</a>
                        <a href="#" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>-->
            </tbody>
        </table>
        <div style="margin-top: 270px">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
