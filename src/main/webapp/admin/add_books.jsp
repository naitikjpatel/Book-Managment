<%-- 
    Document   : add_books
    Created on : 01-Oct-2023, 2:59:35 pm
    Author     : Smit Soni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Add Book</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="navbar.jsp" %>
        
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Add Books</h4>
                      
                            <form action="../add_books" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Book Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="bname" placeholder="Enter bookname"> 
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Author Name</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="author" placeholder="Author">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Price</label>
                                    <input type="number" class="form-control" id="exampleInputPassword1" name="price" placeholder="Price">
                                </div>
                                <div class="form-group">
                                    <label for="inputState">Book Categories</label>
                                    <select id="inputState" name="categories" class="form-control">
                                        <option selected>--select--</option>
                                        <option value="New">New Book</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="inputState">Book Status</label>
                                    <select id="inputState" name="status" class="form-control">
                                        <option selected>--select--</option>
                                        <option value="Active">Active</option>
                                        <option value="Inactive">Inactive</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                   <label for="exampleFormControlFile1">Upload Photo</label>
                                   <input type="file" class="form-control-file" id="exampleFormControlFile1" name="bimg">
                                </div>
                                <button type="submit" class="btn btn-primary">Add</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="margin-top: 100px">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
