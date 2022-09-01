<%-- 
    Document   : createMedicalBill
    Created on : Aug 30, 2022, 2:54:00 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container" style="border: 1px solid lightgray; margin-top: 60px">
    <h3 class="pt-3" style="font-weight: normal">Lập phiếu khám</h3>
    <br>
    <div id="medical-session">
        <div id="patient-info">
            <div class="row d-flex">
                <div class="form-group p-2 flex-fill d-flex" style="margin-bottom:0rem">
                    <label for="customer_name" class="p-2 flex-fill col-md-3">Tên hoặc số diện thoại khách hàng:</label>
                    <input style="" name="kw" value="" type="text" class="form-control p-2 flex-fill" placeholder="Nhập tên hoặc số điện thoại để tải thông tin bệnh nhân" required id="kw">
                </div>
            </div>
            <div class="row d-flex">
                <div class="p-2 d-flex col-md-4">
                    <label class="p-2">Ngày sinh</label>
                    <span class="text-success p-2" style="margin-left:1rem; margin-right:1rem">
                        <input class='' value="" id="customer-age">
                    </span>
                </div>
                <div class="p-2 d-flex col-md-4">
                    <label class="p-2">Giới tính</label>
                    <span  class="text-info p-2" style="margin-left:1rem; margin-right:1rem">
                        <input class='' value="" id="customer-gender">
                    </span>
                </div>
                <div class="p-2 d-flex col-md-4">
                    <label class="p-2">Mã phiếu</label>
                    <span  class="text-danger p-2" style="margin-left:1rem; margin-right:1rem">
                        <input class='' value="" id="medical-id">
                    </span>
                </div>
            </div>
        </div>
        <div class="input-group mt-3 mb-3">
            <label style="width:10%">Triệu chứng: &ensp;</label>
            <input type="text" id="symptom" class="form-control" value="" placeholder="Thêm triệu chứng">
            <div class="input-group-prepend">
                <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown">
                    Tìm
                </button>
                <div class="dropdown-menu">
                    <a id="symptom{{s.id}}" class="dropdown-item" ></a>
                </div>
            </div>
        </div>
        <div class="input-group mt-3 mb-3">
            <label style="width:10%">Chuẩn đoán: &ensp;</label>
            <input type="text" id="diagnostic_disease" value="" class="form-control" placeholder="Bệnh chuẩn đoán">
            <div class="input-group-prepend">
                <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown">
                    Tìm
                </button>

                <div class="dropdown-menu">
                    <a class="dropdown-item" id="diagnostic_disease{{s.id}}"></a>
                </div>
            </div>
        </div>
    </div>
