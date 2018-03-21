<%@ Page Title="" Language="C#" MasterPageFile="~/backend/adTemplate.master" AutoEventWireup="true" CodeFile="customer_group.aspx.cs" Inherits="backend_customer_group" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- page content -->
        <div class="right_col" role="main">
            <div class="">
              <div class="page-title">
                <div class="title_left">
                  <h3>QUẢN LÝ NHÓM KHÁCH HÀNG</h3>
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
  
              <div class="row">   
                <div class="col-md-12 col-sm-12 col-xs-12">   <!-- Create new category -->
                  <div class="x_panel">
                    <div class="x_title">
                      <h2>Tạo nhóm khách hàng mới</h2>
                      <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                      </ul>
                      <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br />
                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                           <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Mã nhóm khách hàng <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="customerGroupCode" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên nhóm khách hàng <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="customerGroupName" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Mô tả về nhóm <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="customerGroupDescription" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Giá trị cần <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="customerGroupCostTarget" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Chọn trạng thái</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <div id="gender" class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                      <input type="radio" name="gender" value="male"> &nbsp; Enable &nbsp;
                                    </label>
                                    <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                      <input type="radio" name="gender" value="female"> Disable
                                    </label>
                                  </div>
                                </div>
                              </div>
                          <div class="ln_solid"></div>
                          <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                              <button class="btn btn-primary" type="reset">Reset</button>
                              <button type="submit" class="btn btn-success">Khởi tạo</button>
                            </div>
                          </div>
    
                        </form>
                      </div>
                  </div>
                </div> <!-- /Create new category -->

                <div class="col-md-12 col-sm-12 col-xs-12"> <!-- Table  -->
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>DANH SÁCH NHÓM KHÁCH HÀNG ĐANG CÓ</h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                          </li>
                          <li><a class="close-link"><i class="fa fa-close"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>
                      <div class="x_content">
                        <table id="datatable" class="table table-striped table-bordered">
                          <thead>
                            <tr>
                              <th>Mã nhóm</th>
                              <th>Tên nhóm</th>
                              <th>Mô tả về nhóm</th>
                               <th>Giá trị cần</th>
                              <th>Tình trạng</th>
                              <th>Ngày tạo</th>
                              <th>Thao tác</th>
                            </tr>
                          </thead>
       
                          <tbody>                         
                            <tr>
                              <td>CUSGR001</td>
                              <td>Khách bình thường</td>
                              <td>Là nhóm khách hàng mới được tạo, chưa được phúc lợi gì cả</td>
                              <td>0</td>
                               <td>Enable</td>
                              <td>23/02/2018 15:25:50</td>
                              <td><a href="#" class="btn btn-info btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspEdit</a>
                                <span><a href="#" class="btn btn-danger btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspDelete</a></span></td>
                            </tr>
                            <tr>
                              <td>CUSGR002</td>
                              <td>Khách hàng thân thiết</td>
                              <td>Là nhóm khách hàng đã dùng dịch vụ lâu, thanh toán tới giá trị trên 10 triệu</td>
                              <td>10.000.000</td>
                               <td>Enable</td>
                              <td>23/02/2018 15:25:50</td>
                              <td><a href="#" class="btn btn-info btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspEdit</a>
                                <span><a href="#" class="btn btn-danger btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspDelete</a></span></td>
                            </tr>                                                    
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>  <!-- /Table -->
              </div> 
            </div>
          </div>
        <!-- /page content -->
</asp:Content>

