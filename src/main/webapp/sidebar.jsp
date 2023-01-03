<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 12/27/2022
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

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
            <a class="nav-link " href="${pageContext.request.contextPath}/view-product.jsp">
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
        <li class="nav-item">
            <a class="nav-link collapsed">
                <i class="bi bi-plus"></i>
                <span>
                <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#addnew">
                    Add new product
                </button></span>
            </a>
        </li><!-- End Profile Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed">
                <span><button class="btn" type="button" data-bs-toggle="collapse"
                              data-bs-target="#topselling" aria-expanded="false" aria-controls="topselling">
                    Show TOP Selling
                </button></span>
            </a>
        </li><!-- Show top selling -->

        <li class="nav-item">
            <a class="nav-link collapsed">
                <span><button class="btn" type="button" data-bs-toggle="collapse"
                              data-bs-target="#adminview" aria-expanded="false" aria-controls="adminview">
                    Admin View Product
                </button></span>
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
