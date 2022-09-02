<%-- 
    Document   : createMedicalBill
    Created on : Aug 30, 2022, 2:54:00 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container" style="border: 1px solid lightgray; margin-top: 60px">
    <h3 class="pt-3" style="font-weight: normal">Lập phiếu khám</h3>
    <br>
    <c:url value="/createMedicalBill" var="action"/>
    <form:form action="${action}" modelAttribute="medicalBill" method="post">
        <div id="medical-session">
            <div id="patient-info">
                <div class="row d-flex">
                    <div class="form-group p-2 flex-fill d-flex" style="margin-bottom:0rem">
                        <label for="customer_name" class="p-2 flex-fill col-md-3">Tên hoặc số diện thoại khách hàng:</label>
                        <input style="" name="kw" value="" type="text" class="form-control p-2 flex-fill" placeholder="Nhập tên hoặc số điện thoại để tải thông tin bệnh nhân" required id="kw">

                    </div>
                </div>
                <div class="row d-flex">
                    <div class="p-2 d-flex col-md-4">
                        <label class="p-2">Ngày sinh</label>
                        <span class="text-success p-2" style="margin-left:1rem; margin-right:1rem">
                            <input class='' value="" id="customer-age">
                        </span>
                    </div>
                    <div class="p-2 d-flex col-md-4">
                        <label class="p-2">Giới tính</label>
                        <span  class="text-info p-2" style="margin-left:1rem; margin-right:1rem">
                            <input class='' value="" id="customer-gender">
                        </span>
                    </div>
                    <div class="p-2 d-flex col-md-4">
                        <label class="p-2">Mã phiếu</label>
                        <span  class="text-danger p-2" style="margin-left:1rem; margin-right:1rem">
                            <input class='' value="" id="medical-id">
                        </span>
                    </div>
                </div>
            </div>
            <div class="input-group mt-3 mb-3">
                <label style="width:10%">Triệu chứng:</label>
                <form:input class="form-control" type="text" id="symptom" path="symptom" placeholder="Thêm triệu chứng"/>
            </div>
            <div class="input-group mt-3 mb-3">
                <label style="width:10%">Chuẩn đoán:</label>
                <form:input class="form-control" type="text" id="diagnosticDisease" path="diagnosticDisease" placeholder="Bệnh chuẩn đoán"/>
            </div>
        </div>
    </form:form>
    <c:url value="/createMedicalBill" var="action"/>
    <form:form action="${action}" modelAttribute="medicalBillDetail" method="post">
        <div class="input-group mt-3 mb-3">
            <label style="width:10%">Toa thuốc: </label>
            <input type="text" id="medicine-name" class="form-control" placeholder="Tìm thuốc">
        </div>
        <div class='d-flex flex-row-reverse' style="">
            <button style="margin-left:1rem; width:10%" class="p-2 btn btn-info" id="regulation-submit">Thêm</button>
        </div>
        <br>
    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>
                        <button type="button" style="height:100%" class="btn btn-outline-light text-dark"><b>Mã loại thuốc</b></button>
                    </th>
                    <th>
                        <button type="button" class="btn btn-outline-light text-dark"><b>Tên thuốc</b></button>
                    </th>
                    <th> <button type="button" class="btn btn-outline-light text-dark"><b>Số lượng</b></button> </th>
                    <th> <button type="button" class="btn btn-outline-light text-dark"><b>Cách dùng</b></button> </th>
                </tr>
            </thead>
            <tbody id="medicine-area">
            <span id="span-area">
                <tr>
                    <td>{{c.id}}</td>
                    <td>{{c.name}}</td>
                    <td>
                        <div class='input-group'>
                            <input type="number" onblur="updateMedicineQuantity(this.value, {{c.id}})" id="quantity" class="form-control" min=1 value="{{c.quantity}}" >
                        </div>
                    </td>
                    <td>
                        <div class="input-group">
                            <input type="text" onblur="updateHowToUse(this.value, {{ c.id }})" id="how_to_use" value="{{c.how_to_use}}" class="form-control" placeholder="Cách dùng...">
                        </div>
                    </td>
                    <td>
                        <button class="btn btn-danger" onclick="delMedicine({{c.id}})" >Xóa</button>
                    </td>
                </tr>
            </span>
            </tbody>
        </table>
    </div>
    <div class="d-flex flex-row-reverse">
        <input style="width:15%; margin-right:2rem" type="submit" onclick="addMedicalBill()" class="btn btn-success p-2" value="Lập phiếu">
    </div>
    <br><br>
    </form:form>
</div>