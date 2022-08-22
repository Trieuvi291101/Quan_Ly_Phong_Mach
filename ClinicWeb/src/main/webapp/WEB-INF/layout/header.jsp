<%-- 
    Document   : header
    Created on : Jul 24, 2022, 1:10:04 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark  fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="javascript:void(0)">ClinicWeb Online</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0)"> Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0)"> Giới thiệu</a>
                </li>
                <li class="nav-item">
                    <div class="dropdown">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
                      Dịch vụ
                    </button>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#">Link 1</a></li>
                      <li><a class="dropdown-item" href="#">Link 2</a></li>
                      <li><a class="dropdown-item" href="#">Link 3</a></li>
                    </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0)"> Bác sĩ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0)"> Liên hệ</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="javascript:void(0)"> Đăng nhập</a>
                </li>
            </ul>
        </div>
    </div>
</nav>