<%@ Page Title="" Language="C#" MasterPageFile="~/backend/adTemplate.master" AutoEventWireup="true" CodeFile="category_sub2.aspx.cs" Inherits="backend_category_sub2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- MODEL DIALOG CONFIRM -->
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

    <!-- HIDDEN FIELD -->
     <input type="hidden" id="subCate2ID" /> 
      <input type="hidden" id="subCate1ID" /> 
      <input type="hidden" id="cateID" />
      <input type="hidden" id="actionType" /> 
      <input type="hidden" value="false" id="loadSubCate1Flag" />  

     
         <script type="text/javascript"> 
              $( document ).ready(function() {
                  fetchMainCate();
                  fetchSubCate1(0);
              });

              function mainCateOnChange(sel) {
                  fetchSubCate1(sel.value);
                  var loadSubCate1Flag = $("#loadSubCate1Flag").val();
                  if (loadSubCate1Flag == 'true') {
                      var subCate1ID = $('#subCate1ID').val();
                      $("#sltSubCate1").val(subCate1ID).change();
                      $("#loadSubCate1Flag").val('false');
                  }
              }

              //get MAIN CATE list and fetch to select ui
              function fetchMainCate() {
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

             //get SUB CATE 1 list and fetch to select ui
              function fetchSubCate1(mainCateID) {
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
                              $('#dvSubCate1').html(xmlhttp.responseText);
                          }
                      }
                  }
                  xmlhttp.open("GET", "../backend/adAjax.aspx?action=fetchSubCate1&mainCateID=" + mainCateID + "", true);
                  xmlhttp.send();
              }

              $('#btnCancel').click(function () {
                  ResetView();
              });

              $('#btnConfirm').click(function () {
                  var actionType = $('#actionType').val();
                  if (actionType == 'delete') {
                      var subCate2ID = $('#subCate2ID').val();
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
                                  $('#ContentPlaceHolder1_dvSubCate2List').html(xmlhttp.responseText);
                              }
                          }
                      }
                      xmlhttp.open("GET", "../backend/adAjax.aspx?action=deleteSubCate2&subCate2ID=" + subCate2ID + "", true);
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

              function Edit(elmnt, subCate2ID, subCate2Name, subCate2Desc, subCate2Sort, mainCateID, subCate1ID) {
                  $('#ipSubCate2Name').val(subCate2Name);
                  $('#ipSubCate2Desc').val(subCate2Desc);
                  $('#ipSubCate2Sort').val(subCate2Sort);
                  $('#subCate1ID').val(subCate1ID);
                  $('#subCate2ID').val(subCate2ID);
                  $('#cateID').val(mainCateID);
                  $("#loadSubCate1Flag").val('true');
                  $("#sltMainCate").val(mainCateID).change();
                  $('#actionType').val('edit');
                  $('#btnCreate').html('Sửa');
              }

              function EditConfirm(subCate2Name) {
                  $(".modal-body").html("Bạn chắc chắn muốn sửa mục \"" + subCate2Name + "\"?");
                  $("#confirm-dialog").modal();
              }

              function Delete(elmnt, subCate2ID, subCate2Name) {
                  $(".modal-body").html("Bạn chắc chắn muốn xóa mục \"" + subCate2Name + "\"?");
                  $("#confirm-dialog").modal();
                  $('#subCate2ID').val(subCate2ID);
                  $('#actionType').val('delete');
              }

              //create subcate1 action
              $(function () {
                  $('#btnCreate').click(function () {
                      var subCate2Name = $('#ipSubCate2Name').val();
                      var subCate2Desc = $('#ipSubCate2Desc').val();
                      var subCate2Sort = $('#ipSubCate2Sort').val();
                      var mainCateID = $('#sltMainCate').val()
                      var subCate1ID = $('#sltSubCate1').val()
                      if (subCate2Name != '' && subCate2Desc != '' && subCate2Sort != 0) {
                          if (mainCateID != -1 || subCate1ID != -1) {
                              var action = $('#btnCreate').text();
                              if (action == "Tạo") {
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
                                              //create success
                                              ResetView()
                                              $('#ContentPlaceHolder1_dvSubCate2List').html(xmlhttp.responseText);
                                          }
                                      }
                                  }
                                  xmlhttp.open("GET", "../backend/adAjax.aspx?action=createSubCate2&subCate2Name=" + subCate2Name + "&subCate2Desc=" + subCate2Desc + "&subCate2Sort=" + subCate2Sort + "&mainCateID=" + mainCateID + "&subCate1ID=" + subCate1ID + "", true);
                                  xmlhttp.send();
                              }
                              if (action == "Sửa") {
                                  EditConfirm(subCate2Name)
                              }
                          } else {
                              $(".modal-body").html("Vui lòng chọn một category và sub category");
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

              function ResetView() {
                  $('#ipSubCate2Name').val('');
                  $('#ipSubCate2Desc').val('');
                  $('#ipSubCate2Sort').val('');
                  $('#subCate2ID').val('');
                  $('#cateID').val('');
                  $('#actionType').val('');
                  $('#btnCreate').html('Tạo');
                  fetchMainCate();
                  fetchSubCate1(0);
              }



          </script>




<!-- page content -->
        <div class="right_col" role="main">
            <div class="">
              <div class="page-title">
                <div class="title_left">
                  <h3>QUẢN LÝ CATEGORY SUB 2</h3>
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
                      <h2>Tạo Sub-2 mới</h2>
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
                        <form id="demo-form2" data-parsley-validate ="1" class="form-horizontal form-label-left">
    
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên Category Sub-2 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="ipSubCate2Name" required="required" class="form-control col-md-7 col-xs-12"/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Mô tả nhanh <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="ipSubCate2Desc" name="last-name" required="required" class="form-control col-md-7 col-xs-12"/>
                            </div>
                          </div>
                          <div class="form-group">
                              <label class="control-label col-md-3 col-sm-3 col-xs-12">Thuộc Main Category <span class="required">*</span></label>
                              <div class="col-md-6 col-sm-6 col-xs-12" id="dvMainCate">
                                  <!--
                                    <select class="form-control">
                                      <option>Lựa chọn Main Category</option>
                                      <option>XE CỘ</option>
                                      <option>CÔNG CỤ, DỤNG CỤ</option>
                                    </select>
                                  -->
                              </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Thuộc Sub Category 1 <span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6 col-xs-12" id="dvSubCate1">
                                  <!--<select class="form-control">
                                    <option>Lựa chọn Category-1</option>
                                    <option>Sửa xe</option>
                                    <option>Làm vườn</option>
                                    <option>Tự lái</option>
                                    <option>Có người lái</option>
                                  </select>-->
                                </div>
                              </div>
                            <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sort-arrange">Sort thứ tự <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="number" id="ipSubCate2Sort" name="sort-arrange" required="required" class="form-control col-md-7 col-xs-12"/>
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
                      <div class="x_content" id="dvSubCate2List" runat="server">
                          <!--
                        <table id="datatable" class="table table-striped table-bordered">
                          <thead>
                            <tr>
                              <th>Tên Sub-2</th>
                              <th>Mô tả nhanh</th>
                              <th>Thuộc Sub-1</th>
                              <th>Thuộc MainCategory</th>
                              <th>Tình trạng</th>
                              <th>Ngày tạo</th>
                              <th>Thao tác</th>
                            </tr>
                          </thead>
       
                          <tbody>                         
                            <tr>
                              <td>Xe oto</td>
                              <td>mô tả</td>
                              <td>Sửa xe</td>
                              <td>CÔng cụ, Dụng cụ</td>
                              <td>Enable</td>
                              <td>23/02/2018 15:25:50</td>
                              <td><a href="#" class="btn btn-info btn-xs purple" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspEdit</a>
                                <span><a href="#" class="btn btn-danger btn-xs black" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspDelete</a></span></td>
                            </tr>
                            <tr>
                              <td>hãng BMW</td>
                              <td>mô tả</td>
                              <td>Xe oto bán</td>
                              <td>Xe cộ</td>
                              <td>Enable</td>
                              <td>23/02/2018 15:25:50</td>
                              <td><a href="#" class="btn btn-info btn-xs purple" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspEdit</a>
                                <span><a href="#" class="btn btn-danger btn-xs black" onclick="Edit($(this))"><i class="fa fa-edit"></i>&nbspDelete</a></span></td>
                            </tr>                                                     
                          </tbody>
                        </table>
                          -->
                      </div>
                    </div>
                  </div>  <!-- /Table -->
              </div> 
            </div>
          </div>
        <!-- /page content -->
</asp:Content>

