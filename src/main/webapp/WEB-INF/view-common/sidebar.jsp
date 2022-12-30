<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 12/27/2022
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
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

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.css"
          integrity="sha512-c0+vSv9tnGS4fzwTIBFPcdCZ0QwP+aTePvZeAJkYpbj67KvQ5+VrJjDh3lil48LILJxhICQf66dQ8t/BJyOo/g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.4/css/boxicons.min.css"
          integrity="sha512-cn16Qw8mzTBKpu08X0fwhTSv02kK/FojjNLz0bwp2xJ4H+yalwzXKFw/5cLzuBZCxGWIA+95X4skzvo8STNtSg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/quill/1.3.7/quill.snow.css"
          integrity="sha512-XMxqcAfuPHOh2Kz0Z3oDynUcLgyKP6B1NCKUTxyVbM02u1ZrygDcLddKw7KpN/SGmdw8raHbKgaIHP7+bEfGYw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/quill/1.3.7/quill.bubble.css"
          integrity="sha512-mLecVYo2QWbbYIF2u/ppRT91u615n044kBhrGzqbKQRRQxBUj8BR5b+z9qQsUNyWVYr8Z+c/TISuI7cnbpqpWg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.2.0/fonts/remixicon.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" type="text/css">
    <!--Vendor JS file-->
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.36.3/apexcharts.min.js"--%>
    <%--            integrity="sha512-sa449wQ9TM6SvZV7TK7Zx/SjVR6bc7lR8tRz1Ar4/R6X2jOLaFln/9C+6Ak2OkAKZ/xBAKJ94dQMeYa0JT1RLg=="--%>
    <%--            crossorigin="anonymous" referrerpolicy="no-referrer"></script>--%>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/js/bootstrap.min.js"--%>
    <%--            integrity="sha512-1/RvZTcCDEUjY/CypiMz+iqqtaoQfAITmNSJY17Myp4Ms5mdxPS5UV7iOfdZoxcGhzFbOm6sntTKJppjvuhg4g=="--%>
    <%--            crossorigin="anonymous" referrerpolicy="no-referrer"></script>--%>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/js/bootstrap.bundle.min.js"--%>
    <%--            integrity="sha512-i9cEfJwUwViEPFKdC1enz4ZRGBj8YQo6QByFTF92YXHi7waCqyexvRD75S5NVTsSiTv7rKWqG9Y5eFxmRsOn0A=="--%>
    <%--            crossorigin="anonymous" referrerpolicy="no-referrer"></script>--%>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.1.1/chart.min.js"--%>
    <%--            integrity="sha512-MC1YbhseV2uYKljGJb7icPOjzF2k6mihfApPyPhEAo3NsLUW0bpgtL4xYWK1B+1OuSrUkfOTfhxrRKCz/Jp3rQ=="--%>
    <%--            crossorigin="anonymous" referrerpolicy="no-referrer"></script>--%>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.4.1/echarts.min.js"--%>
    <%--            integrity="sha512-OTbGFYPLe3jhy4bUwbB8nls0TFgz10kn0TLkmyA+l3FyivDs31zsXCjOis7YGDtE2Jsy0+fzW+3/OVoPVujPmQ=="--%>
    <%--            crossorigin="anonymous" referrerpolicy="no-referrer"></script>--%>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/quill/1.3.7/quill.min.js"--%>
    <%--            integrity="sha512-P2W2rr8ikUPfa31PLBo5bcBQrsa+TNj8jiKadtaIrHQGMo6hQM6RdPjQYxlNguwHz8AwSQ28VkBK6kHBLgd/8g=="--%>
    <%--            crossorigin="anonymous" referrerpolicy="no-referrer"></script>--%>
    <%--    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" type="text/javascript"></script>--%>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/6.3.1/tinymce.min.js"--%>
    <%--            integrity="sha512-eV68QXP3t5Jbsf18jfqT8xclEJSGvSK5uClUuqayUbF5IRK8e2/VSXIFHzEoBnNcvLBkHngnnd3CY7AFpUhF7w=="--%>
    <%--            crossorigin="anonymous" referrerpolicy="no-referrer"></script>--%>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/valid.js/1.2.5/validate.js"--%>
    <%--            integrity="sha512-20uWmXlcs85IacabeDkksf23YH71H3Sgsf3S63l+8gt8bRB3OM0JxnheaqbIJfP04ZdJa4l5F5HtLm8zuT8N9Q=="--%>
    <%--            crossorigin="anonymous" referrerpolicy="no-referrer"></script>--%>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"--%>
    <%--            integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ=="--%>
    <%--            crossorigin="anonymous" referrerpolicy="no-referrer"></script>--%>

    <!-- Template Main CSS File -->
    <link href="${pageContext.servletContext.contextPath}resource/assets/css/style.css" rel="stylesheet">
