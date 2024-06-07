<%-- 
    Document   : user_address
    Created on : 02-Oct-2023, 10:18:53 pm
    Author     : Smit Soni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/allCss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="all_component/navbar.jsp"%>
        <div class="container">
            <div class="row p-3">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center text-success">Add Address</h3>
                            <form action="">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="inputPassword4">Address</label>
                                      <input type="text" class="form-control" id="inputPassword4" placeholder="Address">
                                    </div>

                                    <div class="form-group col-md-6">
                                      <label for="inputPassword4">Landmark</label>
                                      <input type="text" class="form-control" id="inputPassword4" placeholder="Landmark">
                                    </div>
                                </div>
                                
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                      <label for="inputPassword4">City</label>
                                      <input type="text" class="form-control" id="inputPassword4" placeholder="City">
                                    </div>
                                    
                                    <div class="form-group col-md-4">
                                      <label for="inputPassword4">State</label>
                                      <input type="text" class="form-control" id="inputPassword4" placeholder="State">
                                    </div>
                                    
                                    <div class="form-group col-md-4">
                                      <label for="inputPassword4">Pincode</label>
                                      <input type="text" class="form-control" id="inputPassword4" placeholder="Pincode">
                                    </div>
                                </div>
                                <div class="text-center">
                                    <button class="btn btn-warning">Add Address</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
