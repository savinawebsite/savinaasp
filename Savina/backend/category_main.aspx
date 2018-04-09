<%@ Page Title="" Language="C#" MasterPageFile="~/backend/adTemplate.master" AutoEventWireup="true" CodeFile="category_main.aspx.cs" Inherits="backend_category_main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" style="text-align:center;">SAVINA</h4>
                </div>
            
                <div class="modal-body">
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-danger btn-ok" id="btnDelete">Delete</a>
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" id="cateID" />
    <!-- Begin - Javascript insert category to database -->
        <script type="text/javascript"> 
            
       
            $('#btnDelete').click(function () {
                    var cateID = $('#cateID').val();
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
                                $('#confirm-delete').modal('hide');
                                $('#ContentPlaceHolder1_divMainCateList').html(xmlhttp.responseText);
                            }
                        }
                    }
                    xmlhttp.open("GET", "../backend/adAjax.aspx?action=deleteMainCate&cateID=" + cateID + "", true);
                    xmlhttp.send();
                });
      
            function Delete(elmnt, cateID, cateName) {
                $(".modal-body").html("Bạn chắc chắn muốn xóa mục \""+cateName+"\"?");
                $("#confirm-delete").modal();
                $('#cateID').val(cateID);
            }

            $(function()   
              {  
                $('#btnCreate').click(function () {
                    var cateName = $('#ipCateName').val();
                    var desc = $('#ipDesc').val();
                    var cateSort = $('#ipSort').val();
                    if (cateName != '' && desc != '' && cateSort != 0) {
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
                                    $('#ContentPlaceHolder1_divMainCateList').html(xmlhttp.responseText);
                                }
                            }
                        }
                        xmlhttp.open("GET", "../backend/adAjax.aspx?action=createMainCate&cateName=" + cateName + "&desc=" + desc + "&cateSort=" + cateSort + "", true);
                        xmlhttp.send();
                       
                    } else   
                    {  
                        $(".modal-body").html("Vui lòng điền đầy đủ các thông tin");
                        $("#alertDialog").modal();
                        return false;  
                    }  
                })  
            });  
        </script>  
    <!-- End - Javascript insert category to database -->



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
                         <form id="demo-form2" class="form-horizontal form-label-left">
    
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên Main-Category <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="ipCateName" required="required" class="form-control col-md-7 col-xs-12"/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Mô tả nhanh <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="ipDesc" name="last-name" required="required" class="form-control col-md-7 col-xs-12"/>
                            </div>
                          </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sort-arrange">Sort thứ tự <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="number" id="ipSort" name="sort-arrange" required="required" class="form-control col-md-7 col-xs-12"/>
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

                <div class="col-md-12 col-sm-12 col-xs-12">
                     <!-- Table  -->
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
    
                        <div class="table-responsive" id="divMainCateList" runat="server">
                             <!-- inner html from code behind -->
                        </div>     
                                                     
                      </div>
                    </div>
                    <!-- /Table -->
                </div>           
              </div> 
            </div>
          </div>     
    <!-- /page content -->
</asp:Content>

