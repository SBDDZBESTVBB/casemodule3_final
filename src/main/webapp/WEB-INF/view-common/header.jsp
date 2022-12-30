<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 12/22/2022
  Time: 8:39 AM
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.36.3/apexcharts.min.js"
            integrity="sha512-sa449wQ9TM6SvZV7TK7Zx/SjVR6bc7lR8tRz1Ar4/R6X2jOLaFln/9C+6Ak2OkAKZ/xBAKJ94dQMeYa0JT1RLg=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/js/bootstrap.bundle.min.js"
            integrity="sha512-i9cEfJwUwViEPFKdC1enz4ZRGBj8YQo6QByFTF92YXHi7waCqyexvRD75S5NVTsSiTv7rKWqG9Y5eFxmRsOn0A=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.1.1/chart.min.js"
            integrity="sha512-MC1YbhseV2uYKljGJb7icPOjzF2k6mihfApPyPhEAo3NsLUW0bpgtL4xYWK1B+1OuSrUkfOTfhxrRKCz/Jp3rQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.4.1/echarts.min.js"
            integrity="sha512-OTbGFYPLe3jhy4bUwbB8nls0TFgz10kn0TLkmyA+l3FyivDs31zsXCjOis7YGDtE2Jsy0+fzW+3/OVoPVujPmQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/quill/1.3.7/quill.min.js"
            integrity="sha512-P2W2rr8ikUPfa31PLBo5bcBQrsa+TNj8jiKadtaIrHQGMo6hQM6RdPjQYxlNguwHz8AwSQ28VkBK6kHBLgd/8g=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/6.3.1/tinymce.min.js"
            integrity="sha512-eV68QXP3t5Jbsf18jfqT8xclEJSGvSK5uClUuqayUbF5IRK8e2/VSXIFHzEoBnNcvLBkHngnnd3CY7AFpUhF7w=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/valid.js/1.2.5/validate.js"
            integrity="sha512-20uWmXlcs85IacabeDkksf23YH71H3Sgsf3S63l+8gt8bRB3OM0JxnheaqbIJfP04ZdJa4l5F5HtLm8zuT8N9Q=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Template Main CSS File -->
    <link href="${pageContext.servletContext.contextPath}resource/assets/css/style.css" rel="stylesheet">