<!--    {% else %}
    <div id="medical-session">
        <div id="patient-info">
            <div class="row d-flex">
                <div class="form-group p-2 flex-fill d-flex" style="margin-bottom:0rem">
                    <label for="customer_name" class="p-2 flex-fill col-md-3">Tên khách hàng:</label>
                    <input style="" name="customer_name" value="" type="text" class="form-control p-2 flex-fill" placeholder="Nhập tên khách hàng" required id="customer_name">
                </div>
                <div class="form-group p-2 flex-fill d-flex" style="margin-bottom:0rem">
                    <label for="phoneNumber" class="p-2 flex-fill col-md-3">Số điện thoại:</label>
                    <input onblur="loadPatient(this)" value="" style="margin-right:0.5rem" name="phoneNumber" type="text" class="form-control p-2 flex-fill" placeholder="Nhập số điện thoại để tải thông tin bệnh nhân" required id="phoneNumber">
                </div>
            </div>
            <div class="row d-flex">
                <div class="p-2 d-flex col-md-4">
                    <label class="p-2">Tuổi</label>
                    <span class="text-success p-2" style="margin-left:1rem; margin-right:1rem">
                        <input class='' value="" id="customer-age">
                    </span>
                </div>
                <div class="p-2 d-flex col-md-4">
                    <label class="p-2">Giới tính</label>
                    <span  class="text-info p-2" style="margin-left:1rem; margin-right:1rem">
                        <input class='' value="" id="customer-gender">
                    </span>
                </div>
                <div class="p-2 d-flex col-md-4">
                    <label class="p-2">Mã phiếu</label>
                    <span  class="text-danger p-2" style="margin-left:1rem; margin-right:1rem">
                        <input class='' value="{{maphieumoi}}" id="medical-id">
                    </span>
                </div>
            </div>
        </div>
        <div class="input-group mt-3 mb-3">
            <label style="width:10%">Triệu chứng: &ensp;</label>
            <input type="text" id="symptom" class="form-control" value="" placeholder="Thêm triệu chứng">
            <div class="input-group-prepend">
                <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown">
                    Tìm
                </button>
                <div class="dropdown-menu">
                    {% for s in symptom_available %}
                    <a id="symptom{{s.id}}" onclick="addDropDownItem(document.getElementById('symptom{{s.id}}').innerHTML, document.getElementById('symptom'))"
                       class="dropdown-item" >{{ s.symptom }}</a>
                    {% endfor %}
                </div>
            </div>
        </div>
        <div class="input-group mt-3 mb-3">
            <label style="width:10%">Chuẩn đoán: &ensp;</label>
            <input type="text" id="diagnostic_disease" value="" class="form-control" placeholder="Bệnh chuẩn đoán">
            <div class="input-group-prepend">
                <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown">
                    Tìm
                </button>

                <div class="dropdown-menu">
                    {% for s in symptom_available %}
                    <a class="dropdown-item" id="diagnostic_disease{{s.id}}" onclick="addDropDownItem(document.getElementById('diagnostic_disease{{s.id}}').innerHTML,
                                document.getElementById('diagnostic_disease'))" >{{ s.diagnostic_disease }}</a>
                    {% endfor %}
                </div>
            </div>
        </div>
    </div>
    {% endif %}-->
    <div class="input-group mt-3 mb-3">
        <label style="width:10%">Toa thuốc: &ensp;</label>
        <input type="text" id="medicine-name" class="form-control" placeholder="Tìm thuốc">
        <div class="input-group-prepend">
            <button type="button"  class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown">
                Tìm
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" id="medicine-name{{m.id}}"></a>
            </div>
        </div>
    </div>
    <div class='d-flex flex-row-reverse' style="">
        <button style="margin-left:1rem; width:10%" class="p-2 btn btn-info" id="regulation-submit">Thêm</button>
        <button style="width:10%" onclick="del()" class="p-2 btn btn-danger">Xóa phiếu</button>
    </div>
    <br>
    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>
                        <button type="button" style="height:100%" class="btn btn-outline-light text-dark"><b>Mã loại thuốc</b></button>
                    </th>
                    <th>
                        <button type="button" class="btn btn-outline-light text-dark"><b>Tên thuốc</b></button>
                    </th>
                    <th> <button type="button" class="btn btn-outline-light text-dark"><b>Số lượng</b></button> </th>
                    <th> <button type="button" class="btn btn-outline-light text-dark"><b>Cách dùng</b></button> </th>
                </tr>
            </thead>
            <tbody id="medicine-area">
            <span id="span-area">
                <tr>
                    <td>{{c.id}}</td>
                    <td>{{c.name}}</td>
                    <td>
                        <div class='input-group'>
                            <input type="number" onblur="updateMedicineQuantity(this.value, {{c.id}})" id="quantity" class="form-control" min=1 value="{{c.quantity}}" >
                        </div>
                    </td>
                    <td>
                        <div class="input-group">
                            <input type="text" onblur="updateHowToUse(this.value, {{ c.id }})" id="how_to_use" value="{{c.how_to_use}}" class="form-control" placeholder="Cách dùng...">
                        </div>
                    </td>
                    <td>
                        <button class="btn btn-danger" onclick="delMedicine({{c.id}})" >Xóa</button>
                    </td>
                </tr>
            </span>
            </tbody>
        </table>
    </div>
    <div class="d-flex flex-row-reverse">
        <input style="width:15%; margin-right:2rem" type="submit" onclick="addMedicalBill()" class="btn btn-success p-2" value="Lập phiếu">
    </div>
    <br><br>
</div>