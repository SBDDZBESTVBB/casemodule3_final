<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Tran Huy Media Mart</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${pageContext.servletContext.contextPath}resource/assets/img/favicon.png" rel="icon">
  <link href="${pageContext.servletContext.contextPath}resource/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.css"
        integrity="sha512-c0+vSv9tnGS4fzwTIBFPcdCZ0QwP+aTePvZeAJkYpbj67KvQ5+VrJjDh3lil48LILJxhICQf66dQ8t/BJyOo/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"/>
  <%--    <link href="resource/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">--%>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.4/css/boxicons.min.css"
        integrity="sha512-cn16Qw8mzTBKpu08X0fwhTSv02kK/FojjNLz0bwp2xJ4H+yalwzXKFw/5cLzuBZCxGWIA+95X4skzvo8STNtSg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"/>
  <%--    <link href="resource/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">--%>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/quill/1.3.7/quill.snow.css"
        integrity="sha512-XMxqcAfuPHOh2Kz0Z3oDynUcLgyKP6B1NCKUTxyVbM02u1ZrygDcLddKw7KpN/SGmdw8raHbKgaIHP7+bEfGYw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"/>
  <%--    <link href="resource/assets/vendor/quill/quill.snow.css" rel="stylesheet">--%>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/quill/1.3.7/quill.bubble.css"
        integrity="sha512-mLecVYo2QWbbYIF2u/ppRT91u615n044kBhrGzqbKQRRQxBUj8BR5b+z9qQsUNyWVYr8Z+c/TISuI7cnbpqpWg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"/>
  <%--    <link href="resource/assets/vendor/quill/quill.bubble.css" rel="stylesheet">--%>
  <link href="https://cdn.jsdelivr.net/npm/remixicon@2.2.0/fonts/remixicon.css" rel="stylesheet">

  <%--    <link href="resource/assets/vendor/remixicon/remixicon.css" rel="stylesheet">--%>

  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" type="text/css">
  <!--Vendor JS file-->

  <!-- Template Main CSS File -->
  <link href="${pageContext.servletContext.contextPath}resource/assets/css/style.css" rel="stylesheet">

</head>


<body>
<jsp:include page='/WEB-INF/view-common/header.jsp'>
  <jsp:param name="header" value=""/>
</jsp:include>
<jsp:include page='/WEB-INF/view-common/sidebar.jsp'>
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
