<%-- 
    Document   : header
    Created on : Jul 24, 2022, 1:10:04 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark  fixed-top justify-content-md-center">
    <a class="navbar-brand">VIVI ClinicWeb Online</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="#home">Trang chủ</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="#introduce">Giới thiệu</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="#info">Liên hệ</a></li>
    </ul>
    <sec:authorize access="isAuthenticated()">
        <ul class="navbar-nav">
            <li><a class="nav-link" href="">Giao dịch</a></li>
        </ul>
    </sec:authorize>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="<c:url value="/appointment" />">Đặt hẹn</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="<c:url value="/customerSche" />">Lịch khám</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="<c:url value="/createMedicalBill" />">Lập phiếu khám</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="<c:url value="/payment" />">Thanh toán</a></li>
    </ul>
    <sec:authorize access="hasRole('DOCTOR')">
        <ul class="navbar-nav">
            <li><a class="nav-link" href="<c:url value="/management" />">Quản lý</a></li>
        </ul>
    </sec:authorize>
    <sec:authorize access="hasRole('SUPERADMIN')">
        <ul class="navbar-nav">
            <li><a class="nav-link" href="<c:url value="/regulation" />">Quy định</a></li>
        </ul>
    </sec:authorize>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="<c:url value="/stats" />">Thống kê</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="<c:url value="/account" />">Tài khoản</a></li>
    </ul>
    <c:if test="${pageContext.request.userPrincipal.name == null}" >
        <ul class="navbar-nav">
            <li><a class="nav-link text-danger" href="<c:url value="/login" />">Đăng nhập</a></li>
        </ul>
        <ul class="navbar-nav">
            <li><a class="nav-link text-danger" href="<c:url value="/register" />">Đăng ký</a></li>
        </ul>
    </c:if>
    <c:if test="${pageContext.request.userPrincipal.name != null}" >
        <ul class="navbar-nav">
            <li><a class="nav-link text-success" href="<c:url value="/" />">${pageContext.request.userPrincipal.name}</a></li>
        </ul>
        <ul class="navbar-nav">
            <li><a class="nav-link text-success" href="<c:url value="/logout" />">Đăng xuất</a></li>
        </ul>
    </c:if>
</nav>