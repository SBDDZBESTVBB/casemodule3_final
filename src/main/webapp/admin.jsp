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
<%--<jsp:include page="WEB-INF/common/footer.jsp">--%>
<%--    <jsp:param name="footer" value=""/>--%>
<%--</jsp:include>--%>
<main id="main" class="main">

  <div class="pagetitle">
    <h1>Home</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/"></a>Home</li>
        <li class="breadcrumb-item">Admin login</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">
      <form>
        <div class="mb-3">
          <label for="adminID" class="form-label">ID</label>
          <input  class="form-control" id="adminID" aria-describedby="adminID">
<%--          <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
        </div>
        <div class="mb-3">
          <label for="adminPassword" class="form-label">Password</label>
          <input type="password" class="form-control" id="adminPassword">
        </div>
<%--        <div class="mb-3 form-check">--%>
<%--          <input type="checkbox" class="form-check-input" id="exampleCheck1">--%>
<%--          <label class="form-check-label" for="exampleCheck1">Check me out</label>--%>
<%--        </div>--%>
        <button type="submit" class="btn btn-primary">Login</button>
      </form>
    </div>
  </section>
</main>
</body>
</html>
