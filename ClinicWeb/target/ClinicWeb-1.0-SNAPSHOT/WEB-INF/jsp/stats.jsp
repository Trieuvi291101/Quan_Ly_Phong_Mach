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
            <table class="table">
                <tr>
                    <th>Tháng</th>
                    <th>Doanh Thu</th>
                </tr>
                <c:forEach items="${stats}" var="c">
                    <tr>
                        <td>${c[0]}/${c[1]}</td>
                        <td>${c[2]}VND</td>
                    </tr>
                </c:forEach>
            </table>
        <div class="col-md-6 col-xs-12">
            <canvas id="myTotalMonthPriceChart"></canvas>
        </div>
    </div>
</div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="<c:url value="/js/stats.js" />"></script>

    <script>
        window.onload = function () {
            let data = [];
            let labels = [];
        <c:forEach items="${stats}" var="c">
            data.push(${c[0]});
            labels.push('$${c[2]}');
        </c:forEach>

            myTotalMonthPriceChart(labels, data);
        };
    </script>