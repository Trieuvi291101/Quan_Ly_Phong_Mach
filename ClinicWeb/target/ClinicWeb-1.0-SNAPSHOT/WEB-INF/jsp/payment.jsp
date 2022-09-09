<%-- 
    Document   : payment
    Created on : Aug 30, 2022, 3:38:18 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="row" style="margin-top: 60px">
    <div class="col-12">
        <div class="card">
            <div class="card-body table-responsive">
                <h4 class="m-t-0 header-title mb-4"><b>Thêm phiếu thu</b></h4>
                <c:url value="/payment" var="action" />
                <form:form class="form-horizontal" method="post" action="${action}" modelAttribute="medicalBillDetailInfo">
                    <div class="d-flex flex-row my-3">
                        <label class="col-md-3" for="schedule">Ngày tạo:</label>
                        <form:input class="col-md-9" type="date" id="createdDate" path="createdDate" />
                   </div>
<!--                     <div class="input-group mt-3 mb-3">
                        <label style="width:10%">Mã khách hàng: </label>
                        <form:input class="form-control" type="text" id="customerId" path="customerId" placeholder="Mã khách hàng"/>
                    </div>-->
                    <div class="input-group mt-3 mb-3">
                        <label style="width:10%">Mã lập phiếu: </label>
                        <form:input class="form-control" type="text" id="medicalBillId" path="medicalBillId" placeholder="Mã lập phiếu"/>
                    </div>

                    <div class="input-group mt-3 mb-3">
                        <label style="width:10%">Mã thuốc: </label>
                        <form:input class="form-control" type="text" id="medicineId" path="medicineId" placeholder="Mã thuốc"/>
                    </div>
                    <div class="input-group mt-3 mb-3">
                        <label style="width:10%">Số lượng: </label>
                        <form:input class="form-control" type="number" id="quantity" path="quantity" placeholder="Số lượng"/>
                    </div>
                    <div class="input-group mt-3 mb-3">
                        <label style="width:10%">Giá: </label>
                        <form:input class="form-control" type="text" id="price" path="price" placeholder="Giá"/>
                    </div>
                    <div class="form-group row">
                        <label class="col-lg-2 col-form-label" >Cách dùng:</label>
                        <div class="col-lg-10">
                            <form:textarea path ="howToUse" class="form-control" rows="5" id="howToUse" placeholder="Cách dùng"/>
                        </div>
                    </div>
                    <div class="input-group mt-3 mb-3">
                        <label style="width:10%">Quy định: </label>
                        <form:input class="form-control" type="text" id="regulationId " path="regulationId" placeholder="1"/>
                    </div>
                    <div class='d-flex flex-row-reverse' style="padding: 20px">
                        <input type="submit" value="Thanh toán" class="btn btn-danger" />
                    </div>
                    <br>
                </form:form>
            </div> 
        </div>
    </div>
</div>

