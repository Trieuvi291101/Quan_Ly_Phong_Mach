<%-- 
    Document   : regulation
    Created on : Aug 27, 2022, 3:09:38 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="border: 1px solid lightgray; padding: 10px; margin-top: 60px;">
    <h3 class="p-2">Thông tin quy định hiện tại</h3>
    <div class="row d-flex justify-content-center pt-4" style="padding: 100px; border: 1px solid lightgray; margin-top: 20px;">
        <c:forEach items="${regulation}" var="r">
            <div class="row d-flex justify-content-left py-5" style="border: 1px solid lightgray; margin-top: 20px;">
                <h5 class="pr-5" style="display: inline-block">Chi phí khám bệnh: ${r.examinationPrice} VNĐ</h5>
            </div>
            <div class="row d-flex justify-content-left py-5" style="border: 1px solid lightgray; margin-top: 20px;">
                <h5 class="pr-5" style="display: inline-block">Số lượng khách tối đa mỗi ngày: ${r.customerQuantity} bệnh nhân</h5>
            </div>
        </c:forEach>
    </div>
