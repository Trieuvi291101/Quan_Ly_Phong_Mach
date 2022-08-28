<%-- 
    Document   : customerSche
    Created on : Aug 27, 2022, 1:15:06 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="margin-top: 60px;">
    <script>
        //Thống kê bệnh nhân
        let labels_patient = ['Đã khám', 'Chưa khám']
                let data_patient = []
        { % if patient_stats % }
        data_patient.push({{ patient_stats[1] }})
                data_patient.push({{ patient_stats[2] }})
        { % endif % }
        window.onload = function() {
        const ctxPatient = document.getElementById('PatientChart').getContext('2d');
        loadChart(ctxPatient, labels_patient, data_patient, 'pie', 'Số bệnh nhân hôm nay');
        }
    </script>
    <div class="container mb-2 pb-5" style="border: 1px solid lightgray">
        <h3 class="pt-3" style="font-weight: normal">Thông tin tổng quan</h3>
        <div class="d-md-flex flex-row py-4">
            <div class="col-xs-12 col-md-7">
                <fieldset style="border: 1px solid black">
                    <legend><h4 class="p-2" style="font-weight: normal; display: inline-block;">Lịch hẹn tiếp theo</h4></legend>
                    <div>
                    <c:forEach var="c" items="${customerSche}">
                        <p class="px-4">Số thứ tự: <span>${c.id}</span> </p>
                        <p class="px-4">Họ tên: <span></span></p>
                        <p class="px-4">Số điện thoại: <span>${c.schedule}</span></p>
                    </c:forEach>
                    </div>
                    <div class="text-center">
                        <em>Không có lịch hẹn tiếp theo!</em>
                    </div>
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
                <label for="customer_name">Tên khách hàng:</label>
                <input style="margin:15px" name="customer_name" type="text" class="form-control" placeholder="Nhap ten khach hang" id="customer_name">
            </div>
            <div class="col-md-5 row">
                <label for="phoneNumber">Số điện thoại:</label>
                <input style="margin:15px" name="phoneNumber" type="text" class="form-control" placeholder="Nhap so dien thoai" required id="phoneNumber">
            </div>
            <div class="col-md-2">
                <button style="margin:15px" type="submit" class="btn btn-primary">Tìm kiếm</button>
            </div>
        </form>
        <div class="container">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>
                            <button type="button" style="height:100%" class="btn btn-outline-light text-dark"><b>Tên</b></button>
                        </th>
                        <th>
                            <button type="button" class="btn btn-outline-light text-dark"><b>Tuổi</b></button>
                        </th>
                        <th> <button type="button" class="btn btn-outline-light text-dark"><b>Ngày tháng</b></button> </th>
                        <th> <button type="button" class="btn btn-outline-light text-dark"><b>Nội dung khám</b></button> </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>{{ s[3]+" "+s[2]}}</td>
                        <td>{{ now.year - s[4] }}</td>
                        <td>{{ s[1] }}</td>
                        <td>
                            {% if s[0].diagnostic_disease %}{{s[0].diagnostic_disease}}{% else %} {% endif %}
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>


</div>
