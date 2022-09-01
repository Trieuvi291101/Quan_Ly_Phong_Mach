<%-- 
    Document   : payment
    Created on : Aug 30, 2022, 3:38:18 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="notification-modal" class="modal fade" tabindex="-1" style="margin-top: 60px">
    <div class="modal-dialog modal-confirm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title col-md-12 text-center" id="notification-header"></h4>
            </div>
            <div class="modal-body">
                <p class="text-center" id="notification-content"></p>
            </div>
            <div class="modal-footer text-wrap">
                <button class="btn btn-block" id="notification-button-print" data-dismiss="modal"
                        onclick="window.location.replace('{{ url_for('static', filename='export/receipt.pdf')
                        }}')">In hóa đơn và hoàn tất</button>
                <button class="btn btn-block" id="notification-button-dismiss" data-dismiss="modal"
                        onclick="">Hoàn tất</button>
            </div>
        </div>
    </div>
</div>

<div style="border: 1px solid lightgray; margin-top: 60px " >
    <div>
        <h3 style="font-weight:normal" class="cold-xs-12 col-md-4 m-4">Các tùy chọn liên quan</h3>
    </div>
    <div style="padding: 30px " class="d-md-flex flex-row container b-0" >
        <div style="text-align: center" class="cold-xs-12 col-md-3 m-4">
            <a target="_self" href="#" data-toggle="modal" data-target="#myModal"
               style="text-decoration: none; color: black; font-size: 18px" class="btn btn-link" >
                <i class="fab fa-paypal position-relative d-block pb-3" style='font-size:90px'>
                    <span class="badge badge-success cus-top-badge d-inline-block">
                        {{ order_checkout_num }}</span>
                </i>

                Thanh toán</a>
            <div class="modal " id="myModal">
                <div class="modal-dialog modal-sb">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 style="text-align: center" class="modal-title ">Thanh toán</h4>
                        </div>
                        <!-- Modal body -->
                        <div style="text-align: left" class="modal-body">
                            <form action="/api/payment" method="post">
                                <div class="d-flex flex-row my-4">
                                    <label class="col-md-4" >Mã phiếu khám</label>
                                    <select class="col-md-8" id="MedicalBil-id" name="medical-bill-id"/>
                                        <option value="{{ order[0] }}">Mã số {{ order[0] }}</option>
                                    </select>
                                </div>
                                <div class="d-flex flex-row my-4">
                                    <label class="col-md-4" for="payment-method">Phương thức thanh toán</label>
                                    <select class="col-md-8 px-4" id="payment-method" name="payment-method">
                                        <option id="payment-1" value="">Tiền mặt</option>
                                        <option id="payment-2" value="">Thanh toán không dùng tiền mặt</option>
                                    </select>
                                </div>
                                <div class="d-flex flex-row my-2">
                                    <p class="col-md-4 font-weight-bold">Tiền khám: </p>
                                    <span class="col-md-8 text-center" id="medical-price"></span>
                                </div>
                                <div class="d-flex flex-row my-2">
                                    <p class="col-md-4 font-weight-bold">Tiền thuốc: </p>
                                    <span class="col-md-8 text-center" id="medicine-price"></span>
                                </div>
                                <div class="d-flex flex-row my-2">
                                    <p class="col-md-4 font-weight-bold">Thuế phí (10%): </p>
                                    <span class="col-md-8 text-center" id="tax-fee"></span>
                                </div>
                                <div class="d-flex flex-row my-2">
                                    <p class="col-md-4 font-weight-bold">Tổng cộng: </p>
                                    <input name="total-price" readonly style="color:red" id="total-price"
                                           class="col-md-8 text-center font-weight-bold"/>
                                </div>
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-info" data-dismiss="modal">Hủy bỏ</button>
                            <button type="submit" id="btn-checkout" class="btn btn-success">Thanh toán</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="text-align: center" class="cold-xs-12 col-md-4 m-4">
            <a style="text-decoration: none; color: black; font-size: 18px" class="btn btn-link "
               href="{{ url_for('payment.__index__') + '?receipt-history=1' }}">
                <div>
                    <i class=" fa fa-list-alt pb-3" style='font-size:80px'></i>
                </div>
                Xem lại giao dịch</a>
        </div>
    </div>
</div>

<div class="container col-md-12" style="border: 1px solid lightgray; height: 600px; margin-top: 60px">
    <h3 class="pt-3" style="font-weight: normal">Danh sách phiếu thanh toán chờ thực thi  <span class="badge badge-success">
            {{order_checkout_num }}
        </span></h3>
    <div class="container col-md-12 ">
        <div style="padding-right: 10px" class="table-wrapper-scroll-y my-custom-scrollbar">
            <table class="table table-striped table-bordered table-sm " cellspacing="0" >
                <thead >
                    <tr>
                        <th scope="col" class="text-center">Mã phiếu khám</th>
                        <th scope="col" class="text-center th-sm">Họ tên</th>
                        <th scope="col" class="text-center">Năm sinh</th>
                        <th scope="col" class="text-center">Tổng tiền</th>
                    </tr>
                </thead>
                <tbody>
                    {% for order in checkout_orders %}
                    <tr class="text-center">
                        <td >{{ order[0] }}</td>
                        <td>{{ order[1] }}</td>
                        <td>{{ order[2] }}</td>
                        <td>{{ order[3][0] }} VNĐ</td>
                    </tr>
                    {% endfor %}
                </tbody>
            </table>

        </div>
    </div>
</div>
