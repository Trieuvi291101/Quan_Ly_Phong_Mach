<%-- 
    Document   : payment
    Created on : Aug 30, 2022, 3:38:18 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body table-responsive">
                <h4 class="m-t-0 header-title mb-4"><b>Thêm phiếu thu</b></h4>
                <c:url value="/payment" var="action" />
                <form:form class="form-horizontal" method="post" action="${action}" modelAttribute="medicalBillDetail">

                    <div class="form-group row">
                        <label class="col-lg-2 col-form-label" for="createddate">Ngày chi tiền</label>
                        <div class="col-lg-10">
                            <input class="form-control" id="createddate" type="date" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="quantity" class="col-lg-2 col-form-label">Số lượng <span class="text-danger">(bắt buộc)</span></label>
                        <div class="col-lg-10">
                            <form:input type="text" path="quantity" id="quantity" class="form-control" placeholder="Nhập vào số tiền"/>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="price" class="col-lg-2 col-form-label">Số tiền <span class="text-danger">(bắt buộc)</span></label>
                        <div class="col-lg-10">
                            <form:input type="text" path="price" id="price" class="form-control" placeholder="Nhập vào số tiền"/>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-2 col-form-label" for="howToUse">Cách dùng <span class="text-danger">(bắt buộc)</span></label>
                        <div class="col-lg-10">
                            <form:textarea path ="howToUse" class="form-control" rows="5" id="howToUse"></form:textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="sel1" class="form-label">Danh muc</label>
                        <%--<form:select path="medicineId" class="form-select">--%>
                            <%--<c:forEach items="${medicalBillDetailId}" var="c">--%>
                                <!--<option value="${c.id}">${c.medicineId}</option>-->
                            <%--</c:forEach>--%>
                        <%--</form:select>--%>
                    </div>
                    <div class="form-floating">
                        <br>
                        <input type="submit" value="Thêm chi tiêu" class="btn btn-danger" />
                    </div>
                </form:form>
            </div> 
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
