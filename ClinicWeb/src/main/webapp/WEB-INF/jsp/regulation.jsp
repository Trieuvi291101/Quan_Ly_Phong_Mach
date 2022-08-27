<%-- 
    Document   : regulation
    Created on : Aug 27, 2022, 3:09:38 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="margin-top: 60px;">
    <div style="border: 1px solid lightgray; padding: 50px;">
        <h3 class="p-2">Thông tin quy định hiện tại</h3>
        <div class="row d-flex justify-content-center pt-4" style="padding: 200px;  margin-top: 75px">
            <div>
                <form class="container" action="" method="get">
                    <div class="row d-flex justify-content-left">
                        <h5 class="pr-5" style="display: inline-block">Chi phí khám bệnh</h5>
                        <input id="edit-area" type="text" name="new_fee" value="${r.examination_price}"
                               style='text-align: right !important;' disabled/>
                        <span class="px-2">VNĐ</span>
                    </div>
                    <div class="row d-flex justify-content-left py-5">
                        <h5 class="pr-5" style="display: inline-block">Số lượng khách tối đa mỗi ngày</h5>
                        <input id="edit-area" type="text" name="new_fee" value="${r.customer_quantity}"
                               style='text-align: right !important;' disabled/>
                        </div>
                </form>
            </div>
        </div>

    </div>