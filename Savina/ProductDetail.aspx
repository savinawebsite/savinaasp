<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <script src="../js/accounting.js"></script>

    <style>
        .service_cost_1 { display: block; }
        .service_cost_2 {
            display: none;
            margin-top:35px
        }
         .service_cost_3 {
            display: none;
            margin-top:70px
        }
         .delivery_cost_1 { display: block; }
        .delivery_cost_2 {
            display: none;
            margin-top:35px
        }
         .delivery_cost_3 {
            display: none;
            margin-top:70px
        }

         .documentDeposit_1, .documentDeposit_2 {
             display: none;
         }

         .documentDeposit_3 {display: block;}


    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>	
				<li><a href="#">Products</a></li>
				<li><a href="#">Category</a></li>
				<li class="active">Máy khoan bê tông Bosch</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!--  Product Details -->
				<div class="product product-details clearfix">
					<div class="col-md-6">
						<div id="product-main-view" style="height: 415px;">
							<div class="product-view">
								<img src="./img/main-product01.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/main-product02.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/main-product03.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/main-product04.jpg" alt="">
							</div>
						</div>
						<div id="product-view">
							<div class="product-view">
								<img src="./img/thumb-product01.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/thumb-product02.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/thumb-product03.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/thumb-product04.jpg" alt="">
							</div>
						</div>
					<!-- THÔNG TIN SẢN PHẨM ĐI KÈM NẾU CÓ -->	
					<hr class="hrProductPackage"/>										
							<h3 style="font-size:18px; margin-top:20px;">DANH SÁCH SẢN PHẨM ĐI KÈM</h3>
							<div class="col-md-12 col-xs-12 ">
								<div id="product-slick-7" class="product-slick"> <!--Start slide product San Pham moi-->
									<!-- Product Single -->							
										<div class="product product-inpackage">
											<div class="product-thumb">
												<img src="./img/product-come01.jpg" alt="">
											</div>
											<div class="product-body">
												<h2 class="product-name" style="font-size:12px;font-weight: bold; margin-top: 5px;text-align: center;">Bộ mũi khoan</h2>
											</div>
										</div>							
									<!-- /Product Single -->
									<!-- Product Single -->							
										<div class="product product-inpackage">
											<div class="product-thumb">
												<img src="./img/product-come02.jpg" alt="">
											</div>
											<div class="product-body">
												<h2 class="product-name" style="font-size:12px;font-weight: bold; margin-top: 5px;text-align: center;">Tay cầm nhựa</h2>
											</div>
										</div>							
									<!-- /Product Single -->
									<!-- Product Single -->							
										<div class="product product-inpackage">
											<div class="product-thumb">
												<img src="./img/product-come03.jpg" alt="">
											</div>
											<div class="product-body">
												<h2 class="product-name" style="font-size:12px;font-weight: bold; margin-top: 5px;text-align: center;">Tắc kê</h2>
											</div>
										</div>							
									<!-- /Product Single -->								
								</div>	<!-- end slide product San pham moi -->
							</div>
							<hr class="hrProductPackage"/>
						
					
					</div>
					


					<div class="col-md-6">
						<div class="product-body">
							<h2 class="productDetail-name">MÁY KHOAN BÊ TÔNG BOSCH</h2>
							<div>
								<div class="col-md-4 col-xs-12" style="height:23px;padding-top: 8px;">
									<div class="product-rating">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o empty"></i>
									</div>
									<a href="#">3 Review(s)</a>
								</div>
								<div class="col-md-8 col-xs-12 productStatus"  style="height:40px">
									<p style="display:inline;">Còn mới:</p>
									<div style="display:inline-block;width:50px" class="dvProductValue">
										<p> 85%</p>
									</div>
								</div>
							</div>
							<div class="dvBriefDescription">
								<p>Mổ tả nhanh ngắn gọn về sản phẩm ổ đây: 
									<br> - Dùng điện 220v, an toàn điện.
									<br> - Thân máy màu xanh, xoay 2 chiều.
									<br> - Kèm thước đo khi khoan
								</p>
							</div>
							<div style="float:lefts; padding:5px 0 5px;">
								<div class="dvRadioPrice">
									<input type="radio" id="GiaChoChueTheoBlock" onchange="javascript:callMeOnChange1()" name="GiaChoThue" value="1">
								</div>					
								<h3 class="productDetail-lable" style="display:inline;">Giá cho thuê theo block:</h3>
								<p class="productDetail-price" style="display:inline;" id="price_block_p"> </p>
								<i class="fa fa-exclamation-circle dvCommentShow" data-tooltip-opaque="false" data-visual-id="3" title="2 giờ đầu đầu 100.000 vnd, giờ tiếp theo 30.000 vnd"></i>				
							</div>
							<div style="float:lefts; padding:5px 0 5px;">
								<div class="dvRadioPrice">
									<input type="radio" id="GiaChoChueTheoNgay" onchange="javascript:callMeOnChange1()" name="GiaChoThue" value="2">
								</div>
								<h3 class="productDetail-lable" style="display:inline;">Giá cho thuê theo ngày:</h3>
								<p class="productDetail-price" style="display:inline;" id="price_day_p"> </p>			
								<i class="fa fa-exclamation-circle dvCommentShow" data-tooltip-opaque="false" data-visual-id="3" title="Thuê càng lâu càng rẻ, ngày đầu 200.000 vnd ngày thứ 2 giảm 50%"></i>						
							</div>
							<div style="float:lefts; padding:5px 0 5px;">
								<h3 class="productDetail-lable" style="display:inline;">Tình trạng sản phẩm:</h3>
								<p style="display:inline; padding-left:10px;">Đang có / Mai có / Hết hàng</p>
							</div>
							<div style="float:lefts; padding:5px 0 5px;">
								<h3 class="productDetail-lable" style="display:inline;">Khu vực nhận hàng:</h3>
								<p style="display:inline; padding-left:10px;">Quận 2 - TP.Hồ Chí Minh</p>
							</div>
							<!-- session Book dat thue -->
							<h3 class="productDetail-lable" style="margin-top:5px;">Book đặt thuê:</h3>
							
							<!-- section Date time pickup -->
							<div class="dvBookTime">
								<div class="col-md-5 col-xs-12">
									<span class="pickuptime-title">Ngày giờ lấy:</span>
									<span class="returntime-title">Ngày giờ trả:</span>
										<input type="text" class="form-control ProcessOn pickuptime-form" id="orderTimePickup" placeholder="thời gian lấy" name="ProcessOn" style="font-size: 11px;">                                         
										<input type="text" class="form-control ProcessOn pickuptime-form" id="orderTimeReturn" placeholder="thời gian trả" name="ProcessOn" style="font-size: 11px;">
								</div>
								<div class="col-md-7 col-xs-12">
									<span>Số lượng:</span>
									<span style="padding-left:24px;">Giá thuê tạm tính:</span>
									<span style="padding-left:31px;">Giá trị sản phẩm:</span>
									<div class="qty-input">
										<input class="input" type="number" onchange="javascript:callMeOnChange()" id="product_qty" value="1" style="height: 32px; width: 55px;">
									</div>
									<div class="dvPriceTamTinh dvPriceTamTinh-BookTime">
										<p style="display:inline" id="product_temp_p1">0</p><span>&nbsp đ</span>
									</div>
									<div class="dvProductValue dvProductValue-BookTime">
										<p style="display:inline" id="product_value_p1">0</p><span>&nbsp đ</span>
									</div>
								</div>
							</div>
							<!-- /section Date time pickup -->

							<hr class="hrProductPackage"/>

							<!-- section Accessories selection -->
							<div class="dvBookAccessory">
								<div class="col-md-5 col-xs-12 accessories-titleBar">
									<p class="accessories-title">Chọn thêm phụ kiện:</p>
								</div>
								<div class="col-md-7 col-xs-12 accessories-titleBar">
									<p class="accessories-title">Số lượng:</p>
									<p class="accessories-title" style="padding-left:24px;">Giá thuê tạm tính:</p>
									<p class="accessories-title" style=" padding-left:31px;">Giá trị sản phẩm:</p>
								</div>

								<div class="col-md-5 col-xs-12 BookAccessories-productName">
									<div class="accessories-checkbox">
										<input type="checkbox" id="accessoriesCheckbox1" name="GiaChoThue" value="2">
									</div>
									<h3 class="productDetail-lable-accessories" style="display:inline;">Thước đo điện tử</h3>	
								</div>
								<div class="col-md-7 col-xs-12">
									<div class="qty-input">
										<input class="input" type="number" onchange="javascript:callMeOnChange()" id="access_qty_1" value="0" style="height: 32px; width: 55px;">
									</div>
									<div class="dvPriceTamTinh" style="display: inline-block;margin-left: 20px; margin-top: 6px;">
										<p id="access_temp_p1">0 đ</p>
                                       <%-- accounting.formatNumber(<p id="access_temp_p1">0 đ</p>);--%>
									</div>
									<div class="dvProductValue" style="display: inline-block;margin-left: 16px;">
										<p id="access_value_p1">0 đ</p>
									</div>
								</div>

								<div class="col-md-5 col-xs-12 BookAccessories-productName">
									<div class="accessories-checkbox">
										<input type="checkbox" id="accessoriesCheckbox2" name="GiaChoThue" value="2">
									</div>
									<h3 class="productDetail-lable-accessories" style="display:inline;">Bộ mũi khoan cao cấp</h3>	
								</div>
								<div class="col-md-7 col-xs-12">
									<div class="qty-input">
										<input class="input" type="number" onchange="javascript:callMeOnChange()" id="access_qty_2" value="0" style="height: 32px; width: 55px;">
									</div>
									<div class="dvPriceTamTinh" style="display: inline-block;margin-left: 20px; margin-top: 6px;">
										<p id="access_temp_p2">0 đ</p>
									</div>
									<div class="dvProductValue" style="display: inline-block;margin-left: 16px;">
										<p id="access_value_p2">0 đ</p>
									</div>
								</div>

								<div class="col-md-5 col-xs-12 BookAccessories-productName">
									<div class="accessories-checkbox">
										<input type="checkbox" id="accessoriesCheckbox3" name="GiaChoThue" value="2">
									</div>
									<h3 class="productDetail-lable-accessories" style="display:inline;">Găng tay lao động</h3>	
								</div>
								<div class="col-md-7 col-xs-12">
									<div class="qty-input">
										<input class="input" type="number" onchange="javascript:callMeOnChange()" id="access_qty_3" value="0" style="height: 32px; width: 55px;">
									</div>
									<div class="dvPriceTamTinh" style="display: inline-block;margin-left: 20px; margin-top: 6px;">
										<p id="access_temp_p3">0 đ</p>
									</div>
									<div class="dvProductValue" style="display: inline-block;margin-left: 16px;">
										<p id="access_value_p3"> đ</p>
									</div>
								</div>
							</div>
							<!-- /section Accessories selection -->

							<hr class="hrProductPackage"/>

							<!-- section Services selection -->
							<div class="dvBookServices">
								<div class="col-md-7 col-xs-12">
									<div class="col-md-6 col-xs-5">
										<p class="services-title">Chọn dịch vụ đi kèm:</p>
										<div style="padding:5px 0 5px;">
											<div class="accessories-checkbox" style="margin-top: 3px;">
												<input type="radio" id="ServiceSelect-1" onchange="javascript:callMeOnChangeService()" name="Service" value="1" checked>
											</div>
											<h3 class="productDetail-lable-accessories" style="display:inline;">Thợ đến lắp</h3>																	
										</div>
										<div style="padding:5px 0 5px;">
											<div class="accessories-checkbox">
												<input type="radio" id="ServiceSelect-2" onchange="javascript:callMeOnChangeService()" name="Service" value="2">
											</div>
											<h3 class="productDetail-lable-accessories" style="display:inline;">Hướng dẫn sử dụng</h3>																	
										</div>
										<div style="padding:5px 0 5px;">
											<div class="accessories-checkbox">
												<input type="radio" id="ServiceSelect-3" onchange="javascript:callMeOnChangeService()" name="Service" value="3">
											</div>
											<h3 class="productDetail-lable-accessories" style="display:inline;">Tự lặp đặt</h3>																	
										</div>	
									</div>
									<div class="col-md-6 col-xs-7">
										<div class="dvServiceDescription" style="margin-left:-16px;margin-top: 28px;">
											<P id="service_des_p">Kỹ thuật viên của chúng tôi sẽ giao sản phẩm đến tận nơi đồng thời tiền hành lắp đặt và hướng dẫn sử dụng cho quý khách.</P>	
										</div>
									</div>								

								</div>
								<div class="col-md-5">
									<p class="services-title services-title-price">Giá thuê tạm tính:</p>		

									<div class="dvPriceTamTinh dvPriceTamTinh-Services service_cost_1">
										<p id="service_cost_1_p"> </p>
									</div>
                                    <div class="dvPriceTamTinh dvPriceTamTinh-Services service_cost_2">
										<p id="service_cost_2_p"></p>
									</div>
                                    <div class="dvPriceTamTinh dvPriceTamTinh-Services service_cost_3">
										<p id="service_cost_3_p"> </p>
									</div>
								
								</div>
							</div>
							<!-- /section Services selection -->

							<hr class="hrProductPackage"/>

							<!-- section Delivery selection -->
							<div class="dvBookDelivery">
									<div class="col-md-7 col-xs-12">
										<div class="col-md-6 col-xs-5">
											<p class="delivery-title">Chọn vận chuyển:</p>
											<div style="padding:5px 0 5px;">
												<div class="accessories-checkbox" style="margin-top: 3px;">
													<input type="radio" id="DeliverySelect-1" onchange="javascript:callMeOnChangeDelivery()" name="Deliveryy" value="1" checked>
												</div>
												<h3 class="productDetail-lable-accessories" style="display:inline;">Giao/nhận tận nhà</h3>																	
											</div>
											<div style="padding:5px 0 5px;">
												<div class="accessories-checkbox">
													<input type="radio" id="DeliverySelect-2" onchange="javascript:callMeOnChangeDelivery()" name="Deliveryy" value="2"  >
												</div>
												<h3 class="productDetail-lable-accessories" style="display:inline;">Giao tận nhà</h3>																	
											</div>
											<div style="padding:5px 0 5px;">
												<div class="accessories-checkbox">
													<input type="radio" id="DeliverySelect-3" onchange="javascript:callMeOnChangeDelivery()" name="Deliveryy" value="3">
												</div>
												<h3 class="productDetail-lable-accessories" style="display:inline;">Tự đến lấy</h3>																	
											</div>	
										</div>
										<div class="col-md-6 col-xs-7">
											<div class="dvServiceDescription" style="margin-left:-16px;margin-top: 28px;">
												<P id="delivery_des_p">Vui lòng điền đầy đủ thông tin nơi nhận hàng ở Giỏ Hàng và Đặt Hàng, nhân viên chúng tôi sẽ liên hệ lại sớm nhất để xác nhận.</P>	
											</div>
										</div>								
	
									</div>
									<div class="col-md-5">
										<p class="delivery-title delivery-title-price" style="margin-left:-14px;">Giá thuê tạm tính:</p>		
	
										<div class="dvPriceTamTinh dvPriceTamTinh-Delivery delivery_cost_1 ">
											<p id="delivery_cost_1_p"> </p>
										</div>
                                        <div class="dvPriceTamTinh dvPriceTamTinh-Delivery delivery_cost_2">
											<p id="delivery_cost_2_p"> </p>
										</div>
                                        <div class="dvPriceTamTinh dvPriceTamTinh-Delivery delivery_cost_3">
											<p id="delivery_cost_3_p"> </p>
										</div>
									
									</div>
								</div>
								<!-- /section Delivery selection -->

								<hr class="hrProductPackage"/>	
																									
								<div class="dvBookDeposit">	
									<div class="col-sm-5 col-xs-12">
										<p style="display:inline;">- Khách gửi lại:</p>																		
										<div class="qty-input" style="padding-left: 14px;">
											<select class="form-control" id="DepositSelectDropdown" onchange="callMeOnChangeDeposit()" style="width: 118px;">
													<option value="documentDeposit" selected="selected">Giấy tờ</option>
													<option value="propertyDeposit">Tài sản </option>
													<option value="cashDeposit">Tiền cọc </option>
												</select>
										</div>
									</div>
									<div class="col-sm-7 col-xs-12">
										<!-- <div style="display:inline-block;" > -->
											<input class="dvGhiChuDeposit documentDeposit_1" type="text" placeholder="Vui lòng nhập số tiền bạn sẽ đặt cọc vào đây.." id="documentDeposit1"/>
                                            <input class="dvGhiChuDeposit documentDeposit_2" type="text" placeholder="Điện thoại, máy tính, xe máy, vật dụng.." id="documentDeposit2"/>
                                            <input class="dvGhiChuDeposit documentDeposit_3" type="text" placeholder="ID, bằng lái, giấy tờ nhà, hộ khẩu, KT3.." id="documentDeposit3"/>
										<!-- </div> -->
									</div>
								</div>

								<%--<hr style="color:#DADADA">	--%>

								<%--<div class="dvBookOtodes">	
									<div class="col-sm-9 col-xs-7 dvOtoDescription">	
										<p>- Tiền cọc bắt buộc đối với KH thuê xe Oto tự lái, chi tiết hiển thị ở đây:</p>
									</div>
									<div class="col-sm-3 col-xs-5">
										<div class="dvProductValue dvProductValue-OtoDes">
											<p>15.000.000 đ</p>
										</div>	
									</div>								
								</div>--%>

							<!-- //session Book dat thue -->
							<hr class="hrProductPackage"/>

							<div class="dvBookSTotalpayment">	
								<div class="productdetail-totalvalue">
									<div class="col-sm-6 col-xs-7">	
										<p style="display:inline;">TỔNG GIÁ TRỊ SẢN PHẨM:</p>
									</div>
									<div class="col-sm-6 col-xs-5">	
										<div class="dvProductValue dvProductValue-Total">
											<p id="total_product_value_p" style="font-size:18px;"> </p>
										</div>	
									</div>								
								</div>
								<div class="productdetail-totalpayment">
									<div class="col-sm-6 col-xs-7">
										<p style="display:inline;">TỔNG GIÁ TRỊ TẠM ỨNG:</p>
									</div>
									<div class="col-sm-6 col-xs-5">	
										<div class="dvPriceTamTinh dvPriceTamTinh-Total">
											<p id="total_product_deposit_p" style="font-size:18px;"> </p>
										</div>	
									</div>								
								</div>
							</div>		


							<div class="product-btns" style="margin-top: 30px;">
								<button class="primary-btn add-to-cart" style="height: 35px;font-size: 14px;"><i class="fa fa-shopping-cart"></i> THÊM VÀO GIỎ</button>
								<button class="primary-btn add-to-cart" style="height: 35px;font-size: 14px;"><i class="fa fa-credit-card"></i> ĐỒNG Ý THUÊ</button>
							</div>
						</div>
					</div>

					<div class="col-md-12">  <!-- /Product full description tab -->
						<%--<div class="product-tab">
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Mô tả sản phẩm</a></li>
								<li><a data-toggle="tab" href="#tab2">Thông số kỹ thuật</a></li>
								<li><a data-toggle="tab" href="#tab3">Hướng dẫn sử dụng</a></li>
								<li><a data-toggle="tab" href="#tab4">Reviews (3)</a></li>
							</ul>
							<div class="tab-content">
								<div id="tab1" class="tab-pane fade in active">
									<p>Kính nghe nhạc Bluetooth mp3 NBC BT-2 vừa bảo vệ đôi mắt vừa tích hợp tính năng nghe nhạc, kết nối điện thoại giúp bạn giải trí không giới hạn đồng thời không bỏ lỡ bất kỳ cuộc gọi quan trọng nào.</br>
										Bluetooth: V4.1 + EDR Khoảng cách: 10m Thời gian làm việc liên tục: 4 tiếng</br>
										Chế độ chờ: tương đương 100 giờ Sạc lại: khoảng 2 tiếng Công suất Pin: 130mA</br>
									</p>
								</div>
								<div id="tab2" class="tab-pane fade in active">
									<p>Màu sắc: Đen</br>
										Loại kính: Kính bluetooth</br>
										Phương thức bảo hành: Bằng tem bảo hành</br>
										Bảo hành: 6 tháng</br>
									</p>
									<!-- <img src="/img/kinhbluetooth.jpg" alt="Mắt Kính Nghe Nhạc Bluetooth 15"> -->
								</div>
								<div id="tab3" class="tab-pane fade in active">
									<h3 style="margin-bottom: 40px;font-size: 18px;">HƯỚNG DẪN SỬ DỤNG SẢN PHẨM GỒM VIDEO VÀ MÔ TẢ</h3>
									<div class="col-md-5 col-sm-6">
										<p>Hướng dẫn dùng sản phẩm dòng 1</p>
										<p>Welcome to Sense Property, the leading Bangkok property agent dedicated to helping expats and international clients find the best properties for rent, for sale and to renovate in Bangkok. With the support of our highly experienced team, you'll enjoy access to the highest quality condos, apartments, houses, land and commercial properties throughout Bangkok and greater Thailand.</p>
									</div>
									<div class="col-md-4 col-sm-6">
										<!-- <iframe width="380" height="300" src="https://www.youtube.com/embed/tV1A51hLGZk" style="height:255px; width: 365px; margin-left:26px;"></iframe> -->
									</div>			
								</div>
								<div id="tab4" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-6">
											<div class="product-reviews">
												<div class="single-review">
													<div class="review-heading">
														<div><a href="#"><i class="fa fa-user-o"></i> John</a></div>
														<div><a href="#"><i class="fa fa-clock-o"></i> 27 DEC 2017 / 8:0 PM</a></div>
														<div class="review-rating pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o empty"></i>
														</div>
													</div>
													<div class="review-body">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute
															irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
													</div>
												</div>

												<div class="single-review">
													<div class="review-heading">
														<div><a href="#"><i class="fa fa-user-o"></i> John</a></div>
														<div><a href="#"><i class="fa fa-clock-o"></i> 27 DEC 2017 / 8:0 PM</a></div>
														<div class="review-rating pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o empty"></i>
														</div>
													</div>
													<div class="review-body">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute
															irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
													</div>
												</div>

												<div class="single-review">
													<div class="review-heading">
														<div><a href="#"><i class="fa fa-user-o"></i> John</a></div>
														<div><a href="#"><i class="fa fa-clock-o"></i> 27 DEC 2017 / 8:0 PM</a></div>
														<div class="review-rating pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o empty"></i>
														</div>
													</div>
													<div class="review-body">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute
															irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
													</div>
												</div>

												<ul class="reviews-pages">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#"><i class="fa fa-caret-right"></i></a></li>
												</ul>
											</div>
										</div>
										<div class="col-md-6">
											<h4 class="text-uppercase">Write Your Review</h4>
											<p>Your email address will not be published.</p>
											<form class="review-form">
												<div class="form-group">
													<input class="input" type="text" placeholder="Your Name" />
												</div>
												<div class="form-group">
													<input class="input" type="email" placeholder="Email Address" />
												</div>
												<div class="form-group">
													<textarea class="input" placeholder="Your review"></textarea>
												</div>
												<div class="form-group">
													<div class="input-rating">
														<strong class="text-uppercase">Your Rating: </strong>
														<div class="stars">
															<input type="radio" id="star5" name="rating" value="5" /><label for="star5"></label>
															<input type="radio" id="star4" name="rating" value="4" /><label for="star4"></label>
															<input type="radio" id="star3" name="rating" value="3" /><label for="star3"></label>
															<input type="radio" id="star2" name="rating" value="2" /><label for="star2"></label>
															<input type="radio" id="star1" name="rating" value="1" /><label for="star1"></label>
														</div>
													</div>
												</div>
												<button class="primary-btn">Submit</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>--%>
                        <div class="fullDescription-tab-dynamic" role="tabpanel" data-example-id="togglable-tabs">
                                <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                  <li role="presentation" class="active"><a href="#tab_content_fullDescription" role="tab" id="fullDescription-tab"  data-toggle="tab" aria-expanded="true">MÔ TẢ SẢN PHẨM</a>
                                  </li>
                                  <li role="presentation" class=""><a href="#tab_content_specification" role="tab" id="specification-tab" data-toggle="tab" aria-expanded="false">THÔNG SỐ KỸ THUẬT</a>
                                  </li>
                                  <li role="presentation" class=""><a href="#tab_content_userguide" role="tab" id="userGuide-tab" data-toggle="tab" aria-expanded="false">HƯỚNG DẪN SỬ DỤNG</a>
                                  </li>
                                </ul>
                                 <div id="myTabContent" class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade active in" id="tab_content_fullDescription" aria-labelledby="home-tab" style="margin-top:20px"> <!-- Tab Mo Ta San Pham --> 
                                           <p>Kính nghe nhạc Bluetooth mp3 NBC BT-2 vừa bảo vệ đôi mắt vừa tích hợp tính năng nghe nhạc, kết nối điện thoại giúp bạn giải trí không giới hạn đồng thời không bỏ lỡ bất kỳ cuộc gọi quan trọng nào.</br>
										    Bluetooth: V4.1 + EDR Khoảng cách: 10m Thời gian làm việc liên tục: 4 tiếng</br>
										    Chế độ chờ: tương đương 100 giờ Sạc lại: khoảng 2 tiếng Công suất Pin: 130mA</br>
									</p>
                                    </div>  <!-- /Tab Mo Ta San Pham -->
                          
                                    <div role="tabpanel" class="tab-pane fade" id="tab_content_specification" aria-labelledby="profile-tab" style="margin-top:20px">  <!-- Tab Thong So Ky Thuat -->                           
                                        <p>Màu sắc: Đen</br>
										    Loại kính: Kính bluetooth</br>
										    Phương thức bảo hành: Bằng tem bảo hành</br>
										    Bảo hành: 6 tháng</br>
									    </p>
									     <img src="/img/kinhbluetooth.jpg" alt="Mắt Kính Nghe Nhạc Bluetooth 15">                               
                                    </div>    <!-- /Tab Thong So Ky Thuat -->             
                          
                                    <div role="tabpanel" class="tab-pane fade" id="tab_content_userguide" aria-labelledby="profile-tab" style="margin-top:20px"> <!-- Tab Huong Dan Su Dung -->
                                        <h3 style="margin-bottom: 40px;font-size: 18px;">HƯỚNG DẪN SỬ DỤNG SẢN PHẨM GỒM VIDEO VÀ MÔ TẢ</h3>
									    <div class="col-md-7 col-sm-8 col-xs-12">
										    <p>Hướng dẫn dùng sản phẩm dòng 1</p>
										    <p>Welcome to Sense Property, the leading Bangkok property agent dedicated to helping expats and international clients find the best properties for rent, for sale and to renovate in Bangkok. With the support of our highly experienced team, you'll enjoy access to the highest quality condos, apartments, houses, land and commercial properties throughout Bangkok and greater Thailand.</p>
									    </div>
									    <div class="col-md-4 col-sm-6 col-xs-12">
										     <iframe width="380" height="300" src="https://www.youtube.com/embed/tV1A51hLGZk" style="height:255px; width: 365px; margin-left:26px;"></iframe> 
									    </div>
                                    </div>     <!-- /Tab Huong Dan Su Dung -->
                                </div>
                           </div>

					</div> <!-- /Product full description tab -->

				</div>
				<!-- /Product Details -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">SẢN PHẨM LIÊN QUAN</h2>
					</div>
				</div>
				<!-- section title -->
				<div class="col-md-12 col-xs-12 ">
					<div>
						<div class="product-slick-dots-6 custom-dots"></div>
					</div>
					<div id="product-slick-6" class="product-slick"> <!--Start slide product San Pham moi-->
						<!-- Product Single -->							
							<div class="product product-single">
								<div class="product-thumb">
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
									<img src="./img/product01.jpg" alt="">
								</div>
								<div class="product-body">
									<h2 class="product-name"><a href="#">Sản phẩm số 1</a></h2>
									<h3 class="product-price">35,000/month</h3>
									<h4 class="product-location">Khu vực cửa hàng cho thuê</h4>
									<div class="product-btns">
										<button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
									</div>
								</div>
							</div>							
						<!-- /Product Single -->
		
						<!-- Product Single -->							
							<div class="product product-single">
								<div class="product-thumb">
									<div class="product-label">
										<span>New</span>
										<span class="sale">-20%</span>
									</div>
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
									<img src="./img/product02.jpg" alt="">
								</div>
								<div class="product-body">
										<h2 class="product-name"><a href="#">Sản phẩm số 2</a></h2>
										<h3 class="product-price">14,000/month</h3>
										<h4 class="product-location">Khu vực cửa hàng cho thuê</h4>
										<div class="product-btns">
											<button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
											<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
										</div>
									</div>
							</div>							
						<!-- /Product Single -->
		
						<!-- Product Single -->							
							<div class="product product-single">
								<div class="product-thumb">
									<div class="product-label">
										<span class="rent">Đã cho thuê</span>
									</div>
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
									<img src="./img/product03.jpg" alt="">
								</div>
								<div class="product-body">
										<h2 class="product-name"><a href="#">Sản phẩm số 3</a></h2>
										<h3 class="product-price">20,000/month</h3>
										<h4 class="product-location">Khu vực cửa hàng cho thuê</h4>
										<div class="product-btns">
											<button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
											<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
										</div>
									</div>
							</div>							
						<!-- /Product Single -->
		
						<!-- Product Single -->							
							<div class="product product-single">
								<div class="product-thumb">
									<div class="product-label">
										<span class="available">Đang có sẵn</span>
									</div>
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
									<img src="./img/product04.jpg" alt="">
								</div>
								<div class="product-body">
									<h2 class="product-name"><a href="#">Sản phẩm số 4</a></h2>
									<h3 class="product-price">33,000/month</h3>
									<h4 class="product-location">Khu vực cửa hàng cho thuê</h4>
									<div class="product-btns">
										<button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
									</div>
								</div>
							</div>							
							<!-- /Product Single -->

						<!-- Product Single -->							
							<div class="product product-single">
								<div class="product-thumb">
									<div class="product-label">
										<span class="available">Đang có sẵn</span>
									</div>
									<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
									<img src="./img/product04.jpg" alt="">
								</div>
								<div class="product-body">
									<h2 class="product-name"><a href="#">Sản phẩm số 5</a></h2>
									<h3 class="product-price">33,000/month</h3>
									<h4 class="product-location">Khu vực cửa hàng cho thuê</h4>
									<div class="product-btns">
										<button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
										<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
									</div>
								</div>
							</div>							
						<!-- /Product Single -->
					</div>	<!-- end slide product San pham moi -->
				</div>
				

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->
     <script type="text/javascript">


         $(function () {
             document.getElementById("price_day_p").innerHTML = accounting.formatNumber(110000) + " đ";
             document.getElementById("price_block_p").innerHTML = accounting.formatNumber(35000) + " đ";

             document.getElementById("service_cost_1_p").innerHTML = accounting.formatNumber(120000) + " đ";
             document.getElementById("service_cost_2_p").innerHTML = accounting.formatNumber(55000) + " đ";
             document.getElementById("service_cost_3_p").innerHTML = accounting.formatNumber(0) + " đ";

             document.getElementById("delivery_cost_1_p").innerHTML = accounting.formatNumber(100000) + " đ";
             document.getElementById("delivery_cost_2_p").innerHTML = accounting.formatNumber(75000) + " đ";
             document.getElementById("delivery_cost_3_p").innerHTML = accounting.formatNumber(0) + " đ";

             document.getElementById("total_product_value_p").innerHTML = accounting.formatNumber(2510000) + " đ";
             document.getElementById("total_product_deposit_p").innerHTML = accounting.formatNumber(510000) + " đ";
             

             var dateToday = new Date();
             dateToday.setDate(dateToday.getDate());
             
             $('#orderTimePickup').datetimepicker({
                 //format: "dd MM yyyy - hh:ii P",
                 format: "d/m/yy - hh:ii p",
                 showMeridian: true,
                 autoclose: true,
                 startDate: dateToday,
                 pickerPosition: "bottom-left",
                 daysOfWeekDisabled: "0,6"
             });

             $('#orderTimeReturn').datetimepicker({
                 useCurrent: false, //Important! See issue #1075
                 format: "d/m/yy - hh:ii p",
                 showMeridian: true,
                 autoclose: true,
                 startDate: dateToday,
                 pickerPosition: "bottom-left",
                 daysOfWeekDisabled: "0,6"
             });

             $("#orderTimePickup").on("#orderTimePickup.change", function (e) {
		        $("#orderTimeReturn").data("DateTimePicker").minDate(e.date);
		    });
             $("#orderTimeReturn").on("#orderTimePickup.change", function (e) {
		        $("orderTimePickup").data("DateTimePicker").maxDate(e.date);
		    });			
		});
	</script>

    <script>

        function callMeOnChange1() {
            if (document.getElementById('GiaChoChueTheoBlock').checked)
            {
                var xxx = document.getElementById("price_block_p").innerHTML;
                document.getElementById("product_temp_p1").innerHTML = accounting.formatNumber(xxx);
                document.getElementById("product_value_p1").innerHTML = accounting.formatNumber(1900000);
            }
            else if (document.getElementById('GiaChoChueTheoNgay').checked)
            {
                var xxx = document.getElementById("price_day_p").innerHTML;
                document.getElementById("product_temp_p1").innerHTML = accounting.formatNumber(xxx);
                document.getElementById("product_value_p1").innerHTML = accounting.formatNumber(1900000);
            }
        }

        function callMeOnChange() {                     
            //auto update gia tam tinh va gia tri SP section MAIN PRODUCT
            var x = document.getElementById("product_qty").value;
            if (document.getElementById('GiaChoChueTheoBlock').checked) {
                var temp = document.getElementById("price_block_p").innerHTML;
            }
            else if (document.getElementById('GiaChoChueTheoNgay').checked) {
                 var temp = document.getElementById("price_day_p").innerHTML;
            }              
            var value = 1900000
            var y = temp * x
            var z = value * x
            document.getElementById("product_temp_p1").innerHTML = accounting.formatNumber(y);
            document.getElementById("product_value_p1").innerHTML = accounting.formatNumber(z);
            //auto update gia tam tinh va gia tri SP section MAIN PRODUCT

            //auto update gia tam tinh va gia tri SP section CHON THEM PHU KIEN
            var x1 = document.getElementById("access_qty_1").value;
            var temp1 = 15000
            var value1 = 1900000
            var y1 = temp1 * x1
            var z1 = value1 * x1
            document.getElementById("access_temp_p1").innerHTML = accounting.formatNumber(y1) + " đ";
            document.getElementById("access_value_p1").innerHTML = accounting.formatNumber(z1) + " đ";

            var x2 = document.getElementById("access_qty_2").value;
            var temp2 = 60000
            var value2 = 370000
            var y2 = temp2 * x2
            var z2 = value2 * x2
            document.getElementById("access_temp_p2").innerHTML = accounting.formatNumber(y2) + " đ";
            document.getElementById("access_value_p2").innerHTML = accounting.formatNumber(z2) + " đ";

            var x3 = document.getElementById("access_qty_3").value;
            var temp3 = 10000
            var value3 = 50000
            var y3 = temp3 * x3
            var z3 = value3 * x3
            document.getElementById("access_temp_p3").innerHTML = accounting.formatNumber(y3) + " đ";
            document.getElementById("access_value_p3").innerHTML = accounting.formatNumber(z3) + " đ";
            //auto update gia tam tinh va gia tri SP section CHON THEM PHU KIEN
        }

        function callMeOnChangeService() {
            if (document.getElementById('ServiceSelect-1').checked) {
                document.getElementById("service_des_p").innerHTML = "Kỹ thuật viên của chúng tôi sẽ giao sản phẩm đến tận nơi đồng thời tiền hành lắp đặt và hướng dẫn sử dụng cho quý khách.";
                $('.dvBookServices .service_cost_1').css('display', 'block')
                $('.dvBookServices .service_cost_2').css('display', 'none')
                $('.dvBookServices .service_cost_3').css('display', 'none')
            }
            else if (document.getElementById('ServiceSelect-2').checked) {
                document.getElementById("service_des_p").innerHTML = "Kỹ thuật viên của chúng tôi sẽ hướng dẫn sử dụng cho quý khách khi đến nhận hàng.";
                $('.dvBookServices .service_cost_1').css('display', 'none')
                $('.dvBookServices .service_cost_2').css('display', 'block')
                $('.dvBookServices .service_cost_3').css('display', 'none')
            }
            else if (document.getElementById('ServiceSelect-3').checked) {
                document.getElementById("service_des_p").innerHTML = "Quý khách hàng tự lắp đặt và sử dụng sản phẩm, chúng tôi có thể tư vấn qua điện thoại.";
                $('.dvBookServices .service_cost_1').css('display', 'none')
                $('.dvBookServices .service_cost_2').css('display', 'none')
                $('.dvBookServices .service_cost_3').css('display', 'block')
            }
        }

        function callMeOnChangeDelivery() {
            if (document.getElementById('DeliverySelect-1').checked) {
                document.getElementById("delivery_des_p").innerHTML = "Vui lòng điền đầy đủ thông tin nơi nhận hàng ở Giỏ Hàng và Đặt Hàng, nhân viên chúng tôi sẽ liên hệ lại sớm nhất để xác nhận.";
                $('.dvBookDelivery .delivery_cost_1').css('display', 'block')
                $('.dvBookDelivery .delivery_cost_2').css('display', 'none')
                $('.dvBookDelivery .delivery_cost_3').css('display', 'none')
            }
            else if (document.getElementById('DeliverySelect-2').checked) {
                document.getElementById("delivery_des_p").innerHTML = "Vui lòng điền đầy đủ thông tin nơi giao hàng, và nơi nhận lại hàng, nhân viên chúng tôi sẽ liên hệ lại sớm nhất để xác nhận.";
                $('.dvBookDelivery .delivery_cost_1').css('display', 'none')
                $('.dvBookDelivery .delivery_cost_2').css('display', 'block')
                $('.dvBookDelivery .delivery_cost_3').css('display', 'none')
            }
            else if (document.getElementById('DeliverySelect-3').checked) {
                document.getElementById("delivery_des_p").innerHTML = "Quý khách hàng tự đến văn phòng savina và lấy sản phẩm, chúng tôi có thể tư vấn qua điện thoại.";
                $('.dvBookDelivery .delivery_cost_1').css('display', 'none')
                $('.dvBookDelivery .delivery_cost_2').css('display', 'none')
                $('.dvBookDelivery .delivery_cost_3').css('display', 'block')
            }
        }

        function callMeOnChangeDeposit() {
            var x = document.getElementById("DepositSelectDropdown").value;
            if (x == "cashDeposit") {
                $('.dvBookDeposit .documentDeposit_1').css('display', 'block');
                $('.dvBookDeposit .documentDeposit_2').css('display', 'none');
                $('.dvBookDeposit .documentDeposit_3').css('display', 'none');
            }
            if (x == "propertyDeposit") {
                $('.dvBookDeposit .documentDeposit_2').css('display', 'block');
                $('.dvBookDeposit .documentDeposit_1').css('display', 'none');
                $('.dvBookDeposit .documentDeposit_3').css('display', 'none');
            }
            if (x == "documentDeposit") {
                $('.dvBookDeposit .documentDeposit_3').css('display', 'block');
                $('.dvBookDeposit .documentDeposit_2').css('display', 'none');
                $('.dvBookDeposit .documentDeposit_1').css('display', 'none');
            }
        }
    </script>

    <script type="text/javascript">
	    accounting.formatMoney(5318008);
    </script>
   
</asp:Content>

