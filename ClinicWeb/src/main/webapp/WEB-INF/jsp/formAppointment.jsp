<%-- 
    Document   : formAppointment
    Created on : Sep 2, 2022, 1:45:10 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="border: 1px solid lightgray; margin-top: 60px; padding: 30px " >
    <div class="modal-header">
        <h5 class="modal-title cus-header-modal">ĐẶT HẸN TẠI QUẦY</h5>
    </div>
    <c:if test="${errMsg != null}">
        <div class="alert alert-danger">
            ${errMsg}
        </div>
    </c:if>
    <c:url value="/formAppointment" var="action"/>
    <form:form action="${action}" modelAttribute="customerSche" method="post">
        <div class="d-flex flex-row my-3" style="padding: 30px">
            <label class="col-md-3" for="customerId">Tên khách hàng:</label>
            <form:select path="CustomerId" class="form-select">
                <c:forEach items="${customerAttr}" var="c">
                    <option value="${c[0]}">${c[1]} ${c[2]}</option>
                </c:forEach>
            </form:select> 
        </div>
        <div class="d-flex flex-row my-3" style="padding: 30px">
            <label class="col-md-3" for="customerId">Số điện thoại khách hàng:</label>
            <form:select path="CustomerId" class="form-select">
                <c:forEach items="${customerAttr}" var="c">
                    <option value="${c[0]}">${c[4]}</option>
                </c:forEach>
            </form:select> 
        </div>
        <div class="d-flex flex-row my-3">
            <label class="col-md-3" for="schedule">Hẹn vào:</label>
            <form:input class="col-md-9" type="date" id="schedule" path="schedule" />
        </div>
        <div class="d-flex flex-row my-3">
            <label class="col-md-3" for="formedSche">Đặt hẹn:</label>
            <form:input class="col-md-9" type="text" value="true" id="formedSche" path="formedSche" />
        </div>
        <span class="badge badge-danger col-md-12 ml-2" id="alert-for-order-date"></span>

        <div class="modal-footer">
            <input type="submit" value="Đặt hẹn" class="btn btn-danger" />
        </div>
    </form:form>
</div>
