<%-- 
    Document   : account
    Created on : Aug 28, 2022, 10:43:18 AM
    Author     : Star
--%>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="resources/css/admin-style.css" rel="stylesheet">
<div class="container mb-2 pb-5" style="border: 1px solid lightgray; margin-top: 60px">
    <h3 class="pt-3" style="font-weight: normal">Thông tin tài khoản</h3>
    <div class="d-md-flex flex-row py-4">
        <div class="col-xs-12 col-md-7">
            <div class="px-4 pt-3 text-dark" style="border: 1px solid lightgray; padding: 30px">
                <c:if test="${currentUser != null}">
                    <p class="d-inline font-weight-bold" style="padding: 20px"> Mã số nhân viên: 
                        <span class="font-weight-normal">${currentUser.id}</span></p>
                    <br><p class="d-inline font-weight-bold" style="padding: 20px">Chức danh: 
                        <span class="font-weight-normal">${currentUser.userRole}</span></p>
                    <br><p class="d-inline font-weight-bold" style="padding: 20px">Họ tên: 
                        <span class="font-weight-normal">${currentUser.lastName} ${currentUser.firstName}</span></p>
                    <br><p class="d-inline font-weight-bold" style="padding: 20px">Số điện thoại: 
                        <span class="font-weight-normal">${currentUser.phoneNumber}</span></p>
                    <br><p class="d-inline font-weight-bold" style="padding: 20px">Giới tính: 
                        <span class="font-weight-normal">${currentUser.genderId}</span></p></br> 
                </c:if>
            </div>
        </div>
        <div class="col-xs-12 col-md-5">
            <div class="d-flex justify-content-center" >
                <c:if test="${currentUser.avatar != null}">
                <img style="display: block; width: 250px; height: 250px" src="${currentUser.avatar}">
                </c:if>
                <c:if test="${currentUser.avatar == null}">
                    <i class="fa fa-user" aria-hidden = "true" style="border: 1px solid lightgray; padding: 100px">AVATAR</i>
                <!--<img style="display: block; width: 250px; height: 250px" src="${currentUser.avatar}">-->
                </c:if>
            </div></br>
            <form method="post" enctype="multipart/form-data" action="{{ url_for('submit_change') }}">
                <label class="d-flex justify-content-center aTag-not-have-href">
                    <a>
                        <span class="link-info">Thay đổi ảnh</span>
                        <input id="image-choose" type="file" style="display: none" name="avatar">
                        <input type="submit" style="display: none" id="submit-avatar"/>
                    </a>
                </label>
            </form>
        </div>
    </div>
</div>
<div class="container" style="border: 1px solid lightgray">
    <h3 class="pt-3" style="font-weight: normal">Các chức năng liên quan</h3>
    <div class="d-md-flex flex-row pb-3">
        <div class="px-4 pt-2 col-xs-6 col-xs-3" >
            <a  class="link-danger" style="display: inline-block; text-align: center" >
                <img style="display: block; width: 250px; height: 250px" class="d-block" src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661674523/phongmachtunhanViVi/key_sxfjqv.png"/>
                <span>Đổi mật khẩu</span>
            </a>
        </div>
    </div>
</div>