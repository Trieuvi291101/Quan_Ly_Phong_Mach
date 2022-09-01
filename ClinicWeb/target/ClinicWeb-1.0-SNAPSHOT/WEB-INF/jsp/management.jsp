<%-- 
    Document   : management
    Created on : Aug 30, 2022, 4:10:04 PM
    Author     : Star
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container col-md-12" style="border: 1px solid lightgray; margin-top: 60px">
    <div>
        <h3 style="font-weight:normal" class="cold-xs-12 col-md-4 m-4">Quản lý kho thuốc</h3>
    </div>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link active">List (7)</a>
        </li>


        <li class="nav-item">
            <a href="/admin/medicine/new/?url=%2Fadmin%2Fmedicine%2F" title="Create New Record" class="nav-link">Create</a></li>











        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)" role="button" aria-haspopup="true" aria-expanded="false">With selected<b class="caret"></b></a>
            <div class="dropdown-menu">

                <a class="dropdown-item" href="javascript:void(0)" onclick="return modelActions.execute('delete');">Delete</a>

            </div>

        </li>



        <li class="nav-item ml-2">

            <form method="GET" action="/admin/medicine/" class="form-inline my-2 my-lg-0" role="search">






                <div class="form-inline">
                    <input class="form-control col-auto" size="30" type="text" name="search" value="" placeholder="id, Tên">
                    <button class="btn btn-secondary my-2 my-sm-0 ml-2" type="submit">Search</button>
                </div>

            </form>

        </li>


    </ul>
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover model-list">
            <thead>
                <tr>


                    <th class="list-checkbox-column">
                        <input type="checkbox" name="rowtoggle" class="action-rowtoggle" title="Select all records">
                    </th>



                    <th class="">&nbsp;</th>




                    <th class="column-header col-name">


                        <a href="/admin/medicine/?sort=0" title="Sort by Tên">Tên</a>



                    </th>


                    <th class="column-header col-quantity">


                        <a href="/admin/medicine/?sort=1" title="Sort by Số lượng">Số lượng</a>



                    </th>


                    <th class="column-header col-unit">


                        <a href="/admin/medicine/?sort=2" title="Sort by Đơn vị tính">Đơn vị tính</a>



                    </th>


                    <th class="column-header col-price">


                        <a href="/admin/medicine/?sort=3" title="Sort by Đơn giá">Đơn giá</a>



                    </th>


                    <th class="column-header col-out_of_date">


                        <a href="/admin/medicine/?sort=4" title="Sort by Ngày hết hạn">Ngày hết hạn</a>



                    </th>


                    <th class="column-header col-producer">

                        Nhà cung cấp


                    </th>


                    <th class="column-header col-medicinetype">

                        Loại thuốc


                    </th>


                </tr>
            </thead>

            <tbody><tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="1" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicine/details/?id=1&amp;url=%2Fadmin%2Fmedicine%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicine/edit/?id=1&amp;url=%2Fadmin%2Fmedicine%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicine/delete/">
                            <input id="id" name="id" required="" type="hidden" value="1">
                            <input id="url" name="url" type="hidden" value="/admin/medicine/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-name">

                        Paracetamol

                    </td>

                    <td class="col-quantity">

                        86

                    </td>

                    <td class="col-unit">



                    </td>

                    <td class="col-price">

                        20000.0

                    </td>

                    <td class="col-out_of_date">

                        2025-09-12 00:00:00

                    </td>

                    <td class="col-producer">

                        Imexpharm

                    </td>

                    <td class="col-medicinetype">

                        Thuốc hạ sốt

                    </td>


                </tr>

                <tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="2" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicine/details/?id=2&amp;url=%2Fadmin%2Fmedicine%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicine/edit/?id=2&amp;url=%2Fadmin%2Fmedicine%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicine/delete/">
                            <input id="id" name="id" required="" type="hidden" value="2">
                            <input id="url" name="url" type="hidden" value="/admin/medicine/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-name">

                        Benzodiazepinesg

                    </td>

                    <td class="col-quantity">

                        108

                    </td>

                    <td class="col-unit">



                    </td>

                    <td class="col-price">

                        30000.0

                    </td>

                    <td class="col-out_of_date">

                        2025-09-12 00:00:00

                    </td>

                    <td class="col-producer">

                        Imexpharm

                    </td>

                    <td class="col-medicinetype">

                        Thuốc an thần

                    </td>


                </tr>

                <tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="3" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicine/details/?id=3&amp;url=%2Fadmin%2Fmedicine%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicine/edit/?id=3&amp;url=%2Fadmin%2Fmedicine%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicine/delete/">
                            <input id="id" name="id" required="" type="hidden" value="3">
                            <input id="url" name="url" type="hidden" value="/admin/medicine/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-name">

                        Morphine

                    </td>

                    <td class="col-quantity">

                        70

                    </td>

                    <td class="col-unit">



                    </td>

                    <td class="col-price">

                        40000.0

                    </td>

                    <td class="col-out_of_date">

                        2025-09-12 00:00:00

                    </td>

                    <td class="col-producer">

                        DHG PHARMA

                    </td>

                    <td class="col-medicinetype">

                        Thuốc giảm đau

                    </td>


                </tr>

                <tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="4" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicine/details/?id=4&amp;url=%2Fadmin%2Fmedicine%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicine/edit/?id=4&amp;url=%2Fadmin%2Fmedicine%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicine/delete/">
                            <input id="id" name="id" required="" type="hidden" value="4">
                            <input id="url" name="url" type="hidden" value="/admin/medicine/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-name">

                        angiotensin

                    </td>

                    <td class="col-quantity">

                        0

                    </td>

                    <td class="col-unit">



                    </td>

                    <td class="col-price">

                        10000.0

                    </td>

                    <td class="col-out_of_date">

                        2025-09-12 00:00:00

                    </td>

                    <td class="col-producer">

                        MEBIPHAR

                    </td>

                    <td class="col-medicinetype">

                        Thuốc trợ tim

                    </td>


                </tr>

                <tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="5" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicine/details/?id=5&amp;url=%2Fadmin%2Fmedicine%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicine/edit/?id=5&amp;url=%2Fadmin%2Fmedicine%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicine/delete/">
                            <input id="id" name="id" required="" type="hidden" value="5">
                            <input id="url" name="url" type="hidden" value="/admin/medicine/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-name">

                        Touxirup

                    </td>

                    <td class="col-quantity">

                        0

                    </td>

                    <td class="col-unit">



                    </td>

                    <td class="col-price">

                        15000.0

                    </td>

                    <td class="col-out_of_date">

                        2025-09-12 00:00:00

                    </td>

                    <td class="col-producer">

                        Traphaco

                    </td>

                    <td class="col-medicinetype">



                    </td>


                </tr>

                <tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="6" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicine/details/?id=6&amp;url=%2Fadmin%2Fmedicine%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicine/edit/?id=6&amp;url=%2Fadmin%2Fmedicine%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicine/delete/">
                            <input id="id" name="id" required="" type="hidden" value="6">
                            <input id="url" name="url" type="hidden" value="/admin/medicine/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-name">

                        Prospan Forte

                    </td>

                    <td class="col-quantity">

                        120

                    </td>

                    <td class="col-unit">



                    </td>

                    <td class="col-price">

                        10000.0

                    </td>

                    <td class="col-out_of_date">

                        2025-09-12 00:00:00

                    </td>

                    <td class="col-producer">

                        MEBIPHAR

                    </td>

                    <td class="col-medicinetype">



                    </td>


                </tr>

                <tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="7" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicine/details/?id=7&amp;url=%2Fadmin%2Fmedicine%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicine/edit/?id=7&amp;url=%2Fadmin%2Fmedicine%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicine/delete/">
                            <input id="id" name="id" required="" type="hidden" value="7">
                            <input id="url" name="url" type="hidden" value="/admin/medicine/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-name">

                        Loperamid

                    </td>

                    <td class="col-quantity">

                        185

                    </td>

                    <td class="col-unit">



                    </td>

                    <td class="col-price">

                        15000.0

                    </td>

                    <td class="col-out_of_date">

                        2025-09-12 00:00:00

                    </td>

                    <td class="col-producer">

                        Traphaco

                    </td>

                    <td class="col-medicinetype">

                        Thuốc đau bụng

                    </td>


                </tr>

            </tbody></table>
    </div>
    <form id="action_form" action="/admin/medicine/action/" method="POST" style="display: none">

        <input id="url" name="url" type="hidden" value="/admin/medicine/">
        <input id="action" name="action" type="hidden" value="">
    </form>
