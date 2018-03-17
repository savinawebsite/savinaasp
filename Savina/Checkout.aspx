<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li class="active">Checkout</li>
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
				<form id="checkout-form" class="clearfix">
					<div class="col-md-6">
						<div class="billing-details">
							<p>Đã có tài khoản rồi ? <a href="#">Login</a></p>
							<div class="section-title">
								<h3 class="title">THÔNG TIN KHÁCH HÀNG</h3>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="first-name" placeholder="Vui lòng nhập họ">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="last-name" placeholder="Vui lòng nhập tên">
							</div>
							<div class="form-group">
								<input class="input" type="email" name="email" placeholder="Vui lòng Email">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="address" placeholder="Vui lòng nhập địa chỉ">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="city" placeholder="Vui lòng nhập Thành phố">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="country" placeholder="Vui lòng nhập Quốc gia">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="zip-code" placeholder="Vui lòng nhập mã bưu điện">
							</div>
							<div class="form-group">
								<input class="input" type="tel" name="tel" placeholder="Vui lòng nhập số điện thoại liện hệ">
							</div>
							<div class="form-group">
								<div class="input-checkbox">
									<input type="checkbox" id="register">
									<label class="font-weak" for="register">Chọn để tạo Tài khoản với thông tin trên?</label>
									<div class="caption">
										<p>Vui lòng nhập vào Mật khẩu để đăng nhập, các thông tin trên sẽ được lưu trữ vào hệ thống, cho lần tới vui lòng sử dụng Email để đăng nhập.
											<p>
												<input class="input" type="password" name="password" placeholder="Nhập vào Mật khẩu">
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="shiping-methods">
							<div class="section-title">
								<h4 class="title">CHỌN PHƯƠNG THỨC GIAO/NHẬN SẢN PHẨM</h4>
							</div>
							<div class="input-checkbox">
								<input type="radio" name="shipping" id="shipping-1" checked>
								<label for="shipping-1">Gói giao hàng 1 -  $0.00</label>
								<div class="caption">
									<p>Thông tin hiển thị giải thích gói giao hàng này, miễn phí với các tĩnh thành gần văn phòng công ty.
										<p>
								</div>
							</div>
							<div class="input-checkbox">
								<input type="radio" name="shipping" id="shipping-2">
								<label for="shipping-2">GÓi giao hàng 2 - $4.00</label>
								<div class="caption">
									<p>Thông tin hiển thi các nơi không giao miễn phí mà sẽ tính phí, thông tin phí nêu ở đây.
										<p>
								</div>
							</div>
						</div>

						<div class="payments-methods">
							<div class="section-title">
								<h4 class="title">PHƯƠNG THỨC THANH TOÁN</h4>
							</div>
							<div class="input-checkbox">
								<input type="radio" name="payments" id="payments-1" checked>
								<label for="payments-1">Chuyển khoản ngân hàng</label>
								<div class="caption">
									<p>Vui lòng chuyển tiền thanh toán vào tài khoản dưới đây, ghi rõ mã đơn hàng.<p>
									<ul style="margin-left:30px;">
										<li>- Chu tài khoản:   Đăng Lê Nam</li>
										<li>- Số tài khoản:  123456789 </li>
										<li>- Ngân hàng:    ACB chi nhánh quận 2.</li>
									</ul>	
								</div>
							</div>
							<div class="input-checkbox">
								<input type="radio" name="payments" id="payments-2">
								<label for="payments-2">Thanh toán khi nhận hàng</label>
								<div class="caption">
									<p>Nhân viên chúng tôi sẽ nhận đủ số tiền khi giao hàng tại nhà, vui lòng kiểm tra sản phẩm kỹ trước giao tiền và ký biên nhận.
										<p>
								</div>
							</div>
							<div class="input-checkbox">
								<input type="radio" name="payments" id="payments-3">
								<label for="payments-3">Thanh toán bằng thẻ và Paypal</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
										<p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-12">
						<div class="order-summary clearfix">
							<div class="section-title">
								<h3 class="title">THÔNG TIN ĐƠN HÀNG</h3>
							</div>
							<table class="shopping-cart-table table">
								<thead>
									<tr>
										<th>TÊN SẢN PHẨM</th>
										<th></th>
										<th class="text-center">THỜI GIAN <br> NHẬN</th>
										<th class="text-center">THỜI GIAN <br>TRẢ</th>
										<th class="text-center">GIÁ</th>
										<th class="text-center">SỐ LƯỢNG</th>
										<th class="text-center">TỔNG CỘNG</th>
										<th class="text-right"></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="thumb"><img src="./img/thumb-product01.jpg" alt=""></td>
										<td class="details">
											<a href="#">Máy khoan Bosche</a>
											<ul>
												<li><span>Thông tin sản phẩm</span></li>
												<li><span>Phụ kiện đi kèm</span></li>
											</ul>
										</td>
										<td class="pickupTime text-center">25/2/2018 10:30 am</td>
										<td class="dropbackTime text-center">27/2/2018 10:30 am</td>									
										<td class="price text-center"><strong>150.000 đ</strong></td>
										<td class="qty text-center"><input class="input" type="number" value="1"></td>
										<td class="total text-center"><strong class="primary-color">150.000 đ</strong></td>
										<td class="text-right"><button class="main-btn icon-btn"><i class="fa fa-close"></i></button></td>
									</tr>
									<tr>
										<td class="thumb"><img src="./img/thumb-product01.jpg" alt=""></td>
										<td class="details">
												<a href="#">Dàn karaoke</a>
												<ul>
													<li><span>Thông tin sản phẩm</span></li>
													<li><span>Phụ kiện đi kèm</span></li>
												</ul>
											</td>
											<td class="pickupTime text-center">26/2/2018 03:30 pm</td>
											<td class="dropbackTime text-center">27/2/2018 10:30 am</td>	
											<td class="price text-center"><strong>2.500.000 đ</strong></td>
											<td class="qty text-center"><input class="input" type="number" value="1"></td>
											<td class="total text-center"><strong class="primary-color">150.000 đ</strong></td>
											<td class="text-right"><button class="main-btn icon-btn"><i class="fa fa-close"></i></button></td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>TỔNG CỘNG</th>
										<th colspan="2" class="sub-total">2.650.000 đ</th>
									</tr>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>PHÍ GIAO HÀNG</th>
										<td colspan="2">Free Shipping</td>
									</tr>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>TỔNG CỘNG PHẢI THANH TOÁN</th>
										<th colspan="2" class="total">2.650.000 đ</th>
									</tr>
								</tfoot>
							</table>
							<div class="pull-right">
								<button class="primary-btn">GỬI ĐƠN HÀNG</button>
							</div>
						</div>

					</div>
				</form>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->
</asp:Content>

