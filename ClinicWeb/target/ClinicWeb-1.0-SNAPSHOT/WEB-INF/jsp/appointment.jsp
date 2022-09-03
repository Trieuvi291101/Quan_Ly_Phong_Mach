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
        <h3 style="font-weight:normal" class="cold-xs-12 col-md-3 m-4">Các chức năng liên quan</h3>
    </div>
    <div style="padding: 30px " class="d-md-flex flex-row container b-0" >
        <div style="text-align: center" class="cold-xs-12 col-md-3 m-4">
            <a target="_self"  href="<c:url value="/formAppointment" />" data-toggle="modal" data-target="#order-new"
               style="text-decoration: none; color: black; font-size: 18px; padding: 20px" class="btn btn-link bg-secondary text-light" >
                <div>
                    <i class="glyphicon glyphicon-plus-sign pb-5" style='font-size:80px'></i>
                </div>
                Đặt hẹn tại quầy</a>
        </div>
        <div style="text-align: center" class="cold-xs-12 col-md-4 m-4">
            <a target="_self" href="<c:url value="/customerSche" />" data-toggle="modal" data-target="#Xemlichhen"
               style="text-decoration: none; color: black; font-size: 18px; padding: 20px" class="btn btn-link bg-secondary text-light" >
                <div>
                    <i class=" fa fa-list-alt pb-5" style='font-size:80px'></i>
                </div>
                Xem Lịch Hẹn</a>
        </div>
        <div style="text-align: center" class="cold-xs-12 col-md-4 m-4">
            <a target="_self" href="<c:url value="/payment" />" data-toggle="modal" data-target="#Xemlichhen"
               style="text-decoration: none; color: black; font-size: 18px; padding: 20px" class="btn btn-link bg-secondary text-light" >
                <div>
                    <i class=" fa fa-list-alt pb-5" style='font-size:80px'></i>
                </div>
                Thanh toán</a>
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