</div>
<div class="container col-md-12" style="border: 1px solid lightgray; margin-top: 30px">
    <div>
        <h3 style="font-weight:normal" class="cold-xs-12 col-md-4 m-4">Quản lý kho đơn vị</h3>
    </div>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link active">List (5)</a>
        </li>
        <li class="nav-item">
            <a href="/admin/medicinetype/new/?url=%2Fadmin%2Fmedicinetype%2F" title="Create New Record" class="nav-link">Create</a></li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)" role="button" aria-haspopup="true" aria-expanded="false">With selected<b class="caret"></b></a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="javascript:void(0)" onclick="return modelActions.execute('delete');">Delete</a>
            </div>
        </li>
        <li class="nav-item ml-2">
            <form method="GET" action="/admin/medicinetype/" class="form-inline my-2 my-lg-0" role="search">
                <div class="form-inline">
                    <input class="form-control col-auto" size="30" type="text" name="search" value="" placeholder="id, Loại thuốc">
                    <button class="btn btn-secondary my-2 my-sm-0 ml-2" type="submit">Search</button>
                </div>
            </form>
        </li>
    </ul>
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover model-list">
            <thead>
                <tr>


                    <th class="list-checkbox-column">
                        <input type="checkbox" name="rowtoggle" class="action-rowtoggle" title="Select all records">
                    </th>



                    <th class="">&nbsp;</th>




                    <th class="column-header col-type_name">


                        <a href="/admin/medicinetype/?sort=0" title="Sort by Loại thuốc">Loại thuốc</a>



                    </th>


                </tr>
            </thead>

            <tbody><tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="2" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicinetype/details/?id=2&amp;url=%2Fadmin%2Fmedicinetype%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicinetype/edit/?id=2&amp;url=%2Fadmin%2Fmedicinetype%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicinetype/delete/">
                            <input id="id" name="id" required="" type="hidden" value="2">
                            <input id="url" name="url" type="hidden" value="/admin/medicinetype/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-type_name">

                        Thuốc giảm đau

                    </td>


                </tr>

                <tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="3" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicinetype/details/?id=3&amp;url=%2Fadmin%2Fmedicinetype%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicinetype/edit/?id=3&amp;url=%2Fadmin%2Fmedicinetype%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicinetype/delete/">
                            <input id="id" name="id" required="" type="hidden" value="3">
                            <input id="url" name="url" type="hidden" value="/admin/medicinetype/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-type_name">

                        Thuốc hạ sốt

                    </td>


                </tr>

                <tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="4" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicinetype/details/?id=4&amp;url=%2Fadmin%2Fmedicinetype%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicinetype/edit/?id=4&amp;url=%2Fadmin%2Fmedicinetype%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicinetype/delete/">
                            <input id="id" name="id" required="" type="hidden" value="4">
                            <input id="url" name="url" type="hidden" value="/admin/medicinetype/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-type_name">

                        Thuốc đau bụng

                    </td>


                </tr>

                <tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="5" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicinetype/details/?id=5&amp;url=%2Fadmin%2Fmedicinetype%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicinetype/edit/?id=5&amp;url=%2Fadmin%2Fmedicinetype%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicinetype/delete/">
                            <input id="id" name="id" required="" type="hidden" value="5">
                            <input id="url" name="url" type="hidden" value="/admin/medicinetype/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-type_name">

                        Thuốc an thần

                    </td>


                </tr>

                <tr>


                    <td>
                        <input type="checkbox" name="rowid" class="action-checkbox" value="6" title="Select record">
                    </td>



                    <td class="list-buttons-column">




                        <a class="icon" href="/admin/medicinetype/details/?id=6&amp;url=%2Fadmin%2Fmedicinetype%2F" title="View Record">
                            <span class="fa fa-eye glyphicon glyphicon-eye-open"></span>
                        </a>





                        <a class="icon" href="/admin/medicinetype/edit/?id=6&amp;url=%2Fadmin%2Fmedicinetype%2F" title="Edit Record">
                            <span class="fa fa-pencil glyphicon glyphicon-pencil"></span>
                        </a>




                        <form class="icon" method="POST" action="/admin/medicinetype/delete/">
                            <input id="id" name="id" required="" type="hidden" value="6">
                            <input id="url" name="url" type="hidden" value="/admin/medicinetype/">

                            <button onclick="return faHelpers.safeConfirm('Are you sure you want to delete this record?');" title="Delete record">
                                <span class="fa fa-trash glyphicon glyphicon-trash"></span>
                            </button>
                        </form>



                    </td>


                    <td class="col-type_name">

                        Thuốc trợ tim

                    </td>


                </tr>

            </tbody></table>
    </div>
</div>

