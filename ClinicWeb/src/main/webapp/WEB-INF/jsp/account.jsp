<%-- 
    Document   : account
    Created on : Aug 28, 2022, 10:43:18 AM
    Author     : Star
--%>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="resources/css/admin-style.css" rel="stylesheet">
<div class="container mb-2 pb-5" style="border: 1px solid lightgray; margin-top: 60px">
    <h3 class="pt-3" style="font-weight: normal">Thông tin tài khoản</h3>
    <div class="d-md-flex flex-row py-4">
        <div class="col-xs-12 col-md-7">
            <div class="px-4 pt-3">
                <p class="d-inline font-weight-bold" style="text-algin: center"> Mã số nhân viên: 
                    <span class="font-weight-normal">${userId.id}</span></p>
                <br><p class="d-inline font-weight-bold">Chức danh: 
                    <span class="font-weight-normal">${userId.userRole}</span></p>
                <br><p class="d-inline font-weight-bold">Họ tên: 
                    <span class="font-weight-normal">${userId.lastName} ${userId.firstName}</span></p>
                <br><p class="d-inline font-weight-bold">Ngày sinh: 
                    <span id="user_age" class="font-weight-normal">${userId.birthday}</span></p>
                <br><p class="d-inline font-weight-bold">Số điện thoại: 
                    <span class="font-weight-normal">${userId.phoneNumber}</span></p>
                <br><p class="d-inline font-weight-bold">Giới tính: 
                    <span class="font-weight-normal">${userId.genderId}</span></p></br>    
                <a class="'d-inline" href="#" class="link-info" data-toggle="modal">
                   data-target="#exampleModal">Thay đổi thông tin</a>
                <!-- Model -->
                <form method="POST" action="/admin/submit-change">
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Thay đổi thông tin</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="d-row d-md-flex py-2">
                                        <label class="col-md-4" style='text-align: left !important' for="id">Mã số nhân viên</label>
                                        <input class="col-md-8 w-100" type="text" style='text-align: center !important;' name="id"
                                               value="{{ user_id }}" disabled/>
                                    </div>
                                    <div class="d-row d-md-flex py-2">
                                        <label class="col-md-4" style='text-align: left !important' for="first_name">Tên</label>
                                        <input class="col-md-8 w-100" type="text" style='text-align: center !important;' type="text"
                                               id="first_name" name="first_name" value="{{ user_first_name }}"/>
                                    </div>
                                    <div class="d-row d-md-flex py-2">
                                        <label class="col-md-4" style='text-align: left !important' for="last_name">Họ và tên lót</label>
                                        <input type="text"  style='text-align: center !important;' name="last_name"
                                               value="{{ user_last_name }}"/>
                                    </div>
                                    <div class="d-row d-md-flex py-2">
                                        <label class="col-md-4" style='text-align: left !important' for="birthday">Ngày sinh</label>
                                        <input class="col-md-8 w-100" type="date" style='text-align: center !important;' name="birthday"
                                               value="{{ user_birthday }}"/>
                                    </div>
                                    <div class="d-row d-md-flex py-2">
                                        <label class="col-md-4" style='text-align: left !important' for="phone">Số điện thoại</label>
                                        <input class="col-md-8 w-100" type="text" style='text-align: center !important;' name="phone"
                                               value="{{ user_phone }}"/>
                                    </div>
                                    <div class="d-row d-md-flex py-2">
                                        <label class="col-md-4" style='text-align: left !important' for="gender">Giới tính</label>
                                        <div>
                                            <input id="gender-1" type="radio" name="gender" value="1"/>
                                            <label for="gender-1">Nam</label>
                                            <input id="gender-2" type="radio" name="gender" value="2"/>
                                            <label for="gender-2">Nữ</label>
                                            <input id="gender-3" type="radio" name="gender" value="3"/>
                                            <label for="gender-3">Khác</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                    <button type="submit" class="btn btn-primary">Lưu lại</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-xs-12 col-md-5">
            <div class="d-flex justify-content-center" >
                <img style="display: block; width: 250px; height: 250px" src="{{ user_avatar }}" alt="">
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
        <div class="px-4 pt-2 col-xs-6 col-xs-3">
            <a href="{{ url_for('accountset.__index__') + '?password_model_change=1' }}" class="link-danger"
               style="display: inline-block; text-align: center">
                <img class="d-block" width="200vw" src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661674523/phongmachtunhanViVi/key_sxfjqv.png" alt="change_pass"/>
                <span>Đổi mật khẩu</span>
            </a>
        </div>
    </div>
</div>