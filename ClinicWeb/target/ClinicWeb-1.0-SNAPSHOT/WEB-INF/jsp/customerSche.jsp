<%-- 
    Document   : customerSche
    Created on : Aug 27, 2022, 1:15:06 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="resources/css/admin-style.css" rel="stylesheet">
<div style="margin-top: 60px;">
    <div class="container mb-2 pb-5" style="border: 1px solid lightgray">
        <h3 class="pt-3" style="font-weight: normal">Thông tin tổng quan</h3>
        <div class="d-md-flex flex-row py-4">
            <div class="col-xs-12 col-md-12 text-center">
                <fieldset style="border: 1px solid black">
                    <legend><h4 class="p-2" style="font-weight: normal; display: inline-block;">Lịch hẹn tiếp theo</h4></legend>
                    <c:forEach var="c" items="${customerFormed}">
                        <c:if test= "${c[3] == false}">
                            <div style="border: 1px solid black; margin-left: 100px; margin-top: 30px; padding: 20px" class="col-xs-12 col-md-7">
                                <p class="px-4">Số thứ tự: <span>${c[0]}</span> </p>
                                <p class="px-4">Họ tên: <span>${c[1]} ${c[2]}</span></p>
                                <p class="px-4">Số điện thoại: <span>${c[4]}</span></p>
                            </div>
                        </c:if>
                    </c:forEach>
                    <br>
                </fieldset>
            </div>
            <div class="chart container col-xs-12 col-md-5" style="position: relative">
                <canvas id="PatientChart" class=""></canvas>
            </div>
        </div>
    </div>
    <div class="container" style="border: 1px solid lightgray">
        <h3 class="pt-3" style="font-weight: normal">Tra cứu khách hàng</h3>
        <form class="form-inline col-md-12">
            <div class="col-md-5 row">
                <label for="phoneNumber">Số điện thoại:</label>
                <input style="margin:15px" name="kw" type="text" class="form-control" placeholder="Nhap ten hoac so dien thoai" required id="kw">
            </div>
            <div class="col-md-2">
                <button style="margin:15px" type="submit" class="btn btn-primary">Tìm kiếm</button>
            </div>
        </form>
        <div class="container table-wrapper-scroll-y my-custom-scrollbar">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>
                            <button type="button" style="height:100%" class="btn btn-outline-light text-dark"><b>Tên</b></button>
                        </th>
                        <th>
                            <button type="button" class="btn btn-outline-light text-dark"><b>Ngày sinh</b></button>
                        </th>
                        <th> <button type="button" class="btn btn-outline-light text-dark"><b>Ngày tháng</b></button> </th>
                        <th> <button type="button" class="btn btn-outline-light text-dark"><b>Nội dung khám</b></button> </th>
                    </tr>
                </thead>
                <tbody data-spy="scroll" data-target="#myScrollspy" data-offset="1">
                    <c:forEach items="${customer}" var="c">
                        <tr>
                            <td>${c[1]} ${c[2]}</td>
                            <td>${c[3]}</td>
                            <td>${c[4]}</td>
                            <td>${c[5]}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>
