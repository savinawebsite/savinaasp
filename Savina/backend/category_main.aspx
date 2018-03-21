<%@ Page Title="" Language="C#" MasterPageFile="~/backend/adTemplate.master" AutoEventWireup="true" CodeFile="category_main.aspx.cs" Inherits="backend_category_main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page content -->
   <div class="right_col" role="main">
            <div class="">
              <div class="page-title">
                <div class="title_left">
                  <h3>QUẢN LÝ MAIN CATEGORY</h3>
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
                      <h2>Tạo 1 category mới</h2>
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
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên Main-Category <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Mô tả nhanh <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
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
                              <button class="btn btn-primary" type="button">Hủy</button>
                              <button class="btn btn-primary" type="reset">Reset</button>
                              <button type="submit" class="btn btn-success">Tạo</button>
                            </div>
                          </div>
    
                        </form>
                      </div>
                  </div>
                </div> <!-- /Create new category -->

                <div class="col-md-12 col-sm-12 col-xs-12"> <!-- Table  -->
                  <div class="x_panel">
                      <div class="x_title">
                        <h2>Danh sách Category đang có</h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                              <li><a href="#">Settings 1</a>
                              </li>
                              <li><a href="#">Settings 2</a>
                              </li>
                            </ul>
                          </li>
                          <li><a class="close-link"><i class="fa fa-close"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>
    
                      <div class="x_content">
    
                        <div class="table-responsive">
                          <table class="table table-striped jambo_table bulk_action">
                            <thead>
                              <tr class="headings">
                                <th>
                                  <input type="checkbox" id="check-all" class="flat">
                                </th>
                                <th class="column-title">ID </th>
                                <th class="column-title">Tên Main Category </th>
                                <th class="column-title">Mô Tả nhanh </th>
                                <th class="column-title">Tình trạng </th>
                                <th class="column-title">Ngày tạo </th>
                                <th class="column-title no-link last"><span class="nobr">Edit</span></th>
                                <th class="column-title no-link last"><span class="nobr">Delete</span></th>
                                <th class="bulk-actions" colspan="7">
                                  <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                </th>
                              </tr>
                            </thead>
    
                            <tbody>
                              <tr class="even pointer">
                                <td class="a-center ">
                                  <input type="checkbox" class="flat" name="table_records">
                                </td>
                                <td class=" ">1</td>
                                <td class=" ">CÔNG CỤ, DỤNG CỤ </td>
                                <td class=" ">Mô tả</td>
                                <td class=" ">Enable</td>
                                <td class=" ">23/02/2018 15:25:50</td>
                                <td class=" last"><a href="#" class="btn btn-info btn-xs purple" onclick="Edit($(this))"><i class="fa fa-edit"></i> Edit</a></td>
                                <td class=" last"><a href="#" class="btn btn-danger btn-xs black" onclick="Delete($(this))"><i class="fa fa-trash-o"></i> Delete</a>
                                </td>
                              </tr>
                              <tr class="event pointer">
                                  <td class="a-center ">
                                    <input type="checkbox" class="flat" name="table_records">
                                  </td>
                                  <td class=" ">2</td>
                                  <td class=" ">XE CỘ</td>
                                  <td class=" ">Mô tả</td>
                                  <td class=" ">Enable</td>
                                  <td class=" ">23/02/2018 15:25:50</td>
                                  <td class=" last"><a href="#" class="btn btn-info btn-xs purple" onclick="Edit($(this))"><i class="fa fa-edit"></i> Edit</a></td>
                                  <td class=" last"><a href="#" class="btn btn-danger btn-xs black" onclick="Delete($(this))"><i class="fa fa-trash-o"></i> Delete</a>
                                  </td>
                                </tr>
                              <tr class="odd pointer">
                                <td class="a-center ">
                                  <input type="checkbox" class="flat" name="table_records">
                                </td>
                                <td class=" ">3</td>
                                <td class=" ">MÁY ẢNH, MÁY QUAY</td>
                                <td class=" ">Mô tả</td>
                                <td class=" ">Enable</td>
                                <td class=" ">23/02/2018 15:25:50</td>
                                <td class=" last"><a href="#" class="btn btn-info btn-xs purple" onclick="Edit($(this))"><i class="fa fa-edit"></i> Edit</a></td>
                                <td class=" last"><a href="#" class="btn btn-danger btn-xs black" onclick="Delete($(this))"><i class="fa fa-trash-o"></i> Delete</a>
                                </td>
                              </tr>
                              <tr class="odd pointer">
                                  <td class="a-center ">
                                    <input type="checkbox" class="flat" name="table_records">
                                  </td>
                                  <td class=" ">4</td>
                                  <td class=" ">CÔNG NGHIỆP, XÂY DỰNG</td>
                                  <td class=" ">Mô tả</td>
                                <td class=" ">Enable</td>
                                <td class=" ">23/02/2018 15:25:50</td>
                                <td class=" last"><a href="#" class="btn btn-info btn-xs purple" onclick="Edit($(this))"><i class="fa fa-edit"></i> Edit</a></td>
                                <td class=" last"><a href="#" class="btn btn-danger btn-xs black" onclick="Delete($(this))"><i class="fa fa-trash-o"></i> Delete</a>
                                </td>
                                </tr>
                            </tbody>
                          </table>
                        </div>                                  
                      </div>
                    </div>
                </div>  <!-- /Table -->
              </div> 
            </div>
          </div>     
    <!-- /page content -->
</asp:Content>

