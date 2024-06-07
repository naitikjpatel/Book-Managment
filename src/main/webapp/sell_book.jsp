<%-- 
    Document   : sell_book
    Created on : 02-Oct-2023, 10:04:28 pm
    Author     : Smit Soni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sell Book</title>
        <%@include file="all_component/allCss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2;">
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <%@include file="all_component/navbar.jsp"%>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-2">
                        <div class="card-body">
                            <h5 class="text-center text-primary p-1">Sell Old Book</h5>
                            <c:if test="${not empty succMsg}">
                                <p class="text-center text-success">${succMsg }</p>
                                <c:remove var="succMsg" scope="session"/>
                            </c:if>
                            <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger">${failedMsg }</p>
                                <c:remove var="failedMsg" scope="session"/>
                            </c:if>
                            <form action="add_old_book" method="post" enctype="multipart/form-data">
                                <input type="hidden" value="${userobj.email}" name="user">
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
                                   <label for="exampleFormControlFile1">Upload Photo</label>
                                   <input type="file" class="form-control-file" id="exampleFormControlFile1" name="bimg">
                                </div>
                                <button type="submit" class="btn btn-primary">Sell</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
