<%-- 
    Document   : management
    Created on : Aug 30, 2022, 4:10:04 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container col-md-12" style="border: 1px solid lightgray; margin-top: 60px">
    <div>
        <h3 class="cold-xs-12 col-md-4 m-4">Quản lý kho thuốc</h3>
    </div>
    <form class="form-inline col-md-12">
        <div class="col-md-5 row">
            <h5 style="font-weight:normal" >Nhập ID hoặc tên thuốc:</h5>
            <input style="margin:15px" name="kw" type="text" class="form-control" placeholder="Nhập ID hoặc tên thuốc để tìm kiếm" required id="kw">
        </div>
        <div class="col-md-2">
            <button style="margin:15px" type="submit" class="btn btn-primary">Tìm kiếm</button>
        </div>
    </form>
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover model-list">
            <thead>
                <tr>
                    <th class="column-header col-name">
                        <a title="Sort by Tên">Tên</a>
                    </th>
                    <th class="column-header col-quantity">
                        <a title="Sort by Số lượng">Số lượng</a>
                    </th>
                    <th class="column-header col-price">
                        <a title="Sort by Đơn giá">Đơn giá</a>
                    </th>
                    <th class="column-header col-out_of_date">
                        <a title="Sort by Ngày hết hạn">Ngày hết hạn</a>
                    </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${medicine}" var="m">
                <tr>
                    <td>${m.name}</td>
                    <td>${m.quantity}</td>
                    <td>${m.price}</td>
                    <td>${m.outOfDate}</td>
                    <td><a href="<c:url value="/management/remove/${m.id}" />"><button class="btn btn-danger">Xoá</button></a></td>
                </tr>
                </c:forEach>
            </tbody></table>
    </div>
    <div>
        <h3 class="cold-xs-12 col-md-4 m-4">Quản lý nhân viên và khách hàng</h3>
    </div>
    <form class="form-inline col-md-12">
        <div class="col-md-5 row">
            <h5 style="font-weight:normal" >Nhập tên hoặc số điện thoại:</h5>
            <input style="margin:15px" name="kw1" type="text" class="form-control" placeholder="Nhập tên hoặc số điện thoại để tìm kiếm" required id="kw1">
        </div>
        <div class="col-md-2">
            <button style="margin:15px" type="submit" class="btn btn-primary">Tìm kiếm</button>
        </div>
    </form>
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover model-list">
            <thead>
                <tr>
                    <th class="column-header col-name">
                        <a title="Sort by Tên">Họ tên</a>
                    </th>
                    <th class="column-header col-quantity">
                        <a title="Sort by Số lượng">Ngày sinh</a>
                    </th>
                    <th class="column-header col-price">
                        <a title="Sort by Đơn giá">Số điện thoại</a>
                    </th>
                    <th class="column-header col-out_of_date">
                        <a title="Sort by Ngày hết hạn">Giới tính</a>
                    </th>
                    <th class="column-header col-out_of_date">
                        <a title="Sort by Ngày hết hạn">Chức vụ</a>
                    </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="u">
                <tr>
                    <td>${u.lastName} ${u.firstName}</td>
                    <td>${u.birthday}</td>
                    <td>${u.phoneNumber}</td>
                    <td>${u.genderId}</td>
                    <td>${u.userRole}</td>
                    <td><a href="<c:url value="/management/removes/${u.id}" />"><button class="btn btn-danger">Xoá</button></a></td>
                </tr>
                </c:forEach>
            </tbody></table>
    </div>
    
</div>

