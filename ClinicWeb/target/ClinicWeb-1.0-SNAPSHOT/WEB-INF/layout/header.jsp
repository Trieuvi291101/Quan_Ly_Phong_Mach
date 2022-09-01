<%-- 
    Document   : header
    Created on : Jul 24, 2022, 1:10:04 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <ul class="navbar-nav">
        <li><a class="nav-link" href="">Giao dịch</a></li>
    </ul>
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
    <ul class="navbar-nav">
        <li><a class="nav-link" href="<c:url value="/management" />">Quản lý</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="<c:url value="/regulation" />">Quy định</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="<c:url value="/stats" />">Thống kê</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a class="nav-link" href="<c:url value="/account" />">Tài khoản</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a class="nav-link">Đăng nhập</a></li>
    </ul>
</nav>