</head>
<body>
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link " href="${pageContext.request.contextPath}/">
                <i class="bi bi-house"></i>
                <span>Trang chủ</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link " href="${pageContext.request.contextPath}/viewProducts">
                <i class="bi bi-grid"></i>
                <span>Tất cả sản phẩm</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <img src="https://cf.shopee.vn/file/687f3967b7c2fe6a134a2c11894eea4b_tn" height="32"
                     width="32"></img><span>Men's wear</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="${pageContext.request.contextPath}/shirt">
                        <i class="bi bi-circle"></i><span>Shirt</span>
                    </a>
                </li>
                <li>
                    <a href="#men-coat.html">
                        <i class="bi bi-circle"></i><span>Coat</span>
                    </a>
                </li>
                <li>
                    <a href="#men-jeans.html">
                        <i class="bi bi-circle"></i><span>Jeans</span>
                    </a>
                </li>
                <li>
                    <a href="#men-short.html">
                        <i class="bi bi-circle"></i><span>Short</span>
                    </a>
                </li>
                <%--                <li>--%>
                <%--                    <a href="components-cards.html">--%>
                <%--                        <i class="bi bi-circle"></i><span>Cards</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>
                <%--                <li>--%>
                <%--                    <a href="components-carousel.html">--%>
                <%--                        <i class="bi bi-circle"></i><span>Carousel</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>
                <%--                <li>--%>
                <%--                    <a href="components-list-group.html">--%>
                <%--                        <i class="bi bi-circle"></i><span>List group</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>
                <%--                <li>--%>
                <%--                    <a href="components-modal.html">--%>
                <%--                        <i class="bi bi-circle"></i><span>Modal</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>
                <%--                <li>--%>
                <%--                    <a href="components-tabs.html">--%>
                <%--                        <i class="bi bi-circle"></i><span>Tabs</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>
                <%--                <li>--%>
                <%--                    <a href="components-pagination.html">--%>
                <%--                        <i class="bi bi-circle"></i><span>Pagination</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>
                <%--                <li>--%>
                <%--                    <a href="components-progress.html">--%>
                <%--                        <i class="bi bi-circle"></i><span>Progress</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>
                <%--                <li>--%>
                <%--                    <a href="components-spinners.html">--%>
                <%--                        <i class="bi bi-circle"></i><span>Spinners</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>
                <%--                <li>--%>
                <%--                    <a href="components-tooltips.html">--%>
                <%--                        <i class="bi bi-circle"></i><span>Tooltips</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>
            </ul>
        </li><!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#mobile-nav" data-bs-toggle="collapse" href="#">
                <img src="https://salt.tikicdn.com/ts/category/55/5b/80/48cbaafe144c25d5065786ecace86d38.png"
                     height="32" width="32"></img><span>Women's wear</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="mobile-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="#Women-Shirt.html">
                        <i class="bi bi-circle"></i><span>Shirt</span>
                    </a>
                </li>
                <li>
                    <a href="#Women-Coat.html">
                        <i class="bi bi-circle"></i><span>Coat</span>
                    </a>
                </li>
                <li>
                    <a href="#Women-Jeans.html">
                        <i class="bi bi-circle"></i><span>Jeans</span>
                    </a>
                </li>
                <li>
                    <a href="#Women-Dress.html">
                        <i class="bi bi-circle"></i><span>Dress</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Forms Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#tablet-nav" data-bs-toggle="collapse" href="#">
                <img src="https://salt.tikicdn.com/cache/100x100/ts/category/13/64/43/226301adcc7660ffcf44a61bb6df99b7.png.webp"
                     height="32" width="32"></img><span>Kid's wear</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tablet-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="#Kid-shirt.html">
                        <i class="bi bi-circle"></i><span>Shirt</span>
                    </a>
                </li>
                <li>
                    <a href="#Kid-Coat.html">
                        <i class="bi bi-circle"></i><span>Coat</span>
                    </a>
                </li>
                <li>
                    <a href="#Kid-jeans.html">
                        <i class="bi bi-circle"></i><span>Jeans</span>
                    </a>
                </li>
                <li>
                    <a href="#Kid-short.html">
                        <i class="bi bi-circle"></i><span>Short</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Forms Nav -->
        <p>
            <%--        <li class="nav-item">--%>
            <%--            <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">--%>
            <%--                <i class="bi bi-layout-text-window-reverse"></i><span>Tables</span><i--%>
            <%--                    class="bi bi-chevron-down ms-auto"></i>--%>
            <%--            </a>--%>
            <%--            <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">--%>
            <%--                <li>--%>
            <%--                    <a href="tables-general.html">--%>
            <%--                        <i class="bi bi-circle"></i><span>General Tables</span>--%>
            <%--                    </a>--%>
            <%--                </li>--%>
            <%--                <li>--%>
            <%--                    <a href="tables-data.html">--%>
            <%--                        <i class="bi bi-circle"></i><span>Data Tables</span>--%>
            <%--                    </a>--%>
            <%--                </li>--%>
            <%--            </ul>--%>
            <%--        </li><!-- End Tables Nav -->--%>

            <%--        <li class="nav-item">--%>
            <%--            <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">--%>
            <%--                <i class="bi bi-bar-chart"></i><span>Charts</span><i class="bi bi-chevron-down ms-auto"></i>--%>
            <%--            </a>--%>
            <%--            <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">--%>
            <%--                <li>--%>
            <%--                    <a href="charts-chartjs.html">--%>
            <%--                        <i class="bi bi-circle"></i><span>Chart.js</span>--%>
            <%--                    </a>--%>
            <%--                </li>--%>
            <%--                <li>--%>
            <%--                    <a href="charts-apexcharts.html">--%>
            <%--                        <i class="bi bi-circle"></i><span>ApexCharts</span>--%>
            <%--                    </a>--%>
            <%--                </li>--%>
            <%--                <li>--%>
            <%--                    <a href="charts-echarts.html">--%>
            <%--                        <i class="bi bi-circle"></i><span>ECharts</span>--%>
            <%--                    </a>--%>
            <%--                </li>--%>
            <%--            </ul>--%>
            <%--        </li><!-- End Charts Nav -->--%>

            <%--        <li class="nav-item">--%>
            <%--            <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">--%>
            <%--                <i class="bi bi-gem"></i><span>Icons</span><i class="bi bi-chevron-down ms-auto"></i>--%>
            <%--            </a>--%>
            <%--            <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">--%>
            <%--                <li>--%>
            <%--                    <a href="icons-bootstrap.html">--%>
            <%--                        <i class="bi bi-circle"></i><span>Bootstrap Icons</span>--%>
            <%--                    </a>--%>
            <%--                </li>--%>
            <%--                <li>--%>
            <%--                    <a href="icons-remix.html">--%>
            <%--                        <i class="bi bi-circle"></i><span>Remix Icons</span>--%>
            <%--                    </a>--%>
            <%--                </li>--%>
            <%--                <li>--%>
            <%--                    <a href="icons-boxicons.html">--%>
            <%--                        <i class="bi bi-circle"></i><span>Boxicons</span>--%>
            <%--                    </a>--%>
            <%--                </li>--%>
            <%--            </ul>--%>
            <%--        </li><!-- End Icons Nav -->--%>

            <%--        <li class="nav-heading">Pages</li>--%>
        </p>
        <li class="nav-item">
            <a class="nav-link collapsed" href="${pageContext.request.contextPath}/user/users-profile">
                <i class="bi bi-person"></i>
                <span>Profile</span>
            </a>
        </li><!-- End Profile Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>F.A.Q</span>
            </a>
        </li><!-- End F.A.Q Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-contact.html">
                <i class="bi bi-envelope"></i>
                <span>Contact</span>
            </a>
        </li><!-- End Contact Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-register.html">
                <i class="bi bi-card-list"></i>
                <span>Register</span>
            </a>
        </li><!-- End Register Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-login.html">
                <i class="bi bi-box-arrow-in-right"></i>
                <span>Login</span>
            </a>
        </li><!-- End Login Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-error-404.html">
                <i class="bi bi-dash-circle"></i>
                <span>Error 404</span>
            </a>
        </li><!-- End Error 404 Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-blank.html">
                <i class="bi bi-file-earmark"></i>
                <span>Blank</span>
            </a>
        </li><!-- End Blank Page Nav -->

    </ul>

</aside>

</body>
</html>
