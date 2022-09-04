<%-- 
    Document   : medicalBill
    Created on : Sep 4, 2022, 3:25:40 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container" style="border: 1px solid lightgray; margin-top: 60px">
    <h3 class="pt-3" style="font-weight: normal">Lập phiếu khám</h3>
    <br>
    <c:url value="/medicalBill" var="action"/>
    <form:form action="${action}" modelAttribute="medicalBill" method="post">
        <div id="medical-session">
            <div id="patient-info">
                <div class="row d-flex">
                    <div class="p-2 d-flex col-md-4">
                        <label class="p-2">Mã phiếu dặt hẹn:</label>
                        <span  class="text-danger p-2" style="margin-left:1rem; margin-right:1rem">
                            <form:input class="form-control" type="number" id="customerSche" path="customerSche" placeholder="Mã phiếu"/>
                        </span>
                    </div>
                    <div class="p-2 d-flex col-md-4">
                        <label class="p-2">ID bác sĩ:</label>
                        <span  class="text-danger p-2" style="margin-left:1rem; margin-right:1rem">
                            <form:input class="form-control" type="number" id="userId" path="userId" placeholder="3"/>
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
            <div class='d-flex flex-row-reverse' style="padding: 20px">
                <input type="submit" value="Thêm phiếu" class="btn btn-danger" />
            </div>
        </div>

    </form:form>
</div>