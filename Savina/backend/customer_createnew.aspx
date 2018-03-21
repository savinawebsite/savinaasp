<%@ Page Title="" Language="C#" MasterPageFile="~/backend/adTemplate.master" AutoEventWireup="true" CodeFile="customer_createnew.aspx.cs" Inherits="backend_customer_createnew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- page content -->
        <div class="right_col" role="main">
            <div class="">
              <div class="page-title">
                <div class="title_left">
                  <h3>TẠO KHÁCH HÀNG MỚI</h3>
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
                    <div class="x_content">
                        <br />
                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label class="control-label col-md-4 col-sm-4 col-xs-12">Mã khách hàng</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="customerCode" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-4 col-sm-4 col-xs-12">Họ khách hàng</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="customerLastname" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Tên khách hàng</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="customerFirstname" name="first-name" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>                                                       
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Email</label>
                                <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="email" id="customerEmail" name="email" required="required" class="form-control">
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Số điện thoại</label>
                                <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="number" id="customerPhoneNumber" name="phone-number" required="required" class="form-control">
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Địa chỉ</label>
                                <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="customerAddress" name="address" required="required" class="form-control">
                              </div>
                            </div>                          
                          </div>

                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Thuộc nhóm khách hàng</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <select class="form-control" id="customerGroupSelection">
                                  <option>Lựa chọn nhóm khách hàng</option>
                                  <option>Khách hàng thông thường</option>
                                  <option>Khách hàng thân thiết</option>
                                  <option>Khách hàng đặc biệt</option>
                                </select>
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Mô tả nhanh</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                  <textarea class="resizable_textarea form-control" id="customerDescription" placeholder="độ dài trường nhập liệu tự động mở rộng..."></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Chọn hình đại diện</label>
                              <div class="btn-group">
                                <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                              </div>
                            </div>
                          </div>
                          
                        </form>
                        <div class="ln_solid"></div>
                          <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                              <button class="btn btn-primary" type="reset">Reset</button>
                              <button type="submit" class="btn btn-success">Khởi Tạo</button>
                            </div>
                          </div>
                      </div>
                  </div>
                </div> <!-- /Create new category -->
            </div>
          </div>
        <!-- /page content -->
</asp:Content>

