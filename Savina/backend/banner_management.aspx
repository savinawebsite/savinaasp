﻿<%@ Page Title="" Language="C#" MasterPageFile="~/backend/adTemplate.master" AutoEventWireup="true" CodeFile="banner_management.aspx.cs" Inherits="backend_banner_management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- page content -->
        <div class="right_col" role="main">
            <div class="">
              <div class="page-title">
                <div class="title_left">
                  <h3>QUẢN LÝ CÁC BANNER TRANG INDEX</h3>
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
                <div class="col-md-12 col-sm-12 col-xs-12">   <!-- Main Banner -->
                  <div class="x_panel">
                    <div class="x_title">
                      <h2>Quản lý Main Slider </h2>
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
                        <div class="col-md-5 col-sm-5 col-xs-12">
                            <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
    
                              <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Mô tả slider <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Sort thứ tự <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <input type="text" id="sortArrange" name="sort-arrange" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                              </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Upload Image</label>
                                    <a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))" data-target="#pictureBtn"><i class="fa fa-cloud-upload"></i>&nbsp UPLOAD</a>

                                  </div>    
                            </form>
                        </div>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                            <table class="table table-striped table-bordered">
                          <thead>
                            <tr>
                              <th>STT</th>
                              <th>Vị trí hiển thị</th>
                              <th>Ngày upload</th>
                                <th>Image sẽ hiễn thị</th>
                              <th>Thao tác</th>                              
                            </tr>
                          </thead>
       
                          <tbody>                         
                            <tr>
                              <td>1</td>
                              <td>1</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner01.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-info btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbsp Edit</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td>3</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner01.jpg" class="imgBannerInTable" /></td>
                              <td><a href="#" class="btn btn-info btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbsp Edit</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>   
                            <tr>
                              <td>3</td>
                              <td>4</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner01.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-info btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbsp Edit</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>     
                            <tr>
                              <td>4</td>
                              <td>2</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner01.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-info btn-xs" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbsp Edit</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>                                                
                          </tbody>
                        </table>
                        </div>

                      </div>
                  </div>
                </div> <!-- /Main banner -->

                <div class="col-md-6 col-sm-6 col-xs-12"> <!-- 3 BANNER under main-slider  -->
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>3 banner dưới main slider</h2>
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
                        <table class="table table-striped table-bordered">
                          <thead>
                            <tr>
                              <th>STT</th>
                              <th>Vị trí hiển thị</th>
                              <th>Ngày upload</th>
                                <th>Image sẽ hiễn thị</th>
                              <th>Upload image</th>                              
                            </tr>
                          </thead>
       
                          <tbody>                         
                            <tr>
                              <td>1</td>
                              <td>Banner hiển thị bên trái</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner01.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td>Banner hiển thị ở giữa</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner01.jpg" class="imgBannerInTable" /></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>   
                            <tr>
                              <td>3</td>
                              <td>Banner hiển thị bên phải</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner01.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>                                                   
                          </tbody>
                        </table>
                      </div>
                    </div>
                </div>  <!-- /3 BANNER under main-slider -->
              
                <div class="col-md-6 col-sm-6 col-xs-12"> <!-- 3 BANNER on top horizontal  -->
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>3 BANNER NGANG Ở TRÊN</h2>
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
                        <table class="table table-striped table-bordered">
                          <thead>
                            <tr>
                              <th>STT</th>
                              <th>Vị trí hiển thị</th>
                              <th>Ngày upload</th>
                                <th>Image sẽ hiễn thị</th>
                              <th>Upload image</th>                              
                            </tr>
                          </thead>
       
                          <tbody>                         
                            <tr>
                              <td>1</td>
                              <td>Banner hiển thị bên trái</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner02.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td>Banner hiển thị ở giữa</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner02.jpg" class="imgBannerInTable" /></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>   
                            <tr>
                              <td>3</td>
                              <td>Banner hiển thị bên phải</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner02.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>                                                  
                          </tbody>
                        </table>
                      </div>
                    </div>
                </div>  <!-- /3 BANNER on top horizontal -->         
                  
                  <div class="col-md-6 col-sm-6 col-xs-12"> <!-- 5 vertical banner on right panel -->
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>5 BANNER ĐỨNG BÊN CỘT PHẢI</h2>
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
                        <table class="table table-striped table-bordered">
                          <thead>
                            <tr>
                              <th>STT</th>
                              <th>Vị trí hiển thị</th>
                              <th>Ngày upload</th>
                                <th>Image sẽ hiễn thị</th>
                              <th>Upload image</th>                              
                            </tr>
                          </thead>
       
                          <tbody>                         
                            <tr>
                              <td>1</td>
                              <td>Thứ 1 từ trên xuống</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner03.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td>Thứ 2 từ trên xuống</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner03.jpg" class="imgBannerInTable" /></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>   
                            <tr>
                              <td>3</td>
                              <td>Thứ 3 từ trên xuống</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner03.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr> 
                            <tr>
                              <td>4</td>
                              <td>Thứ 4 từ trên xuống</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner03.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>  
                            <tr>
                              <td>5</td>
                              <td>Thứ 5 từ trên xuống</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner03.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>                                              
                          </tbody>
                        </table>
                      </div>
                    </div>
                </div>  <!-- /5 vertical banner on right panel -->  
                  
                  <div class="col-md-6 col-sm-6 col-xs-12"> <!-- 3 BANNER at the bottom -->
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>3 BANNER Ở DƯỚI (1 TRÁI 2 PHẢI)</h2>
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
                        <table class="table table-striped table-bordered">
                          <thead>
                            <tr>
                              <th>STT</th>
                              <th>Vị trí hiển thị</th>
                              <th>Ngày upload</th>
                                <th>Image sẽ hiễn thị</th>
                              <th>Upload image</th>                              
                            </tr>
                          </thead>
       
                          <tbody>                         
                            <tr>
                              <td>1</td>
                              <td>Banner lớn hiển thị bên trái</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner02.jpg" class="imgBannerInTable"/></td>
                             <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td>Banner nhỏ hiển thị bên phải trên</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner02.jpg" class="imgBannerInTable" /></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>   
                            <tr>
                              <td>3</td>
                              <td>Banner nhỏ hiển thị bên phải dưới</td>
                              <td>23/3/2018 10:00</td>
                                <td><img src="../backend/images/banner02.jpg" class="imgBannerInTable"/></td>
                              <td><a href="#" class="btn btn-primary btn-xs" onclick="Upload($(this))"><i class="fa fa-cloud-upload"></i>&nbsp Upload</a>
                                  <span><a href="#" class="btn btn-danger btn-xs" onclick="Delete($(this))"><i class="fa fa-trash"></i>&nbsp Delete</a></span>
                              </td>
                            </tr>                                                 
                          </tbody>
                        </table>
                      </div>
                    </div>
                </div>  <!-- /3 BANNER at the bottom -->          
                  
                                
              </div> 
            </div>
          </div>
        <!-- /page content -->
</asp:Content>

