<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>

<%@include file="../dynamic/navigationMenu.jspf" %>


<form name="send" method="post" action='<c:url value="/addNewSkill"/>'>
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Content Row -->
        <div class="row">
            <div class="col-xl-12 col-md-12 mb-12">
                <div class="card shadow mb-4">
                    <div class="card-header py-3 ">
                        <div class="form-group row center">
                            <label class="col-2 col-form-label">Name</label>
                            <div class="col-2">
                                <input class="form-control" type="text" name="name"
                                       placeholder="name of skill">
                            </div>
                        </div>
                        <div class="form-group row center">
                            <label class="col-2 col-form-label">Level</label>
                            <div class="col-2">
                                <input class="form-control" type="text" name="level"
                                       placeholder="%">
                            </div>
                        </div>
                        <div class="center">
                            <input class="btn btn-success pull-left" type="submit" value="Add" id="add"></input>
                            <a href='<c:url value="/about"/> '><input class="btn btn-danger pull-left" type="button" value="Cancel" id="cancel"></input></a>

                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</form>

<%@include file="../dynamic/footer.jspf" %>
<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>