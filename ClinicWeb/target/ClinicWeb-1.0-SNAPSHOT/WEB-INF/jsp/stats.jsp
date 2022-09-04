<%-- 
    Document   : general
    Created on : Aug 27, 2022, 8:18:05 PM
    Author     : Star
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="d-md-flex flex-row mb-2" style="border: 1px solid lightgray; margin-top: 60px">
    <div class="container mb-2 pb-6">
        <h3 class="p-2" style="font-weight: normal">Thống kê doanh thu</h3>
        <div class="container table-wrapper-scroll-y my-custom-scrollbar">
            <table class="table table-striped" >
                <thead>
                    <tr>
                        <th>Tháng</th>
                        <th>Doanh Thu</th>
                    </tr>
                </thead>
                <tbody data-spy="scroll" data-target="#myScrollspy" data-offset="1">
                    <c:forEach items="${stats}" var="c">
                        <tr>
                            <td>${c[0]}/${c[1]}</td>
                            <td>${c[2]}VND</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-md-6 col-xs-12">
            <canvas id="myTotalMonthPriceChart"></canvas>
        </div>
    </div>
</div>
<div class="d-md-flex flex-row mb-2" style="border: 1px solid lightgray; margin-top: 60px">
    <div class="container mb-2 pb-6" >
        <h3 class="p-2" style="font-weight: normal">Tần suất khám</h3>
        <div class="container table-wrapper-scroll-y my-custom-scrollbar">
            <table class="table table-striped" >
                <thead>
                    <tr>
                        <th>Ngày</th>
                        <th>Số khách đã khám</th>
                    </tr>
                </thead>
                <tbody data-spy="scroll" data-target="#myScrollspy" data-offset="1">
                    <c:forEach items="${examinationStats}" var="c">
                        <tr>
                            <td>${c[0]}/${c[1]}</td>
                            <td>${c[2]} bệnh nhân</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-md-6 col-xs-12">
            <canvas id="myExaminationChart" ></canvas>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="<c:url value="/js/stats.js" />"></script>

<script>
    window.onload = function () {
        let data = [];
        let labels = [];
        let data1 = [];
        let labels1 = [];
    <c:forEach items="${stats}" var="c">
        data.push(${c[2]});
        labels.push(${c[0]});
    </c:forEach>
    <c:forEach items="${examinationStats}" var="c">
        data1.push(${c[2]});
        labels1.push('${c[0]}');
    </c:forEach>

        myTotalMonthPriceChart(labels, data);
        myExaminationChart(labels1, data1);
    };
</script>
