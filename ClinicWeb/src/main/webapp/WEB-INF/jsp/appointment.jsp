<%-- 
    Document   : appointment
    Created on : Aug 29, 2022, 10:00:45 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="border: 1px solid lightgray; margin-top: 60px " >
    <div>
        <h3 style="font-weight:normal" class="cold-xs-12 col-md-4 m-4">Các chức năng liên quan</h3>
    </div>
    <div style="padding: 30px " class="d-md-flex flex-row container b-0" >
        <div style="text-align: center" class="cold-xs-12 col-md-3 m-4">
            <a target="_self" href="#" data-toggle="modal" data-target="#order-new"
               style="text-decoration: none; color: black; font-size: 18px" class="btn btn-link " >
                <div>
                    <i class="glyphicon glyphicon-plus-sign pb-5" style='font-size:80px'></i>
                </div>
                Đặt hẹn tại quầy</a>
            <div class="modal " id="order-new">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 style="text-align: center" class="modal-title ">ĐẶT HẸN TẠI QUẦY</h4>
                        </div>
                        <!-- Modal body -->
                        <div style="height: 300px; text-align: left" class="modal-body  ">
                            <form action="" method="post" >
                                <div class="d-flex flex-row my-4 form-group">
                                    <label class="col-md-2" for="customer-fname">Họ</label>
                                    <input class="col-md-4 text-center form-control" type="text" id="customer-fname"
                                           name="customer-fname" placeholder="Nhập họ" required  />
                                    <label class="px-4 col-md-2" for="customer-lname">Tên</label>
                                    <input class="col-md-4 text-center form-control" type="text"
                                           id="customer-lname" name="customer-lname" placeholder="Nhập tên" required/>
                                </div>
                                <div class="d-flex flex-row my-4 form-group">
                                    <label class="col-md-2" for="customer-birth">Ngày sinh</label>
                                    <input class="col-md-4 form-control" type="date" id="customer-birth" name="customer-birth"
                                           autocomplete="off" />
                                    <label class="px-4 col-md-2" for="customer-gender">Giới tính</label>
                                    <select class="col-md-4 form-control" id="customer-gender" name="customer-gender">
                                        <option id="gender-1" value="1">Nam</option>
                                        <option id="gender-2" value="2">Nữ</option>
                                        <option id="gender-3" value="3">Khác</option>
                                    </select>
                                </div>
                                <div class="d-flex flex-row my-4 form-group">
                                    <label class="col-md-2" for="customer-phone">Số điện thoại</label>
                                    <input class="col-md-10 text-center form-control" id="customer-phone" name="customer-phone" type="text" maxlength="10" placeholder="0774723xxx"
                                           />
                                </div>
                                <div class="d-flex flex-row my-4 form-group">
                                    <label class="col-md-2" for="order-date">Hẹn vào</label>
                                    <input class="col-md-10 form-control" id="order-date" type="datetime-local" name="order-date"
                                           onchange="CheckOrderDateTime(this.id, 'alert-for-order-date')" required/></br>
                                </div>
                                <span class="badge badge-danger col-md-12 ml-2" id="alert-for-order-date"></span>
                                <div  class="d-flex flex-row my-4 form-group">
                                    <label class="col-md-2" for="customer-note">Ghi chú</label>
                                    <textarea class="col-md-10 form-control" name="customer-note" id="customer-note" placeholder="Tối đa 255 ký tự"maxlength="255"></textarea>
                                </div>
                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <input type="submit" class="btn btn-info" value="Đặt hẹn"/>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Hủy bỏ</button>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <div style="text-align: center" class="cold-xs-12 col-md-4 m-4">
            <a target="_self" href="#" data-toggle="modal" data-target="#Xemlichhen"
               style="text-decoration: none; color: black; font-size: 18px" class="btn btn-link " >
                <div>
                    <i class=" fa fa-list-alt pb-5" style='font-size:80px'></i>
                </div>
                Xem Lịch Hẹn</a>
            <div class="modal " id="Xemlichhen">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 style="text-align: center" class="modal-title ">Xác nhận lịch hẹn</h4>
                        </div>
                        <!-- Modal body -->
                        <form class="form-inline col-md-12">
                            <div class="col-md-6 row">
                                <label for="customer_name">Tên khách hàng:</label>
                                <input style="margin:15px; width: 338px" name="customer_name" type="text" class="form-control" placeholder="Nhập tên khách hàng" id="customer_name">
                            </div>
                            <div class="col-md-5 row">
                                <label for="phoneNumber">Số điện thoại:</label>
                                <input style="margin:15px; width: 284px" name="phoneNumber" type="text" class="form-control" placeholder="Nhập số điện thoại" id="phoneNumber">
                            </div>
                            <div class="col-md-1">
                                <button style="margin-left:35px" onclick="searchCustomerNotSchedule(document.getElementById('phoneNumber'))" class="btn btn-primary right"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                        <div class="container col-md-12 ">
                            <div style="padding-right: 20px" class="table-wrapper-scroll-y my-custom-scrollbar">
                                <table  class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                                    <thead >
                                        <tr>
                                            <th scope="col" class="text-center">Tên</th>
                                            <th scope="col" class="text-center th-sm">Tuổi</th>
                                            <th scope="col" class="text-center">Số điện thoại</th>
                                            <th scope="col" class="text-center">Địa chỉ</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {% for p in list_wasnt_sche %}
                                        <tr class="text-center">
                                            <td >{{ p.first_name +" "+ p.last_name }}</td>
                                            <td>{{ now.year - p.birthday.year }}</td>
                                            <td>{{ p.phone_number }}</td>
                                            <td>{{ p.address_id}}</td>
                                            <td id="button-success{{p.id}}"><button type="submit" onclick="scheduleSuccess({{p.id}})" class="btn btn-info">Xác nhận lịch hẹn</button></td>
                                            <td id="button-cancel{{p.id}}"><button type="submit" onclick="scheduleError({{p.id}})" class="btn btn-danger">Hủy lịch hẹn</button></td>
                                        </tr>
                                        {% endfor %}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Thoát</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div style="text-align: center" class="cold-xs-12 col-md-4 m-4">
            <a target="_self" href="#" data-toggle="modal" data-target="#XemlichBieu"
               style="text-decoration: none; color: black; font-size: 18px" type="button" class="btn btn-link " >
                <div>
                    <i class=" far fa-clock pb-5" style='font-size:80px'></i>
                </div>

                Xem Lịch Biểu</a>
            <div class="modal " id="XemlichBieu">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 style="text-align: center" class="modal-title ">Lich Biểu</h4>
                        </div>
                        <!-- Modal body -->
                        <div class="container col-md-12 ">
                            <div style="padding-right: 20px" class="table-wrapper-scroll-y my-custom-scrollbar">
                                <table  class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                                    <thead >
                                        <tr>
                                            <th scope="col" class="text-center">STT</th>
                                            <th scope="col" class="text-center th-sm">Lịch biểu</th>
                                            <th scope="col" class="text-center">Tên Khách hàng</th>
                                            <th scope="col" class="text-center">Tuổi</th>
                                            <th scope="col" class="text-center">Số điện thoại</th>
                                            <th scope="col" class="text-center">Địa chỉ</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {% for p in sorted_sche %}
                                        <tr class="text-center">
                                            <td>*</td>
                                            <td >{{ p[0] }}</td>
                                            <td>{{ p[1].first_name +" "+ p[1].last_name }}</td>
                                            <td>{{ now.year - p[1].birthday.year }}</td>
                                            <td>{{ p[1].phone_number }}</td>
                                            <td>{{ p[1].address_id}}</td>
                                        </tr>
                                        {% endfor %}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Thoát</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container col-md-12" style="border: 1px solid lightgray; height: 600px; margin-top: 20px">
    <h3 class="pt-2" style="font-weight: normal">Danh sách chờ xác nhận</h3>

    <div class="container col-md-12 ">
        <div style="padding-right: 20px" class="table-wrapper-scroll-y my-custom-scrollbar">
            <table  class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                <thead >
                    <tr>
                        <th scope="col" class="text-center">Tên</th>
                        <th scope="col" class="text-center th-sm">Ngày sinh</th>
                        <th scope="col" class="text-center">Giới tính</th>
                        <th scope="col" class="text-center">Số điện thoại</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="c" items="${customerWaiting}">
                        <c:if test= "${c[6] == false}">
                            <tr class="text-center">
                                <td >${c[1]} ${c[2]}</td>
                                <td>${c[3]}</td>
                                <td>${c[4]}</td>
                                <td>${c[5]}</td>
                            </tr>
                        </c:if>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
