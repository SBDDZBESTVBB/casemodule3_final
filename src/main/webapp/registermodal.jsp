<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 1/3/2023
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="${pageContext.request.contextPath}/head.jsp">
    <jsp:param name="head" value=""/>
</jsp:include>


<body>
<jsp:include page='/header.jsp'>
    <jsp:param name="header" value=""/>
</jsp:include>
<jsp:include page='/sidebar.jsp'>
    <jsp:param name="asside" value=""/>
</jsp:include>

<main id="main" class="main">
    <modal>
        <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="loginModalLabel">Login</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form class="row g-3 needs-validation" novalidate>
                            <div class="row">
                                <label for="validationLoginEmail" class="form-label">Email/ID</label>
                                <input type="text" class="form-control" id="validationLoginEmail" aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Please fill email or user ID.
                                </div>

                            </div>

                            <div class="row">
                                <label for="validationUserPassword" class="form-label">Password</label>
                                <div class="input-group has-validation">
                                    <input type="password" class="form-control" id="validationUserPassword"
                                           aria-describedby="inputGroupPrepend" required>
                                    <div class="invalid-feedback">
                                        Please fill the correct password.
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </modal>

    <section class="section">

        <div class="container-fluid mb-5 ">
            <form class="row g-3 needs-validation" novalidate method="post">
                <div class="row">
                    <label for="yourName" class="form-label">Your name</label>
                    <input type="text" class="form-control" id="yourName"
                           aria-describedby="inputGroupPrepend" required>
                    <div class="invalid-feedback">
                        Please fill your name.
                    </div>
                </div>

                <div class="row">
                    <label for="validationRegisterEmail" class="form-label">Email</label>
                    <input type="email" class="form-control" id="validationRegisterEmail"
                           aria-describedby="inputGroupPrepend" required>
                    <div class="invalid-feedback">
                        Please fill email.
                    </div>
                </div>

                <div class="row">
                    <label for="validationRegisterPassword"
                           class="form-label">Password</label>
                    <input type="password" class="form-control"
                           id="validationRegisterPassword"
                           aria-describedby="inputGroupPrepend" required>
                    <div class="invalid-feedback">
                        Please fill password.
                    </div>
                </div>

                <div class="row">
                    <label for="validationRegisterRepeatPassword" class="form-label">Repeat
                        Your Password</label>
                    <input type="password" class="form-control"
                           id="validationRegisterRepeatPassword"
                           aria-describedby="inputGroupPrepend" required>
                    <div class="invalid-feedback">
                        Please fill your password.
                    </div>
                </div>

                <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="checkbox" value=""
                           id="form2Example3" required/>
                    <label class="form-check-label" for="form2Example3">
                        I agree all statements in <a href="#!">Terms of service</a>
                    </label>
                    <div class="invalid-feedback">
                        Please fill your password.
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Register</button>
                </div>

            </form>
        </div>
    </section>
    <!-- Vendor End -->
</main>
<!-- End #main -->

<!-- ======= Footer ======= -->



<!-- Template Main JS File -->
<script src="${pageContext.request.contextPath}/resource/assets/js/main.js"></script>

</body>

</html>
