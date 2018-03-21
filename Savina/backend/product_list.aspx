<%@ Page Title="" Language="C#" MasterPageFile="~/backend/adTemplate.master" AutoEventWireup="true" CodeFile="product_list.aspx.cs" Inherits="backend_product_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- page content -->
        <div class="right_col" role="main">
            <div class="">
              <div class="page-title">
                <div class="title_left">
                  <h3>DANH SÁCH SẢN PHẨM ĐANG CÓ</h3>
                </div>
  
                <div class="title_right">
                  <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Search for...">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Search!</button>
                      </span>
                    </div>
                  </div>
                </div>
              </div>
  
              <div class="clearfix"></div>

                <div class="col-md-12 col-sm-12 col-xs-12"> <!-- Table  -->
                    <div class="x_panel">
                      <div class="x_title">
                        <div class="col-md-6 col-sm-6 sol-xs-12">
                            <p style="margin-bottom: 2px;">Số 1: Sản phẩm sẽ hiển thị ở group SẢN PHẨM MỚI NHẤT  </p>
                            <p style="margin-bottom: 2px;">Số 2: Sản phẩm sẽ hiển thị ở group NHIỀU NGƯỜI TÌM NHẤT  </p>
                            <p style="margin-bottom: 2px;">Số 3: Sản phẩm sẽ hiển thị ở group SẢN PHẨM ĐỘC, LẠ </p>
                            <p style="margin-bottom: 2px;">Số 4: Sản phẩm sẽ hiển thị ở group CÓ GIÁ THUÊ RẺ NHẤT </p>
                        </div>
                        <div class="col-md-6 col-sm-6 sol-xs-12">
                            <p style="margin-bottom: 2px;">Số 5: Sản phẩm sẽ hiển thị ở group SẢN PHẨM GẦN BẠN </p>
                            <p style="margin-bottom: 2px;">Số 6: Sản phẩm sẽ hiển thị ở group RAO VẶT MIỄN PHÍ  </p>
                            <p style="margin-bottom: 2px;">Số 7: Sản phẩm sẽ hiển thị ở group SẢN PHẨM CHO TẶNG </p> 
                        </div>                      
                        <div class="clearfix"></div>
                      </div>
                      <div class="x_content">
                        <table id="datatable" class="table table-striped table-bordered">
                          <thead>
                            <tr>
                              <th>Mã sản phẩm</th>
                              <th>Tên sản phẩm</th>
                              <th>Thuộc Sub-3</th>
                              <th>Thuộc Sub-2</th>
                              <th>Thuộc Sub-1</th>
                              <th>Thuộc MainCategory</th>
                              <th>Thuê theo block</th>
                              <th>Thuê theo ngày</th>
                              <th>Ngày tạo</th>
                              <th>Hiển thị ở</th>
                              <th>Thao tác</th>
                            </tr>
                          </thead>
       
                          <tbody>                         
                            <tr>
                              <td>HS0001</td>
                              <td>Máy khoan bosch</td>
                              <td></td>
                              <td>Xe máy</td>
                              <td>Sửa xe</td>
                              <td>CÔng cụ, Dụng cụ</td>                              
                              <td>30,000</td>
                              <td>100,000</td>
                              <td>23/02/2018</td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Details($(this))">1</a>
                                <span><a href="#" class="btn btn-primary btn-xs" onclick="Edit($(this))">2</a></span>
                                <span><a href="#" class="btn btn-primary btn-xs" onclick="Disable($(this))">3</a></span></td>                         
                              <td><a href="#" class="btn btn-success btn-xs" onclick="Details($(this))"><i class="fa fa-info-circle"></i>&nbspDetails</a>
                                <span><a href="#" class="btn btn-info btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspEdit</a></span>
                                <span><a href="#" class="btn btn-danger btn-xs" onclick="Disable($(this))"><i class="fa fa-remove"></i>&nbspDisable</a></span></td>
                            </tr>
                            <tr>
                              <td>HS0013</td>
                              <td>Máy khoan bosch</td>
                              <td></td>
                              <td>Xe máy</td>
                              <td>Sửa xe</td>
                              <td>CÔng cụ, Dụng cụ</td>                              
                              <td>30,000</td>
                              <td>100,000</td>
                              <td>23/02/2018</td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Details($(this))">2</a>
                                <span><a href="#" class="btn btn-primary btn-xs" onclick="Edit($(this))">3</a></span>
                                <span><a href="#" class="btn btn-primary btn-xs" onclick="Disable($(this))">5</a></span></td>                         
                              <td><a href="#" class="btn btn-success btn-xs" onclick="Details($(this))"><i class="fa fa-info-circle"></i>&nbspDetails</a>
                                <span><a href="#" class="btn btn-info btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspEdit</a></span>
                                <span><a href="#" class="btn btn-danger btn-xs" onclick="Disable($(this))"><i class="fa fa-remove"></i>&nbspDisable</a></span></td>
                            </tr>
                            <tr>
                                <td>HS0002</td>
                                <td>Máy khoan bosch</td>
                                <td></td>
                                <td>Xe máy</td>
                                <td>Sửa xe</td>
                                <td>CÔng cụ, Dụng cụ</td>                              
                                <td>30,000</td>
                                <td>100,000</td>
                                <td>23/02/2018</td>
                                <td><a href="#" class="btn btn-primary btn-xs" onclick="Details($(this))">1</a>
                                  <span><a href="#" class="btn btn-primary btn-xs" onclick="Edit($(this))">3</a></span>
                                  <span><a href="#" class="btn btn-primary btn-xs" onclick="Disable($(this))">4</a></span></td>                         
                                <td><a href="#" class="btn btn-success btn-xs" onclick="Details($(this))"><i class="fa fa-info-circle"></i>&nbspDetails</a>
                                  <span><a href="#" class="btn btn-info btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspEdit</a></span>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Disable($(this))"><i class="fa fa-remove"></i>&nbspDisable</a></span></td>
                              </tr>                                              
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>  <!-- /Table -->
              </div> 
            </div>
         
        <!-- /page content -->
</asp:Content>

