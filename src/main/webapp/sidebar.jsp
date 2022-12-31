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
