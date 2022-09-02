
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="50">
    <!-- first landing -->
    <link href="resources/css/style.css" rel="stylesheet">

    <div id="home" class="bgFirst background-below-text opacity-filter" style="margin-top: 60px">
        <span id="first-landing">
            <strong>Phòng mạch ViVi</strong></br>
            <span><i>Tận tụy - Tận tâm - Đảm bảo</i></span>
            <p> Được xây dựng và hoạt động trong hơn 15 năm, Phòng mạch ViVi chính là một địa điểm
                được nhiều người lựa chọn thăm khám bởi chất lượng dịch vụ, độ tin cậy, thời gian chờ ngắn. Ngoài ra
                để đáp ứng được sự tiện lợi của khách hàng, với dịch vụ đặt trước có thể đảm bảo được thời gian quý báu
                của những người đến thăm khám mà không cần đặt trực tiếp tại quầy,...</p>
            <!--                <button class="btn btn-warning" type="button" data-toggle="modal"
                             id="bn-order-new" onclick="CheckSession('{{ current_user.id }}',this.id)">Đặt hẹn</button>-->
        </span>
    </div>
    <!-- introduce -->
    <div id="introduce" class="d-flex">
        <div class="col-md-6 introduce-image-block d-flex flex-wrap justify-content-center">
            <img class="col-md-7 animated slideInRight" id="pic1" src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661430259/phongmachtunhanViVi/pic1_s7tnrs.jpg" alt="pic1" data-wow-delay="0.3s"><!--
            -->            <img class="col-md-3" id="pi2" src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661430258/phongmachtunhanViVi/pic4_mxpxkh.jpg" alt="pic2" data-wow-delay="0.3s">
            <img class="col-md-4" id="pic3" src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661430259/phongmachtunhanViVi/pic2_iww7kn.jpg" alt="pic3" data-wow-delay="0.3s">
            <img class="col-md-6" id="pic4" src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661430260/phongmachtunhanViVi/pic3_vhobuj.jpg" alt="pic4" data-wow-delay="0.3s">
        </div>
        <div class="col-md-6 introduce-content-block">
            <h4 class="col-md-11">GIỚI THIỆU</h4>
            <span class="col-md-11 d-block">
                <p><em>Phòng mạch ViVi</em> được thành lập từ năm 2006, <em>Phòng mạch ViVi</em> tự hào
                    là thương hiệu phòng khám có bề dầy 15 năm kinh nghiệm chăm sóc và phục vụ khách hàng đến từ
                    TP.Hồ Chí Minh và các tỉnh. Với tiêu chỉ “Tận tụy - Tận tâm - Đảm bảo”, <em>Phòng mạch ViVi
                    </em> luôn nỗ lực hết sức mình cùng khách hàng giữ gìn, bảo vệ sức khỏe bằng lòng yêu thương,
                    coi sức khỏe của khách hàng là hàng đầu, vì quý khách hàng mà hết lòng phục vụ.</p>
                <strong>Tầm nhìn</strong>
                <p><em>Phòng mạch ViVi</em> hướng tới phát triển chuỗi hệ thống phòng khám tiêu chuẩn 5 SAO
                    – Chuẩn CHÂU ÂU để phục vụ khách hàng tốt hơn trên phạm vi TOÀN QUỐC.</p>
                <strong>Sứ mệnh</strong>
                <p>Mãi luôn là lựa chọn tốt nhất, đảm bảo nhất bảo vệ toàn diện sức khỏe của mọi người.</p>
                <strong>Cam kết với khách hàng</strong>
                <ul>
                    <li>Khách hàng được thăm khám bởi những bác sĩ dày dặn kinh nghiệm, đảm bảo cho sức khỏe của quý
                        khách được tư vấn tốt nhất.</li>
                    <li>Người bệnh được chăm sóc, theo dõi ngay cả sau khi hoàn thành chuẩn trị tại phòng khám.</li>
                    <li>Người bệnh được ưu tiên hàng đầu, cung cấp những điều khoản có lợi nhất dành cho các bệnh nhân.</li>
                    <li>Tuân thủ nghiêm ngặt những quy định về an toàn chống nhiễm khuẩn để đảm bảo không gây nên
                        nguy cơ nhiễm khuẩn trung tâm.</li>
                </ul>
            </span>
        </div>
    </div>
    <!-- branch -->
    <div id="branch">
        <h3 class="display-4 px-3">Dịch vụ</h3>
        `       <div class="d-flex justify-content-md-around">
            <div class="col-md-3">
                <a href="#">
                    <img src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661431561/phongmachtunhanViVi/tongquat_rlkj8p.jpg"/></br>
                    <span>Khám tổng quát</span>
                </a>
            </div>
            <div class="col-md-3">
                <a href="#">
                    <img src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661431561/phongmachtunhanViVi/laixe_ymdcqh.jpg"/></br>
                    <span>Khám sức khỏe thi bằng lái xe</span>
                </a>

            </div>
            <div class="col-md-3">
                <a href="#">
                    <img src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661431561/phongmachtunhanViVi/dinhky_m5afqi.jpg"/></br>
                    <span>Khám sức khỏe định kỳ</span>
                </a>
            </div>
        </div>
    </div>

    <!-- employee team -->
    <div id="employee">
        <h3 class="display-4 text-center h3-pad">Đội ngũ bác sĩ dày dặn kinh nghiệm</h3>
        <div class="d-flex justify-content-md-around">
            <div class="col-md-4 doctor-information-introduce">
                <img class="rounded-circle" src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661432591/phongmachtunhanViVi/BS-Pham-Duc-Son_rkv3ii.png"/>
                </br></br><span>
                    <strong>Bác sĩ Phạm Đức Sơn</strong></br>
                    <i>Bác sĩ Đa khoa </i>
                </span>
            </div>
            <div class="col-md-4 doctor-information-introduce">
                <img class="rounded-circle" src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661432591/phongmachtunhanViVi/BS-Nguyen-Thi-Nhan_xciheq.jpg"/>
                </br></br><span>
                    <strong>Bác sĩ Nguyễn Thị Nhàn</strong></br>
                    <i>Chuyên khoa Nội tiết tổng hợp</i>
                </span>
            </div>
            <div class="col-md-4 doctor-information-introduce">
                <img class="rounded-circle" src="https://res.cloudinary.com/i-h-c-m/image/upload/v1661432591/phongmachtunhanViVi/BS-Pham-Huy-Huyen_bqqsyi.png"/>
                </br></br><span>
                    <strong>Bác sĩ Phạm Huy Huyền</strong></br>
                    <i>Bác sĩ Đa khoa</i>
                </span>
            </div>
        </div>
    </div>
    <!--         link to history -->
    <div id="do-you-find-your-order-history" class="text-center">
        <span>Bạn đang tìm kiếm lịch sử giao dịch của mình Chọn 
            <!--                <button type="button" class="cus-button-as-link"
                           data-toggle="modal" onclick="CheckSession('{{ current_user.id }}', this.id)"
                                        id="ba-history-lookup">XEM NGAY</button> nhé!</span>-->
    </div>
    <!-- lh -->
    <div id="info" class="d-flex">
        <div class="col-md-6">
            <strong style="font-size: 25px;">Phòng mạch ViVi</strong></br>
            <strong class="bi bi-geo-alt-fill"> Địa chỉ phòng mạch: </strong></br>
            <span>371, Nguyễn Kiệm, Quận Gò Vấp, TP.HCM</span></br>
            <strong class="bi bi-clock-fill"> Thời gian làm việc: </strong></br>
            <span>7:30 - 17:30, từ thứ 2 đến Chủ nhật</span></br>
            <strong class="bi bi-telephone-fill"> Hotline:</strong></br>
            <span>1900189261 - 0949048542</span></br>
            <strong class="bi bi-facebook"> Facebook</strong></br>
            <span><a href="fb.com/phongkhamViVi">fb.com/phongkhamViVi</a></span></br>
            <strong class="bi bi-link-45deg"> Website:</strong></br>
            <span><a href="www.phongkhamViVI.com">www.phongkhamViVi.com</a></span>
        </div>
        <div class="col-md-6">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.925050868659!2d106.67491891524597!3d10.817047661399393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528e1f241211f%3A0xc9ef195798144b1f!2sHo%20Chi%20Minh%20City%20Open%20University!5e0!3m2!1sen!2s!4v1641437351939!5m2!1sen!2s"
                    width="80%" height="330" style="border:0;" allowfullscreen="false" loading="lazy"></iframe>
        </div>
    </div>
</body>


