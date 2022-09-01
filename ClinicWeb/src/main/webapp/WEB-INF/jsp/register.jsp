<%-- 
    Document   : register
    Created on : Sep 1, 2022, 8:40:46 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div style="margin-top: 60px">
    <h1 class="text-center text-danger">Đăng Ký</h1>
    <c:if test="${errMsg != null}">
        <div class="alert alert-danger">
            ${errMsg}
        </div>
    </c:if>
    <c:url value="/register" var="action"/>
    <form:form method="post" action="${action}" modelAttribute="user">
        <div class="form-group">
            <label for="firstName">Firstname:</label>
            <form:input type="text" id="firstName" path="firstName" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="lastName">Lastname:</label>
            <form:input type="text" id="lastName" path="lastName" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="phoneNumber">Phone number:</label>
            <form:input type="text" id="phoneNumber" path="phoneNumber" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="genderId">Gender:</label>
            <form:input type="text" id="genderId" path="genderId" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="username">Username:</label>
            <form:input type="text" id="username" path="username" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <form:input type="password" id="password" path="password" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="confirm-password">Confirm Password:</label>
            <form:input type="password" id="confirm-password" path="confirmPassword" class="form-control"/>
        </div>
        <div class="form-group text-center">
            <input type="submit" value="ĐĂNG KÝ" class="btn btn-danger"/>
        </div>
    </form:form>
</div>