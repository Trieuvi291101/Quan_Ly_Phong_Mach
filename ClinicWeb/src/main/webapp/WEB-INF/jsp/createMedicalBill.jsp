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
                        <label for="customer_name" class="p-2 flex-fill col-md-3">Tên khách hàng:</label>
                    </div>
                </div>
                <div class="row d-flex">
                    <div class="p-2 d-flex col-md-4">
                        <label class="p-2">Mã phiếu:</label>
                        <span  class="text-danger p-2" style="margin-left:1rem; margin-right:1rem">
                            <form:input class="form-control" id="customerSche" path="customerSche"/>
                        </span>
                    </div>
                </div>
            </div>
            <div class="input-group mt-3 mb-3">
                <label style="width:10%">Triệu chứng:</label>
                <form:input class="form-control" id="symptom" path="symptom" placeholder="Thêm triệu chứng"/>
            </div>
            <div class="input-group mt-3 mb-3">
                <label style="width:10%">Chuẩn đoán:</label>
                <form:input class="form-control" id="diagnosticDisease" path="diagnosticDisease" placeholder="Bệnh chuẩn đoán"/>
            </div>
            <div class='d-flex flex-row-reverse' style="padding: 20px">
                <input type="submit" value="Thêm phiếu" class="btn btn-danger" />
            </div>
        </div>

    </form:form>
</div>
