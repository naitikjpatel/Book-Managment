<%-- 
    Document   : setting
    Created on : 02-Oct-2023, 9:26:37 pm
    Author     : Smit Soni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/allCss.jsp"%>
        <style>
            a , a:hover{
                text-decoration: none;
                color:black;
            }
        </style>
    </head>
    <body style="background-color: #f0f1f2;">
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        <%@include file="all_component/navbar.jsp"%>
        <div class="container">
                <h3 class="text-center">Hello,${userobj.name}</h3>
            <div class="row p-5">
                <div class="col-md-4">
                    <a href="sell_book.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-book-open fa-3x"></i>
                                </div>
                                <h4>Sell Old Book</h4>
                            </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-4">
                    <a href="old_book.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-book-open fa-3x"></i>
                                </div>
                                <h4>Old Book</h4>
                            </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-4">
                    <a href="edit_profile.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-edit fa-3x"></i>
                                </div>
                                <h4>Edit Profile</h4>
                            </div>
                        </div>
                    </a>
                </div>
                
<!--                <div class="col-md-4 mt-3">
                    <a href="user_address.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-warning">
                                    <i class="fa-light fa-location-dot fa-3x"></i>
                                </div>
                                <h4>Edit Address</h4>
                            </div>
                        </div>
                    </a>
                </div>-->
                
                <div class="col-md-6 mt-3">
                    <a href="order.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-danger">
                                    <i class="fas fa-box-open fa-3x"></i>
                                </div>
                                <h4>Track Order</h4>
                            </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-6 mt-3">
                    <a href="helpline.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-user-circle fa-3x"></i>
                                </div>
                                <h4>Help Center</h4>
                            </div>
                        </div>
                    </a>
                </div>
                
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
