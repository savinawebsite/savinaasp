<%@ Page Title="" Language="C#" MasterPageFile="~/backend/adTemplate.master" AutoEventWireup="true" CodeFile="category_sub1.aspx.cs" Inherits="backend_category_sub1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
          <div class="modal fade" id="confirm-dialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" style="text-align:center;">SAVINA</h4>
                </div>
            
                <div class="modal-body">
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" id="btnCancel" data-dismiss="modal">Hủy</button>
                    <a class="btn btn-danger btn-ok" id="btnConfirm">Đồng ý</a>
                </div>
            </div>
        </div>
    </div>
          <input type="hidden" id="subCate1ID" /> 
      <input type="hidden" id="cateID" />
    <input type="hidden" id="actionType" />    

         <script type="text/javascript"> 
              $( document ).ready(function() {
                  fetchMainCate();
              });

             //get main cat list and fetch to select ui
              function fetchMainCate(){
                  var xmlhttp;
                  if (window.XMLHttpRequest) {
                      xmlhttp = new XMLHttpRequest();
                  }
                  else {
                      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange = function () {
                      if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                          if (xmlhttp.responseText != "error") {
                              $('#dvMainCate').html(xmlhttp.responseText);
                          }
                      }
                  }
                  xmlhttp.open("GET", "../backend/adAjax.aspx?action=fetchMainCate", true);
                  xmlhttp.send();
              }

              $('#btnCancel').click(function () {
                  ResetView();
              });

              $('#btnConfirm').click(function () {
                  var actionType = $('#actionType').val();
                  if (actionType == 'delete') {
                      var subCate1ID = $('#subCate1ID').val();
                      var xmlhttp;
                      if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                          xmlhttp = new XMLHttpRequest();
                      }
                      else {// code for IE6, IE5
                          xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                      }
                      xmlhttp.onreadystatechange = function () {
                          if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                              if (xmlhttp.responseText != "error") {
                                  //delete success
                                  ResetView()
                                  $('#ContentPlaceHolder1_dvSubCate1List').html(xmlhttp.responseText);
                              }
                          }
                      }
                      xmlhttp.open("GET", "../backend/adAjax.aspx?action=deleteSubCate1&subCate1ID=" + subCate1ID + "", true);
                      xmlhttp.send();
                  }
                  if (actionType == 'edit') {
                      var subCate1ID = $('#subCate1ID').val();
                      var subCat1Name = $('#ipSubCat1Name').val();
                      var subCat1Desc = $('#ipSubCat1Desc').val();
                      var subCat1Sort = $('#ipSubCat1Sort').val();
                      var mainCatID = $('#sltMainCate').val()
                      if (subCat1Name != '' && subCat1Desc != '' && subCat1Sort != 0) {
                          if (mainCatID != -1) {
                              var xmlhttp;
                              if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                                  xmlhttp = new XMLHttpRequest();
                              }
                              else {// code for IE6, IE5
                                  xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                              }
                              xmlhttp.onreadystatechange = function () {
                                  if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                                      if (xmlhttp.responseText != "error") {
                                          //edit sub cate 1 success
                                          ResetView()
                                          $('#ContentPlaceHolder1_dvSubCate1List').html(xmlhttp.responseText);
                                      }
                                  }
                              }
                              xmlhttp.open("GET", "../backend/adAjax.aspx?action=editSubCate1&subCate1ID=" + subCate1ID + "&subCat1Name=" + subCat1Name + "&subCat1Desc=" + subCat1Desc + "&subCat1Sort=" + subCat1Sort + "&mainCatID=" + mainCatID + "", true);
                              xmlhttp.send();
                          } else {
                              $(".modal-body").html("Vui lòng chọn một category");
                              $("#alertDialog").modal();
                              return false;
                          }
                      } else {
                          $(".modal-body").html("Vui lòng điền đầy đủ các thông tin");
                          $("#alertDialog").modal();
                          return false;
                      }
                  }
                  $('#confirm-dialog').modal('hide');
              });

              function Edit(elmnt, subCate1ID, subCate1Name, subCate1Desc, subCate1Sort, cateID) {
                  $('#ipSubCat1Name').val(subCate1Name);
                  $('#ipSubCat1Desc').val(subCate1Desc);
                  $('#ipSubCat1Sort').val(subCate1Sort);
                  $('#subCate1ID').val(subCate1ID);
                  $('#cateID').val(cateID);
                  $("#sltMainCate").val(cateID).change();
                  $('#actionType').val('edit');
                  $('#btnCreate').html('Sửa');
              }

              function EditConfirm(subCate1Name) {
                  $(".modal-body").html("Bạn chắc chắn muốn sửa mục \"" + subCate1Name + "\"?");
                  $("#confirm-dialog").modal();
              }

              function Delete(elmnt, subCate1ID, cateName) {
                  $(".modal-body").html("Bạn chắc chắn muốn xóa mục \"" + cateName + "\"?");
                  $("#confirm-dialog").modal();
                  $('#subCate1ID').val(subCate1ID);
                  $('#actionType').val('delete');
              }

              function ResetView() {
                  $('#ipSubCat1Name').val('');
                  $('#ipSubCat1Desc').val('');
                  $('#ipSubCat1Sort').val('');
                  $('#subCate1ID').val('');
                  $('#cateID').val('');
                  $('#actionType').val('');
                  $('#btnCreate').html('Tạo');
                  fetchMainCate();
              }

             //create subcate1 action
              $(function () {
                  $('#btnCreate').click(function () {
                      var subCat1Name = $('#ipSubCat1Name').val();
                      var subCat1Desc = $('#ipSubCat1Desc').val();
                      var subCat1Sort = $('#ipSubCat1Sort').val();
                      var mainCatID = $('#sltMainCate').val()
                      if (subCat1Name != '' && subCat1Desc != '' && subCat1Sort != 0) {
                          if (mainCatID != -1) {
                              var action = $('#btnCreate').text();
                              if (action == "Tạo") {
                                  var xmlhttp;
                                  if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                                      xmlhttp = new XMLHttpRequest();
                                  }
                                  else {// code for IE6, IE5
                                      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                                  }
                                  xmlhttp.onreadystatechange = function () {
                                      if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                                          if (xmlhttp.responseText != "error") {
                                              //create success
                                              ResetView()
                                              $('#ContentPlaceHolder1_dvSubCate1List').html(xmlhttp.responseText);
                                          }
                                      }
                                  }
                                  xmlhttp.open("GET", "../backend/adAjax.aspx?action=createSubCate1&subCat1Name=" + subCat1Name + "&subCat1Desc=" + subCat1Desc + "&subCat1Sort=" + subCat1Sort + "&mainCatID=" + mainCatID + "", true);
                                  xmlhttp.send();
                              }
                              if (action == "Sửa") {
                                  EditConfirm(subCat1Name)
                              }
                          } else {
                              $(".modal-body").html("Vui lòng chọn một category");
                              $("#alertDialog").modal();
                              return false;
                          }

                      } else {
                          $(".modal-body").html("Vui lòng điền đầy đủ các thông tin");
                          $("#alertDialog").modal();
                          return false;
                      }
                  });
              });

        </script>

    <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
              <div class="page-title">
                <div class="title_left">
                  <h3>QUẢN LÝ CATEGORY SUB 1</h3>
                </div>
  
                <div class="title_right">
                  <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Search for..."/>
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
                      <h2>Tạo Sub-1 mới</h2>
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
                        <form id="demo-form2" class="form-horizontal form-label-left">
    
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên Category Sub-1 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="ipSubCat1Name" required="required" class="form-control col-md-7 col-xs-12"/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Mô tả nhanh <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="ipSubCat1Desc" name="last-name" required="required" class="form-control col-md-7 col-xs-12"/>
                            </div>
                          </div>
                          <div class="form-group">
                              <label class="control-label col-md-3 col-sm-3 col-xs-12">Thuộc Main Category</label>
                              <div class="col-md-6 col-sm-6 col-xs-12" id="dvMainCate">
                                  <!--
                                <select class="form-control" id="sltMainCate">
                                    
                                  <option>Lựa chọn Main Category</option>
                                  <option>XE CỘ</option>
                                  <option>CÔNG CỤ, DỤNG CỤ</option>
                                  <option>MẸ VÀ BÉ</option>
                                  <option>CÔNG NGHIỆP XÂY DỰNG</option>
                                   
                                </select>
                                      -->
                              </div>
                            </div>
                            <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sort-arrange">Sort thứ tự <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="number" id="ipSubCat1Sort" name="sort-arrange" required="required" class="form-control col-md-7 col-xs-12"/>
                            </div>
                          </div>
                          <div class="ln_solid"></div>
                          <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                              <button class="btn btn-primary" type="button">Hủy</button>
                              <button class="btn btn-primary" type="reset">Reset</button>
                              <button id="btnCreate" type="button" class="btn btn-success">Tạo</button>
                            </div>
                          </div>
    
                        </form>
                      </div>
                  </div>
                </div> <!-- /Create new category -->

                <div class="col-md-12 col-sm-12 col-xs-12"> <!-- Table  -->
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>DANH SÁCH CATEGORY ĐANG CÓ</h2>
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
                      <div class="x_content" id="dvSubCate1List" runat="server">
                     

                      </div>
                    </div>
                  </div>  <!-- /Table -->
              </div> 
            </div>
          </div>
        <!-- /page content -->
</asp:Content>

