<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


	<!-- HOME -->
	<div id="home" style="background: #E9E9E9;">
		<!-- container -->
		<div class="container">
			<!-- home wrap -->
			<div class="home-wrap">
				<!-- home slick -->
				<div id="home-slick" class="mainbanner-height">
					<!-- banner -->
					<div class="banner banner-1">
						<img src="./img/banner01.jpg" alt="">
						<div class="banner-caption text-center">
							<h1>Bags sale</h1>
							<h3 class="white-color font-weak">Up to 50% Discount</h3>
							<button class="primary-btn">Shop Now</button>
						</div>
					</div>
					<!-- /banner -->

					<!-- banner -->
					<div class="banner banner-1">
						<img src="./img/banner02.jpg" alt="">
						<div class="banner-caption">
							<h1 class="primary-color">HOT DEAL<br><span class="white-color font-weak">Up to 50% OFF</span></h1>
							<button class="primary-btn">Shop Now</button>
						</div>
					</div>
					<!-- /banner -->

					<!-- banner -->
					<div class="banner banner-1">
						<img src="./img/banner03.jpg" alt="">
						<div class="banner-caption">
							<h1 class="white-color">New Product <span>Collection</span></h1>
							<button class="primary-btn">Shop Now</button>
						</div>
					</div>
					<!-- /banner -->
				</div>
				<!-- /home slick -->
				<!-- 3 banner under main slider -->
				<div id="home-3banner-small">
					<div class="col-md-4">
						<a href="#">
							<img src="./img/banner_mainslider_1.jpg" alt="" style="width: 98%;">
						</a>
					</div>
					<div class="col-md-4">
						<a href="#">
							<img src="./img/banner_mainslider_2.jpg" alt="" style="width: 98%;float: right">
						</a>
					</div>
					<div class="col-md-4">
						<a href="#">
							<img src="./img/banner_mainslider_3.jpg" alt="" style="width: 98%;float: right">
						</a>
					</div>
				</div>
					<!-- /3 banner under main slider -->
			</div>
			<!-- /home wrap -->
			
		</div>
		<!-- /container -->
	</div>
	<!-- /HOME -->

	<!-- section -->
	<div id="home-3banner-large" class="section" style="background: #E9E9E9;">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- banner -->
				<div class="col-md-4 col-sm-6">
					<a class="banner banner-1" href="#">
						<img src="./img/banner_home_3img_1.png" alt="">
					</a>
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="col-md-4 col-sm-6">
					<a class="banner banner-1" href="#">
						<img src="./img/banner_home_3img_2.png" alt="">
					</a>
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-3">
					<a class="banner banner-1" href="#">
						<img src="./img/banner_home_3img_3.png" alt="">
					</a>
				</div>
				<!-- /banner -->								
			</div>
			<!-- /row -->
			
			
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- all product show in body -->
	<div class="container">		
		<div class="col-md-12 col-sm-12 col-xs-12"	>
			<!--slide ALl product on left -->
			<div class="col-md-10 col-sm-12 col-xs-10 size-homeProductSlide">

				<div class="section SanPhamMoi">    <!-- section SAN PHAM MOI -->								
					<div class="col-md-12 section-title">  <!--Start title + category panel  -->
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="dvHomeBGTitle">
								<h2 class="titleHome">SẢN PHẨM MỚI NHẤT</h2>
							</div>
						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 slidepanel_category">
								<div>
									<span class="control control_prev"><i class="fa fa-chevron-left quickSlideArrow Left"></i></span>
									<span class="control control_next"><i class="fa fa-chevron-right quickSlideArrow Right"></i></span>
								</div>
										<div class="panel_category_content slide_content" data-current-page="1">
											<div class="panel_category_item">
												<div class="item_content active" data-icat="-1">
													<span class="item_icon"><i class="fa fa-hospital-o slideSizeFontAwesome"></i></span>
													<span class="item_text">Tất cả</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/1300,top_week/dien-thoai-vien-thong.html" data-icat="1300">
													<span class="item_icon"><i class="fa fa-phone slideSizeFontAwesome"></i></span>
													<span class="item_text">Điện thoại</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/392,top_week/may-tinh-linh-kien.html" data-icat="392">
													<span class="item_icon"><i class="fa fa-desktop slideSizeFontAwesome"></i></span>
													<span class="item_text">Máy tính</span>
												</div>
											</div>																
											<div class="panel_category_item">
												<div class="item_content" data-link="/3544,top_week/o-to-xe-may-xe-dap.html" data-icat="3544">
													<span class="item_icon"><i class="fa fa-automobile slideSizeFontAwesome"></i></span>
													<span class="item_text">Ô tô xe máy</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/640,top_week/thoi-trang-phu-kien.html" data-icat="640">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Thời trang</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/586,top_week/me-be.html" data-icat="586">
													<span class="item_icon"><i class="fa fa-child slideSizeFontAwesome"></i></span>
													<span class="item_text">Mẹ & bé</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Làm đẹp</span>
												</div>
											</div>
											<div class="panel_category_item">
													<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
														<span class="item_icon"><i class="fa fa-gear slideSizeFontAwesome"></i></span>
														<span class="item_text">Nội thất</span>
													</div>
												</div>
										</div>					
						</div>
					</div>  <!--End title + category panel  -->
						
					<div class="col-md-12 col-xs-12 ">
						<div>
							<div class="product-slick-dots-1 custom-dots"></div>
						</div>
						<div id="product-slick-1" class="product-slick"> <!--Start slide product San Pham moi-->
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
				</div> 	 <!-- end End secsion San Pham Moi -->	

				<div class="section SPNhieuNguoiTim">    <!-- section NHIEU NGUOI TIM -->							
					<div class="col-md-12 section-title">  <!--Start title + category panel  -->
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="dvHomeBGTitle SPTimNhieu">
								<h2 class="titleHome">NHIỀU NGƯỜI TÌM NHẤT</h2>
							</div>
						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 slidepanel_category">
								<div>
									<span class="control control_prev"><i class="fa fa-chevron-left quickSlideArrow Left"></i></span>
									<span class="control control_next"><i class="fa fa-chevron-right quickSlideArrow Right"></i></span>
								</div>
										<div class="panel_category_content slide_content" data-current-page="1">
											<div class="panel_category_item">
												<div class="item_content active" data-icat="-1" style="color:crimson; border-bottom-color:crimson">
													<span class="item_icon"><i class="fa fa-hospital-o slideSizeFontAwesome"></i></span>
													<span class="item_text">Tất cả</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/1300,top_week/dien-thoai-vien-thong.html" data-icat="1300">
													<span class="item_icon"><i class="fa fa-phone slideSizeFontAwesome"></i></span>
													<span class="item_text">Điện thoại</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/392,top_week/may-tinh-linh-kien.html" data-icat="392">
													<span class="item_icon"><i class="fa fa-desktop slideSizeFontAwesome"></i></span>
													<span class="item_text">Máy tính</span>
												</div>
											</div>																
											<div class="panel_category_item">
												<div class="item_content" data-link="/3544,top_week/o-to-xe-may-xe-dap.html" data-icat="3544">
													<span class="item_icon"><i class="fa fa-automobile slideSizeFontAwesome"></i></span>
													<span class="item_text">Ô tô xe máy</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/640,top_week/thoi-trang-phu-kien.html" data-icat="640">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Thời trang</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/586,top_week/me-be.html" data-icat="586">
													<span class="item_icon"><i class="fa fa-child slideSizeFontAwesome"></i></span>
													<span class="item_text">Mẹ & bé</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Làm đẹp</span>
												</div>
											</div>
											<div class="panel_category_item">
													<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
														<span class="item_icon"><i class="fa fa-gear slideSizeFontAwesome"></i></span>
														<span class="item_text">Nội thất</span>
													</div>
												</div>
										</div>					
						</div>
					</div>  <!--End title + category panel  -->

					<div class="col-md-12 col-xs-12 ">
						<div>
							<div class="product-slick-dots-2 custom-dots"></div>
						</div>
						<div id="product-slick-2" class="product-slick"> <!--Start slide product San Pham moi-->
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
				</div> 	 <!-- end End secsion Nhieu Nguoi Tim -->	

				<div class="section SPDocLa">    <!-- section SP DOC, LA -->							
					<div class="col-md-12 section-title">  <!--Start title + category panel  -->
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="dvHomeBGTitle SPDocLa">
								<h2 class="titleHome">SẢN PHẨM ĐỘC, LẠ</h2>
							</div>
						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 slidepanel_category">
								<div>
									<span class="control control_prev"><i class="fa fa-chevron-left quickSlideArrow Left"></i></span>
									<span class="control control_next"><i class="fa fa-chevron-right quickSlideArrow Right"></i></span>
								</div>
										<div class="panel_category_content slide_content" data-current-page="1">
											<div class="panel_category_item">
												<div class="item_content active" data-icat="-1" style="color:rgb(20, 33, 220); border-bottom-color:rgb(20, 33, 220)">
													<span class="item_icon"><i class="fa fa-hospital-o slideSizeFontAwesome"></i></span>
													<span class="item_text">Tất cả</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/1300,top_week/dien-thoai-vien-thong.html" data-icat="1300">
													<span class="item_icon"><i class="fa fa-phone slideSizeFontAwesome"></i></span>
													<span class="item_text">Điện thoại</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/392,top_week/may-tinh-linh-kien.html" data-icat="392">
													<span class="item_icon"><i class="fa fa-desktop slideSizeFontAwesome"></i></span>
													<span class="item_text">Máy tính</span>
												</div>
											</div>																
											<div class="panel_category_item">
												<div class="item_content" data-link="/3544,top_week/o-to-xe-may-xe-dap.html" data-icat="3544">
													<span class="item_icon"><i class="fa fa-automobile slideSizeFontAwesome"></i></span>
													<span class="item_text">Ô tô xe máy</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/640,top_week/thoi-trang-phu-kien.html" data-icat="640">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Thời trang</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/586,top_week/me-be.html" data-icat="586">
													<span class="item_icon"><i class="fa fa-child slideSizeFontAwesome"></i></span>
													<span class="item_text">Mẹ & bé</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Làm đẹp</span>
												</div>
											</div>
											<div class="panel_category_item">
													<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
														<span class="item_icon"><i class="fa fa-gear slideSizeFontAwesome"></i></span>
														<span class="item_text">Nội thất</span>
													</div>
												</div>
										</div>					
						</div>
					</div>  <!--End title + category panel  -->

					<div class="col-md-12 col-xs-12 ">
							<div>
								<div class="product-slick-dots-3 custom-dots"></div>
							</div>
							<div id="product-slick-3" class="product-slick"> <!--Start slide product San Pham moi-->
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
				</div> 	  <!-- end End secsion SP DOC, LA -->	


				<div class="section SPReNhat">    <!-- section SP GIA THUE RE NHAT -->							
					<div class="col-md-12 section-title">  <!--Start title + category panel  -->
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="dvHomeBGTitle SPReNhat">
								<h2 class="titleHome">CÓ GIÁ THUÊ RẺ NHẤT</h2>
							</div>
						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 slidepanel_category">
								<div>
									<span class="control control_prev"><i class="fa fa-chevron-left quickSlideArrow Left"></i></span>
									<span class="control control_next"><i class="fa fa-chevron-right quickSlideArrow Right"></i></span>
								</div>
										<div class="panel_category_content slide_content" data-current-page="1">
											<div class="panel_category_item">
												<div class="item_content active" data-icat="-1" style="color:rgb(10, 221, 56); border-bottom-color:rgb(10, 221, 56)">
													<span class="item_icon"><i class="fa fa-hospital-o slideSizeFontAwesome"></i></span>
													<span class="item_text">Tất cả</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/1300,top_week/dien-thoai-vien-thong.html" data-icat="1300">
													<span class="item_icon"><i class="fa fa-phone slideSizeFontAwesome"></i></span>
													<span class="item_text">Điện thoại</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/392,top_week/may-tinh-linh-kien.html" data-icat="392">
													<span class="item_icon"><i class="fa fa-desktop slideSizeFontAwesome"></i></span>
													<span class="item_text">Máy tính</span>
												</div>
											</div>																
											<div class="panel_category_item">
												<div class="item_content" data-link="/3544,top_week/o-to-xe-may-xe-dap.html" data-icat="3544">
													<span class="item_icon"><i class="fa fa-automobile slideSizeFontAwesome"></i></span>
													<span class="item_text">Ô tô xe máy</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/640,top_week/thoi-trang-phu-kien.html" data-icat="640">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Thời trang</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/586,top_week/me-be.html" data-icat="586">
													<span class="item_icon"><i class="fa fa-child slideSizeFontAwesome"></i></span>
													<span class="item_text">Mẹ & bé</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Làm đẹp</span>
												</div>
											</div>
											<div class="panel_category_item">
													<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
														<span class="item_icon"><i class="fa fa-gear slideSizeFontAwesome"></i></span>
														<span class="item_text">Nội thất</span>
													</div>
												</div>
										</div>					
						</div>
					</div>  <!--End title + category panel  -->

					<div class="col-md-12 col-xs-12 ">
							<div>
								<div class="product-slick-dots-4 custom-dots"></div>
							</div>
							<div id="product-slick-4" class="product-slick"> <!--Start slide product San Pham moi-->
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
				</div> 	  <!-- end End secsion SP GIA THUE RE NHAT -->

				<div class="section SPGanBan">    <!-- section SP GAN BAN-->								
					<div class="col-md-12 section-title">  <!--Start title + category panel  -->
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="dvHomeBGTitle SPGanBan">
								<h2 class="titleHome">SẢN PHẨM GẦN BẠN</h2>
							</div>
						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 slidepanel_category">
								<div>
									<span class="control control_prev"><i class="fa fa-chevron-left quickSlideArrow Left"></i></span>
									<span class="control control_next"><i class="fa fa-chevron-right quickSlideArrow Right"></i></span>
								</div>
										<div class="panel_category_content slide_content" data-current-page="1">
											<div class="panel_category_item">
												<div class="item_content active" data-icat="-1" style="color:rgb(221, 10, 158); border-bottom-color:rgb(221, 10, 158)">
													<span class="item_icon"><i class="fa fa-hospital-o slideSizeFontAwesome"></i></span>
													<span class="item_text">Tất cả</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/1300,top_week/dien-thoai-vien-thong.html" data-icat="1300">
													<span class="item_icon"><i class="fa fa-phone slideSizeFontAwesome"></i></span>
													<span class="item_text">Điện thoại</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/392,top_week/may-tinh-linh-kien.html" data-icat="392">
													<span class="item_icon"><i class="fa fa-desktop slideSizeFontAwesome"></i></span>
													<span class="item_text">Máy tính</span>
												</div>
											</div>																
											<div class="panel_category_item">
												<div class="item_content" data-link="/3544,top_week/o-to-xe-may-xe-dap.html" data-icat="3544">
													<span class="item_icon"><i class="fa fa-automobile slideSizeFontAwesome"></i></span>
													<span class="item_text">Ô tô xe máy</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/640,top_week/thoi-trang-phu-kien.html" data-icat="640">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Thời trang</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/586,top_week/me-be.html" data-icat="586">
													<span class="item_icon"><i class="fa fa-child slideSizeFontAwesome"></i></span>
													<span class="item_text">Mẹ & bé</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Làm đẹp</span>
												</div>
											</div>
											<div class="panel_category_item">
													<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
														<span class="item_icon"><i class="fa fa-gear slideSizeFontAwesome"></i></span>
														<span class="item_text">Nội thất</span>
													</div>
												</div>
										</div>					
						</div>
					</div>  <!--End title + category panel  -->

					<div class="col-md-12 col-xs-12 ">
							<div>
								<div class="product-slick-dots-5 custom-dots"></div>
							</div>
							<div id="product-slick-5" class="product-slick"> <!--Start slide product San Pham moi-->
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
				</div> 	  <!-- end End secsion SP GAN BAN -->
						

			</div>
		<!--/end slide ALl product on left -->	

		<!-- Advertisement panel on right -->
			<div id="home-advpanel-right" class="col-md-2 col-sm-2 col-xs-2">
					<div class="banner">
						<img src="./img/adv-banner-1.png" alt="Banner quảng cáo 1">
					</div>
					<div class="banner" style="margin-top:25px;">
						<img src="./img/adv-banner-2.png" alt="Banner quảng cáo 2">
					</div>
					<div class="banner" style="margin-top:25px;">
						<img src="./img/adv-banner-3.png" alt="Banner quảng cáo 2">
					</div>
					<div class="banner" style="margin-top:25px;">
						<img src="./img/adv-banner-4.png" alt="Banner quảng cáo 2">
					</div>
					<div class="banner" style="margin-top:25px;">
						<img src="./img/adv-banner-5.png" alt="Banner quảng cáo 2">
					</div>
			</div>
		<!-- /End Advertisement panel on right -->

		</div>	 <!-- /end all product show in body -->
	</div> <!-- container -->
	

	<!-- section HOT DEAL 3 block -->
	<div class="section section-grey" style="background: #E9E9E9;">
		<!-- container -->
		<div class="container" style="background: #fff;">
			<!-- row -->
			<div class="row">
				<!-- banner -->
				<div class="col-md-8">
					<div class="banner banner-1 banner-bottom-1">
						<img src="./img/banner13.jpg" alt="">
						<div class="banner-caption text-center">
							<h1 class="primary-color">HOT DEAL<br><span class="white-color font-weak">Up to 50% OFF</span></h1>
							<button class="primary-btn">Shop Now</button>
						</div>
					</div>
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="col-md-4 col-sm-6">
					<a class="banner banner-1 banner-bottom-1" href="#">
						<img src="./img/banner11.jpg" alt="">
						<div class="banner-caption text-center">
							<h2 class="white-color">NEW COLLECTION</h2>
						</div>
					</a>
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="col-md-4 col-sm-6">
					<a class="banner banner-1 banner-bottom-1" href="#">
						<img src="./img/banner12.jpg" alt="">
						<div class="banner-caption text-center">
							<h2 class="white-color">NEW COLLECTION</h2>
						</div>
					</a>
				</div>
				<!-- /banner -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- section RAO VAT, CHO TANG -->
	<div class="section" style="background: #E9E9E9;">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row" style="background: #fff;">
				<!-- section title -->
				<div class="col-md-12 section-title">
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="dvHomeBGTitle SPRaoVat">
								<h2 class="titleHome-adv">RAO VẶT MIỄN PHÍ</h2>
							</div>
						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 slidepanel_category">
								<div>
									<span class="control control_prev"><i class="fa fa-chevron-left quickSlideArrow Left"></i></span>
									<span class="control control_next"><i class="fa fa-chevron-right quickSlideArrow Right"></i></span>
								</div>
										<div class="panel_category_content slide_content" data-current-page="1">
											<div class="panel_category_item">
												<div class="item_content active" style="color:brown; border-bottom-color:brown" data-icat="-1">
													<span class="item_icon"><i class="fa fa-hospital-o slideSizeFontAwesome"></i></span>
													<span class="item_text">Tất cả</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/1300,top_week/dien-thoai-vien-thong.html" data-icat="1300">
													<span class="item_icon"><i class="fa fa-phone slideSizeFontAwesome"></i></span>
													<span class="item_text">Điện thoại</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/392,top_week/may-tinh-linh-kien.html" data-icat="392">
													<span class="item_icon"><i class="fa fa-desktop slideSizeFontAwesome"></i></span>
													<span class="item_text">Máy tính</span>
												</div>
											</div>																
											<div class="panel_category_item">
												<div class="item_content" data-link="/3544,top_week/o-to-xe-may-xe-dap.html" data-icat="3544">
													<span class="item_icon"><i class="fa fa-automobile slideSizeFontAwesome"></i></span>
													<span class="item_text">Ô tô xe máy</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/640,top_week/thoi-trang-phu-kien.html" data-icat="640">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Thời trang</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/586,top_week/me-be.html" data-icat="586">
													<span class="item_icon"><i class="fa fa-child slideSizeFontAwesome"></i></span>
													<span class="item_text">Mẹ và bé</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Làm đẹp</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/912,top_week/do-dung-sinh-hoat.html" data-icat="912">
													<span class="item_icon"><i class="fa fa-cogs slideSizeFontAwesome"></i></span>
													<span class="item_text">Đồ sinh hoạt</span>
												</div>
											</div>
											<div class="panel_category_item">
													<div class="item_content" data-link="/912,top_week/do-dung-sinh-hoat.html" data-icat="912">
														<span class="item_icon"><i class="fa fa-home slideSizeFontAwesome"></i></span>
														<span class="item_text">Nội,ngoại thất</span>
													</div>
												</div>
										</div>					
						</div>
					</div>
				<!-- section title -->

				<!-- Product Single -->
				<div class="col-md-2 col-sm-6 col-xs-6 dvHome-ProductFrame">
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
				</div>
				<!-- /Product Single -->
		
				<!-- Product Single -->
				<div class="col-md-2 col-sm-6 col-xs-6 dvHome-ProductFrame">
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
				</div>
				<!-- /Product Single -->
		
				<!-- Product Single -->
				<div class="col-md-2 col-sm-6 col-xs-6 dvHome-ProductFrame">
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
				</div>
				<!-- /Product Single -->
		
				<!-- Product Single -->
				<div class="col-md-2 col-sm-6 col-xs-6 dvHome-ProductFrame">
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
				</div>
					<!-- /Product Single -->

				<!-- Product Single -->
				<div class="col-md-2 col-sm-6 col-xs-6 dvHome-ProductFrame">
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
				</div>
						<!-- /Product Single -->

			</div>
			<!-- /row -->

			<!-- row -->
			<div class="row" style="background: #fff;">
				<!-- section title -->
				<div class="col-md-12 section-title">
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="dvHomeBGTitle SPChoTang">
								<h2 class="titleHome-adv">SẢN PHẨM CHO TẶNG</h2>
							</div>
						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 slidepanel_category">
								<div>
									<span class="control control_prev"><i class="fa fa-chevron-left quickSlideArrow Left"></i></span>
									<span class="control control_next"><i class="fa fa-chevron-right quickSlideArrow Right"></i></span>
								</div>
										<div class="panel_category_content slide_content" data-current-page="1">
											<div class="panel_category_item">
												<div class="item_content active" style="color:blueviolet; border-bottom-color:blueviolet" data-icat="-1">
													<span class="item_icon"><i class="fa fa-hospital-o slideSizeFontAwesome"></i></span>
													<span class="item_text">Tất cả</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/1300,top_week/dien-thoai-vien-thong.html" data-icat="1300">
													<span class="item_icon"><i class="fa fa-phone slideSizeFontAwesome"></i></span>
													<span class="item_text">Điện thoại</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/392,top_week/may-tinh-linh-kien.html" data-icat="392">
													<span class="item_icon"><i class="fa fa-desktop slideSizeFontAwesome"></i></span>
													<span class="item_text">Máy tính</span>
												</div>
											</div>																
											<div class="panel_category_item">
												<div class="item_content" data-link="/3544,top_week/o-to-xe-may-xe-dap.html" data-icat="3544">
													<span class="item_icon"><i class="fa fa-automobile slideSizeFontAwesome"></i></span>
													<span class="item_text">Ô tô xe máy</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/640,top_week/thoi-trang-phu-kien.html" data-icat="640">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Thời trang</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/586,top_week/me-be.html" data-icat="586">
													<span class="item_icon"><i class="fa fa-child slideSizeFontAwesome"></i></span>
													<span class="item_text">Mẹ và bé</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/2434,top_week/suc-khoe-sac-dep.html" data-icat="2434">
													<span class="item_icon"><i class="fa fa-diamond slideSizeFontAwesome"></i></span>
													<span class="item_text">Làm đẹp</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/912,top_week/do-dung-sinh-hoat.html" data-icat="912">
													<span class="item_icon"><i class="fa fa-cogs slideSizeFontAwesome"></i></span>
													<span class="item_text">Đồ sinh hoạt</span>
												</div>
											</div>
											<div class="panel_category_item">
												<div class="item_content" data-link="/912,top_week/do-dung-sinh-hoat.html" data-icat="912">
													<span class="item_icon"><i class="fa fa-gear slideSizeFontAwesome"></i></span>
													<span class="item_text">Nội,ngoại thất</span>
												</div>
											</div>
										</div>					
						</div>
					</div>
				<!-- section title -->

				<!-- Product Single -->
				<div class="col-md-2 col-sm-6 col-xs-6 dvHome-ProductFrame">
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
				</div>
					<!-- /Product Single -->
			
				<!-- Product Single -->
				<div class="col-md-2 col-sm-6 col-xs-6 dvHome-ProductFrame">
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
				</div>
				<!-- /Product Single -->
		
				<!-- Product Single -->
				<div class="col-md-2 col-sm-6 col-xs-6 dvHome-ProductFrame">
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
				</div>
				<!-- /Product Single -->
		
				<!-- Product Single -->
				<div class="col-md-2 col-sm-6 col-xs-6 dvHome-ProductFrame">
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
				</div>
					<!-- /Product Single -->

				<!-- Product Single -->
				<div class="col-md-2 col-sm-6 col-xs-6 dvHome-ProductFrame">
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
				</div>
						<!-- /Product Single -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->



</asp:Content>

