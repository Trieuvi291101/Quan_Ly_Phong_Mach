<%-- 
    Document   : general
    Created on : Aug 27, 2022, 8:18:05 PM
    Author     : Star
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-info">THONG KE BAO CAO</h1>

<div class="row">
    <div class="col-md-6 col-xs-12">
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
    </div>
    <div class="col-md-6 col-xs-12">
        <canvas id="myTotalMonthPriceChart"></canvas>
    </div>
</div>
