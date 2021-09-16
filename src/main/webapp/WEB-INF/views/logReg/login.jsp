<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>

<%@include file="../dynamic/navigationMenu.jspf" %>

<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row center">
                        <div class="col-lg-4">
                            <img src="../../assets/img/loginImg.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Hello !</h1>
                                    <p>For user login is: "user123" and password: "user123"</p>
                                    <p>For admin login is: "admin" and password: "admin"</p>
                                </div>
                                <form class="user" method="post" action='<c:url value="/login"/>'>
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" id="exampleInputEmail"
                                               aria-describedby="emailHelp" name="username"
                                               placeholder="username">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                               id="exampleInputPassword" name="password" placeholder="password">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">Save me</label>
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-primary btn-user btn-block" value="Login">
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<!-- Bootstrap core JavaScript-->
<script src='<c:url value="vendor/jquery/jquery.min.js"/>'></script>
<script src='<c:url value="vendor/bootstrap/js/bootstrap.bundle.min.js"/>'></script>

<!-- Core plugin JavaScript-->
<script src='<c:url value="vendor/jquery-easing/jquery.easing.min.js"/>'></script>

<!-- Custom scripts for all pages-->
<script src='<c:url value="js/sb-admin-2.min.js"/>'></script>


<%@include file="../dynamic/footer.jspf" %>
<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>