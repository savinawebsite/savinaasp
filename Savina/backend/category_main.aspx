<%@ Page Title="" Language="C#" MasterPageFile="~/backend/adTemplate.master" AutoEventWireup="true" CodeFile="category_main.aspx.cs" Inherits="backend_category_main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Begin - Javascript insert category to database -->
        <script type="text/javascript">  
            // $('form').submit(false);
            $(function()   
              {  
                $('#btnCreate').click(function () {
                    var cateName = $('#ipCateName').val();
                    var desc = $('#ipDesc').val();  
                    if (cateName != '' && desc != '') {
                    /*
                        
                        $.ajax  ({  
                            type: 'POST',  
                            url: '../backend/category_main.aspx/addCategory',
                            dataType: "json",
                            data: JSON.stringify({ cateName: cateName, desc: desc }),
                            contentType: 'application/json; charset =utf-8',
                            success: function (data)
                            {  
                                var obj = data.d;  
                                if (obj == 'true')   
                                {  
                                    $('#TextBox1').val('');  
                                    $('#TextBox2').val('');  
                                    $('#TextBox3').val('');  
                                    $('#TextBox4').val('');  
                                    alert("Data Saved Successfully");  
  
                                }  
                            },  
                            error: function(result)   
                            {  
                                alert("Error Occured, Try Again");  
                            }  
                        });  
                        */

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
                                    //logout success
                                    $('#ContentPlaceHolder1_divMainCateList').html(xmlhttp.responseText);
                                }
                            }
                        }
                        xmlhttp.open("GET", "../backend/adAjax.aspx?action=createMainCate&cateName=" + cateName + "&desc=" + desc + "", true);
                        xmlhttp.send();
                       
                    } else   
                    {  
                        alert("Pleae Fill all the Fields");  
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
                        <!-- <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">-->
    
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên Main-Category <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="ipCateName" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Mô tả nhanh <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="ipDesc" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
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
                              <button id="btnCreate" type="button" class="btn btn-success">Tạo</button>
                            </div>
                          </div>
    
                       <!-- </form> -->
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

