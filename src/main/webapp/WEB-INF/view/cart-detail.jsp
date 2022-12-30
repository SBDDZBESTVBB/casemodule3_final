<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>EShopper</title>
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
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.min.css"
          integrity="sha512-YFENbnqHbCRmJt5d+9lHimyEMt8LKSNTMLSaHjvsclnZGICeY/0KYEeiHwD1Ux4Tcao0h60tdcMv+0GljvWyHg=="
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
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/7.1.96/css/materialdesignicons.min.css"
          integrity="sha512-NaaXI5f4rdmlThv3ZAVS44U9yNWJaUYWzPhvlg5SC7nMRvQYV9suauRK3gVbxh7qjE33ApTPD+hkOW78VSHyeg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
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
    <section class="section">
        <!-- Topbar End -->
        <!-- Cart Start -->
        <div class="container-fluid pt-5">
            <div class="row px-xl-5">
                <div class="col-lg-8 table-responsive mb-5">
                    <table class="table table-bordered text-center mb-0">
                        <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Products</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Remove</th>
                        </tr>
                        </thead>
                        <tbody class="align-middle">
                        <tr>
                            <td class="align-middle"><img src="${pageContext.servletContext.contextPath}img/product-1.jpg" alt="" style="width: 50px;"> Colorful
                                Stylish Shirt
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="bi-dash"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center"
                                           value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="bi-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary"><i class="bi-x"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="${pageContext.servletContext.contextPath}img/product-2.jpg" alt="" style="width: 50px;"> Colorful
                                Stylish Shirt
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="bi-dash"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center"
                                           value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="bi-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary"><i class="bi-x"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="${pageContext.servletContext.contextPath}img/product-3.jpg" alt="" style="width: 50px;"> Colorful
                                Stylish Shirt
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="bi-dash"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center"
                                           value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="bi-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary"><i class="bi-x"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="${pageContext.servletContext.contextPath}img/product-4.jpg" alt="" style="width: 50px;"> Colorful
                                Stylish Shirt
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="bi-dash"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center"
                                           value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="bi-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary"><i class="bi-x"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="${pageContext.servletContext.contextPath}img/product-5.jpg" alt="" style="width: 50px;"> Colorful
                                Stylish Shirt
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="bi-dash"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center"
                                           value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="bi-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary"><i class="bi-x"></i></button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-lg-4">
                    <form class="mb-5" action="">
                        <div class="input-group">
                            <input type="text" class="form-control p-4" placeholder="Coupon Code">
                            <div class="input-group-append">
                                <button class="btn btn-primary">Apply Coupon</button>
                            </div>
                        </div>
                    </form>
                    <div class="card border-secondary mb-5">
                        <div class="card-header bg-secondary border-0">
                            <h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
                        </div>
                        <div class="card-body">
                            <div class="d-flex justify-content-between mb-3 pt-1">
                                <h6 class="font-weight-medium">Subtotal</h6>
                                <h6 class="font-weight-medium">$150</h6>
                            </div>
                            <div class="d-flex justify-content-between">
                                <h6 class="font-weight-medium">Shipping</h6>
                                <h6 class="font-weight-medium">$10</h6>
                            </div>
                        </div>
                        <div class="card-footer border-secondary bg-transparent">
                            <div class="d-flex justify-content-between mt-2">
                                <h5 class="font-weight-bold">Total</h5>
                                <h5 class="font-weight-bold">$160</h5>
                            </div>
                            <button class="btn btn-block btn-primary my-3 py-3">Proceed To Checkout</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cart End -->

    </section>
    <!-- Vendor End -->
</main>
<!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer">
    <div class="copyright">
        &copy; Copyright <strong><span>Tran Huy Media Mart</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
        <%--        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>--%>
    </div>
</footer><!-- End Footer -->
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<!-- Vendor JS Files -->
<%--<script src="resource/assets/vendor/apexcharts/apexcharts.min.js"></script>--%>
<%--<script src="resource/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<%--<script src="resource/assets/vendor/chart.js/chart.min.js"></script>--%>
<%--<script src="resource/assets/vendor/echarts/echarts.min.js"></script>--%>
<%--<script src="resource/assets/vendor/quill/quill.min.js"></script>--%>
<%--<script src="resource/assets/vendor/simple-datatables/simple-datatables.js"></script>--%>
<%--<script src="resource/assets/vendor/tinymce/tinymce.min.js"></script>--%>
<%--<script src="resource/assets/vendor/php-email-form/validate.js"></script>--%>

<!-- Template Main JS File -->
<script src="${pageContext.servletContext.contextPath}resource/assets/js/main.js"></script>

</body>

</html>