</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <i class="bi bi-list toggle-sidebar-btn"></i>
        <a href="${pageContext.request.contextPath}/" class="text-decoration-none d-flex align-items-center">
            <h1 class="m-0 display-5 font-weight-semi-bold"><span
                    class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
        </a>
    </div><!-- End Logo -->

    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->

            <li class="nav-item">

                <a class="nav-link nav-icon" href="${pageContext.request.contextPath}/cartdetail">
                    <i class="bi bi-cart"></i>
                    <span class="badge bg-primary badge-number">4</span>
                </a><!-- End Cart Icon -->

                <%--                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">--%>
                <%--                    <li class="dropdown-header">--%>
                <%--                        Bạn đang có 4 sản phẩm trong giỏ hàng--%>
                <%--                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>--%>
                <%--                    </li>--%>
                <%--                    <li>--%>
                <%--                        <hr class="dropdown-divider">--%>
                <%--                    </li>--%>

                <%--                    <li class="notification-item">--%>
                <%--                        <i class="bi bi-exclamation-circle text-warning"></i>--%>
                <%--                        <div>--%>
                <%--                            <h4>Lorem Ipsum</h4>--%>
                <%--                            <p>Quae dolorem earum veritatis oditseno</p>--%>
                <%--                            <p>30 min. ago</p>--%>
                <%--                        </div>--%>
                <%--                    </li>--%>

                <%--                    <li>--%>
                <%--                        <hr class="dropdown-divider">--%>
                <%--                    </li>--%>

                <%--                    <li class="notification-item">--%>
                <%--                        <i class="bi bi-x-circle text-danger"></i>--%>
                <%--                        <div>--%>
                <%--                            <h4>Atque rerum nesciunt</h4>--%>
                <%--                            <p>Quae dolorem earum veritatis oditseno</p>--%>
                <%--                            <p>1 hr. ago</p>--%>
                <%--                        </div>--%>
                <%--                    </li>--%>

                <%--                    <li>--%>
                <%--                        <hr class="dropdown-divider">--%>
                <%--                    </li>--%>

                <%--                    <li class="notification-item">--%>
                <%--                        <i class="bi bi-check-circle text-success"></i>--%>
                <%--                        <div>--%>
                <%--                            <h4>Sit rerum fuga</h4>--%>
                <%--                            <p>Quae dolorem earum veritatis oditseno</p>--%>
                <%--                            <p>2 hrs. ago</p>--%>
                <%--                        </div>--%>
                <%--                    </li>--%>

                <%--                    <li>--%>
                <%--                        <hr class="dropdown-divider">--%>
                <%--                    </li>--%>

                <%--                    <li class="notification-item">--%>
                <%--                        <i class="bi bi-info-circle text-primary"></i>--%>
                <%--                        <div>--%>
                <%--                            <h4>Dicta reprehenderit</h4>--%>
                <%--                            <p>Quae dolorem earum veritatis oditseno</p>--%>
                <%--                            <p>4 hrs. ago</p>--%>
                <%--                        </div>--%>
                <%--                    </li>--%>

                <%--                    <li>--%>
                <%--                        <hr class="dropdown-divider">--%>
                <%--                    </li>--%>
                <%--                    <li class="dropdown-footer">--%>
                <%--                        <a href="#">Show all notifications</a>--%>
                <%--                    </li>--%>

                <%--                </ul><!-- End Cart Dropdown Items -->--%>

            </li><!-- End Cart Nav -->

            <%--            <li class="nav-item dropdown">--%>

            <%--                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">--%>
            <%--                    <i class="bi bi-chat-left-text"></i>--%>
            <%--                    <span class="badge bg-success badge-number">3</span>--%>
            <%--                </a><!-- End Messages Icon -->--%>

            <%--                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">--%>
            <%--                    <li class="dropdown-header">--%>
            <%--                        You have 3 new messages--%>
            <%--                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <hr class="dropdown-divider">--%>
            <%--                    </li>--%>

            <%--                    <li class="message-item">--%>
            <%--                        <a href="#">--%>
            <%--                            <img src="resource/assets/img/messages-1.jpg" alt="" class="rounded-circle">--%>
            <%--                            <div>--%>
            <%--                                <h4>Maria Hudson</h4>--%>
            <%--                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>--%>
            <%--                                <p>4 hrs. ago</p>--%>
            <%--                            </div>--%>
            <%--                        </a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <hr class="dropdown-divider">--%>
            <%--                    </li>--%>

            <%--                    <li class="message-item">--%>
            <%--                        <a href="#">--%>
            <%--                            <img src="resource/assets/img/messages-2.jpg" alt="" class="rounded-circle">--%>
            <%--                            <div>--%>
            <%--                                <h4>Anna Nelson</h4>--%>
            <%--                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>--%>
            <%--                                <p>6 hrs. ago</p>--%>
            <%--                            </div>--%>
            <%--                        </a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <hr class="dropdown-divider">--%>
            <%--                    </li>--%>

            <%--                    <li class="message-item">--%>
            <%--                        <a href="#">--%>
            <%--                            <img src="resource/assets/img/messages-3.jpg" alt="" class="rounded-circle">--%>
            <%--                            <div>--%>
            <%--                                <h4>David Muldon</h4>--%>
            <%--                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>--%>
            <%--                                <p>8 hrs. ago</p>--%>
            <%--                            </div>--%>
            <%--                        </a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <hr class="dropdown-divider">--%>
            <%--                    </li>--%>

            <%--                    <li class="dropdown-footer">--%>
            <%--                        <a href="#">Show all messages</a>--%>
            <%--                    </li>--%>

            <%--                </ul><!-- End Messages Dropdown Items -->--%>

            <%--            </li><!-- End Messages Nav -->--%>

            <li class="nav-item dropdown pe-3">
                <a id="loginregister" class="nav-link nav-form align-item-center" data-bs-toggle="dropdown">
                    <span>Account</span>
                </a>
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-item d-flex align-items-center" href="#login">
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#loginModal">
                            Login
                        </button>

                        <!-- Modal -->

                    </li>
                    <li class="dropdown-item d-flex align-items-center" href="#register">
                        <span>Register</span>
                    </li>
                </ul>
                <a id="userprofile" class="nav-link nav-profile d-flex align-items-center pe-0 visually-hidden" href="#"
                   data-bs-toggle="dropdown">
                    <img src="${pageContext.servletContext.contextPath}resource/assets/img/blank-user.png" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">Account</span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>User's name</h6>
                        <%--                        <span>Web Designer</span>--%>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center"
                           href="${pageContext.request.contextPath}/userprofile">
                            <i class="bi bi-person"></i>
                            <span>My Profile</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#users-profile.html">
                            <i class="bi bi-gear"></i>
                            <span>Account Settings</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#pages-faq.html">
                            <i class="bi bi-question-circle"></i>
                            <span>Need Help?</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Sign Out</span>
                        </a>
                    </li>

                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->

        </ul>
    </nav><!-- End Icons Navigation -->

</header><!-- End Header -->


<!-- Template Main JS File -->

</body>

</html>
