<%-- 
    Document   : login
    Created on : Sep 1, 2022, 3:19:06 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div style="margin-top: 60px">
    <h1 class="text-center text-danger">Đăng nhập</h1>
    <c:if test="${param.error != null}">
        <div class="alert alert-danger">
            Đã xảy ra lỗi! Vui lòng thử lại sau!!!
        </div>
    </c:if>
    <c:if test="${param.accessDenied != null}">
        <div class="alert alert-danger">
            Bạn không có quyền truy cập!!!
        </div>
    </c:if>
    <c:url value="/login" var="action" />
    <form method="post" action="${action}">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" class="form-control"/>
        </div>
        <div class="form-group text-center">
            <input type="submit" value="DANG NHAP" class="btn btn-danger"/>
        </div>
    </form>
</div>