<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>

<%@include file="../dynamic/navigationMenu.jspf" %>


<main id="main">

    <!-- ======= Skills Section ======= -->
    <section id="skills" class="skills section-bg">

        <div class="section-title">
            <h2>Skills</h2>
            <p></p>
        </div>

        <div class="row skills-content">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">

                <c:forEach items="${skill}" var="title">

                    <!-- Modal -->
                    <div class="modal fade" id="myModal_${title.id}" tabindex="-1"
                         aria-labelledby="exampleModalLabel_${title.id}" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel_${title.id}">Deleting skill</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <p> You are deleting skill called- ${title.name}</p>
                                    <p> Do You really want to delete this skill?</p>
                                    <p> It's permanent.</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No
                                    </button>
                                    <form name="delete" method="post"
                                          action='<c:url value="/deleteSkill/${title.id}"/>'>
                                        <input type="submit" class="btn btn-danger pull-left" value="Yes"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <form name="send" method="post" action='<c:url value="/editSkills/${title.id}"/>'>
                        <div class="form-group row center">

                            <label class="col-1 col-form-label">Name</label>
                            <div class="col-4">
                                <input class="form-control" type="text" name="name"
                                       value="${title.name}">
                            </div>

                            <label class="col-1 col-form-label">Level</label>
                            <div class="col-2">
                                <input class="form-control" type="text" name="level"
                                       value="${title.level}">
                            </div>
                            <div class="col-2">
                                <input class="btn btn-success" type="submit" value="Save" id="searchButton"></input>

                            </div>

                            <div class="col-2">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#myModal_${title.id}">Delete
                                </button>
                            </div>
                        </div>
                    </form>
                </c:forEach>
            </div>
        </div>
    </section>
    <!-- End Skills Section -->

    <div align="center">
        <a href='<c:url value="/about"/> ' class="btn btn-secondary btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-info-circle"></i>
                    </span>
            <span class="text">Back</span>
        </a>
    </div>
</main>

<%--<form name="send" method="post" action='<c:url value="/editSkills"/>'>



<div>
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
</div>



      &lt;%&ndash; <div class="container-fluid">

        <!-- Content Row -->
        <div class="row">
            <div class="col-xl-12 col-md-12 mb-12">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <div class="form-group row">
                            <label for="firstName" class="col-2 col-form-label">Imię</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="firstName" value="${person.firstName}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="lastName" class="col-2 col-form-label">Nazwisko</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="lastName" value="${person.lastName}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="github" class="col-2 col-form-label">URL Git</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="gitHub" value="${person.gitHub}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="start" class="col-2 col-form-label">Od czego się zaczęło:</label>
                            <div class="col-10">
                                <textarea class="form-control" rows="5" name="start">${person.start}</textarea>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="question" class="col-2 col-form-label">Czy kursant opanował
                                jakieś technologie ?</label>
                            <div class="col-1">
                                <label class="radio-inline"><input type="radio" id="question" name="checkbox" value="1" <c:if test="${person.checkbox eq '1'}">checked</c:if>>TAK
                                </label>
                            </div>
                            <div class="col-1">
                                <label class="radio-inline"><input type="radio" id="question" name="checkbox" value="0" <c:if test="${person.checkbox eq '0'}">checked</c:if>>NIE</label>
                            </div>
                        </div>

                    </div>
                </div>
            </div>



            <!-- Content Row -->
            <c:if test="${person.checkbox eq '1'}">

            <div class="col-xl-12 col-md-12 mb-12">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">

                        <div class="row">
                            <div class="col-2">
                                <label for="1" class="col-form-label">Java</label>
                                <input class="form-control" type="text" name="java" value="${person.java}">
                            </div>


                            <div class="col-2">
                                <label for="1" class="col-form-label">Wzorce projektowe</label>
                                <input class="form-control" type="text" name="bestPractice" value="${person.bestPractice}">
                            </div>


                            <div class="col-2">
                                <label for="1" class="col-form-label">TDD</label>
                                <input class="form-control" type="text" name="tdd" value="${person.tdd}">
                            </div>


                            <div class="col-2">
                                <label for="1" class="col-form-label">Bazy danych SQL</label>
                                <input class="form-control" type="text" name="question" value="${person.question}">
                            </div>



                            <div class="col-2">
                                <label for="1" class="col-form-label">Hibernate JPA</label>
                                <input class="form-control" type="text" name="hibernate" value="${person.hibernate}">
                            </div>


                            <div class="col-2">
                                <label for="1" class="col-form-label">HTML_CSS</label>
                                <input class="form-control" type="text" name="html" value="${person.html}">
                            </div>


                            <div class="col-2">
                                <label for="1" class="col-form-label">JSP</label>
                                <input class="form-control" type="text" name="jsp" value="${person.jsp}">
                            </div>

                            <div class="col-2">
                                <label for="1" class="col-form-label">Thymeleaf</label>
                                <input class="form-control" type="text" name="thymeleaf" value="${person.thymeleaf}">
                            </div>

                            <div class="col-2">
                                <label for="1" class="col-form-label">git</label>
                                <input class="form-control" type="text" name="git" value="${person.git}">
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:if>
        <input class="btn btn-success pull-left" type="submit" value="Zapisz zmiany" id="searchButton"></input>

        <!-- Button to Open the Modal -->
        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
            Usuń
        </button>&ndash;%&gt;
</form>--%>


<%@include file="../dynamic/footer.jspf" %>
<%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>