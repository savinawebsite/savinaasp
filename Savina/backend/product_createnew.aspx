<%@ Page Title="" Language="C#" MasterPageFile="~/backend/adTemplate.master" AutoEventWireup="true" CodeFile="product_createnew.aspx.cs" Inherits="backend_product_createnew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
   

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- page content -->
        <div class="right_col" role="main">
            <div class="">
              <div class="page-title">
                <div class="title_left">
                  <h3>TẠO SẢN PHẨM MỚI</h3>
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
                        <form id="demo-form2" class="form-horizontal form-label-left" novalidate="novalidate">
                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label class="control-label col-md-4 col-sm-4 col-xs-12">Mã sản phẩm</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="productCode" name="product-code" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-4 col-sm-4 col-xs-12">Tên sản phẩm</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="productName" name="product-name" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Giá thuê theo block</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="priceByBlock" name="priceByBlock" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>
                             <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Giá thuê theo ngày</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="priceByDay" name="priceByDay" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>
                              <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Giá trị sản phẩm</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="productValue" name="priceByDay" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Thuộc Main Category</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <select class="form-control" id="productCategory">
                                  <option data-tokens="china">Lựa chọn Main Category</option>
                                  <option data-tokens="XE CỘ">XE CỘ</option>
                                  <option data-tokens="CÔNG CỤ, DỤNG CỤ">CÔNG CỤ, DỤNG CỤ</option>
                                  <option data-tokens="MẸ VÀ BÉ">MẸ VÀ BÉ</option>
                                  <option data-tokens="CÔNG NGHIỆP XÂY DỰNG">CÔNG NGHIỆP XÂY DỰNG</option>
                                </select>
                              </div>
                            </div>                            
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Mô tả nhanh</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                  <textarea class="resizable_textarea form-control" id="productDescription" placeholder="độ dài trường nhập liệu tự động mở rộng..."></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">DS sản phẩm đi kèm</label>
                                <div class="col-md-8 col-sm-8 col-xs-12">                 
					                <select name="from" id="lstview" class="form-control selectpicker" size="13" multiple="multiple" data-live-search="true" >
						                <option value="HTML">HTML</option>
						                <option value="2">CSS</option>
						                <option value="CSS">CSS3</option>
						                <option value="jQuery">jQuery</option>
						                <option value="JavaScript">JavaScript</option>
						                <option value="Bootstrap">Bootstrap</option>
						                <option value="MySQL">MySQL</option>
						                <option value="PHP">PHP</option>
					                </select>
                                </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Thêm phụ kiện đi kèm</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                  <select name="from" id="lstview" class="form-control selectpicker" size="13" multiple="multiple" data-live-search="true" >
						            <option value="HTML">HTML</option>
						            <option value="2">CSS</option>
						            <option value="CSS">CSS3</option>
						            <option value="jQuery">jQuery</option>
						            <option value="JavaScript">JavaScript</option>
						            <option value="Bootstrap">Bootstrap</option>
						            <option value="MySQL">MySQL</option>
						            <option value="PHP">PHP</option>
					            </select>
                            </div>                         
                             </div>
                            </div>

                          <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label class="control-label col-md-4 col-sm-4 col-xs-12">Còn mới %</label>
                                <div class="col-md-8 col-sm-8 col-xs-12">
                                  <input type="text" id="productStatus" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                              </div>
                            <div class="form-group">
                                <label class="control-label col-md-4 col-sm-4 col-xs-12">Chọn thành phố</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="productCity" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-4 col-sm-4 col-xs-12">Chọn quận/huyện</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="productDistrict" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Chọn phường/xã</label>
                              <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" id="productWard" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Chọn hình đại diện</label>
                              <div class="btn-group">
                                <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="control-label col-md-4 col-sm-4 col-xs-12">Add hình vào gallery</label>
                              <div class="btn-group">
                                <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                              </div>
                            </div>
                          </div>

                          <div class="col-md-12 col-sm-12 col-xs-12">                            
                        </div>

                
                          <div class="col-md-12 col-sm-12 col-xs-12">
                              <div class="form-group">
                                  <label class="control-label">Mô tả sản phẩm chi tiết</label>
                                  <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">
                                    <div class="btn-group">
                                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                      <ul class="dropdown-menu">
                                      </ul>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                      <ul class="dropdown-menu">
                                        <li>
                                          <a data-edit="fontSize 5">
                                            <p style="font-size:17px">Huge</p>
                                          </a>
                                        </li>
                                        <li>
                                          <a data-edit="fontSize 3">
                                            <p style="font-size:14px">Normal</p>
                                          </a>
                                        </li>
                                        <li>
                                          <a data-edit="fontSize 1">
                                            <p style="font-size:11px">Small</p>
                                          </a>
                                        </li>
                                      </ul>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                                      <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                      <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                      <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                      <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                      <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                      <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                      <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                      <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                      <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                      <div class="dropdown-menu input-append">
                                        <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                        <button class="btn" type="button">Add</button>
                                      </div>
                                      <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
                                      <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                                    </div>
                                  </div>
                                  <div id="editor-one" class="editor-wrapper" style="min-height:105px"></div>
                                  <textarea name="descr" id="descr" style="display:none;"></textarea>
                              </div>
                              <div class="form-group">
                                  <label class="control-label">Thông số kỹ thuật</label>
                                  <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">
                                    <div class="btn-group">
                                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                      <ul class="dropdown-menu">
                                      </ul>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                      <ul class="dropdown-menu">
                                        <li>
                                          <a data-edit="fontSize 5">
                                            <p style="font-size:17px">Huge</p>
                                          </a>
                                        </li>
                                        <li>
                                          <a data-edit="fontSize 3">
                                            <p style="font-size:14px">Normal</p>
                                          </a>
                                        </li>
                                        <li>
                                          <a data-edit="fontSize 1">
                                            <p style="font-size:11px">Small</p>
                                          </a>
                                        </li>
                                      </ul>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                                      <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                      <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                      <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                      <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                      <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                      <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                      <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                      <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                      <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                      <div class="dropdown-menu input-append">
                                        <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                        <button class="btn" type="button">Add</button>
                                      </div>
                                      <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
                                      <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                                    </div>
                                  </div>
                                  <div id="editor-one" class="editor-wrapper" style="min-height:105px"></div>
                                  <textarea name="descr" id="descr" style="display:none;"></textarea>
                              </div>
                              <div class="form-group">
                                  <label class="control-label">Hướng dẫn sử dụng</label>                                 
                                  <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">
                                    <div class="btn-group">
                                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                      <ul class="dropdown-menu">
                                      </ul>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                      <ul class="dropdown-menu">
                                        <li>
                                          <a data-edit="fontSize 5">
                                            <p style="font-size:17px">Huge</p>
                                          </a>
                                        </li>
                                        <li>
                                          <a data-edit="fontSize 3">
                                            <p style="font-size:14px">Normal</p>
                                          </a>
                                        </li>
                                        <li>
                                          <a data-edit="fontSize 1">
                                            <p style="font-size:11px">Small</p>
                                          </a>
                                        </li>
                                      </ul>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                                      <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                      <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                      <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                      <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                      <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                      <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                      <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                      <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                      <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                      <div class="dropdown-menu input-append">
                                        <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                        <button class="btn" type="button">Add</button>
                                      </div>
                                      <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                    </div>
                
                                    <div class="btn-group">
                                      <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
                                      <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                                    </div>
                                  </div>
                                  <div id="editor-one" class="editor-wrapper" style="min-height:105px"></div>
                                  <textarea name="descr" id="descr" style="display:none;"></textarea>
                                  <div class="col-md-6 col-sm-6 col-xs-12">
                                      <label class="control-label col-md-4 col-sm-4 col-xs-12">Add link video youtube</label>
                                      <div class="col-md-8 col-sm-8 col-xs-12">
                                        <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                                      </div>
                                  </div>
                              </div>
                              
                              <div class="col-md-3 col-sm-6 col-xs-12">  <%--Define price per block--%>
                                  <div class="form-group">
                                    <label class="control-label col-md-5 col-sm-5 col-xs-12" for="first-name">Số giờ cho 1 block <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select class="form-control selectpicker" id="listPricePerHour" onchange ="tbPricePerHourValue() ">
                                            <option>1 giờ</option>
                                            <option>2 giờ</option>
                                            <option>3 giờ</option>
                                            <option>4 giờ</option>
                                            <option>5 giờ</option>
                                            <option>6 giờ</option>
                                        </select>
                                    </div>
                                  </div>
                                  <div class="form-group set-price-per-hour">
                                      <table class="table table-striped table-bordered">
                                          <tr class="block-1">
                                              <td>block 1</td>
                                              <td><input type="text" id="priceblock1"></td>
                                          </tr>
                                          <tr class="block-2">
                                              <td>block 2</td>
                                              <td><input type="text" id="priceblock2"></td>
                                          </tr>
                                          <tr class="block-3">
                                              <td>block 3</td>
                                              <td><input type="text" id="priceblock3"></td>
                                          </tr>
                                          <tr class="block-4">
                                              <td>block 4</td>
                                              <td><input type="text" id="priceblock4"></td>
                                          </tr>
                                          <tr class="block-5">
                                              <td>block 5</td>
                                              <td><input type="text" id="priceblock5"></td>
                                          </tr>
                                          <tr class="block-6">
                                              <td>block 6</td>
                                              <td><input type="text" id="priceblock6"></td>
                                          </tr>
                                          <tr class="block-7">
                                              <td>block 7</td>
                                              <td><input type="text" id="priceblock7"></td>
                                          </tr>
                                          <tr class="block-8">
                                              <td>block 8</td>
                                              <td><input type="text" id="priceblock8"></td>
                                          </tr>
                                          <tr class="block-9">
                                              <td>block 9</td>
                                              <td><input type="text" id="priceblock9"></td>
                                          </tr>
                                          <tr class="block-10">
                                              <td>block 10</td>
                                              <td><input type="text" id="priceblock10"></td>
                                          </tr>
                                          <tr class="block-11">
                                              <td>block 11</td>
                                              <td><input type="text" id="priceblock11"></td>
                                          </tr>
                                          <tr class="block-12">
                                              <td>block 12</td>
                                              <td><input type="text" id="priceblock12"></td>
                                          </tr>
                                          <tr class="block-13">
                                              <td>block 13</td>
                                              <td><input type="text" id="priceblock13"></td>
                                          </tr>
                                          <tr class="block-14">
                                              <td>block 14</td>
                                              <td><input type="text" id="priceblock14"></td>
                                          </tr>
                                          <tr class="block-15">
                                              <td>block 15</td>
                                              <td><input type="text" id="priceblock15"></td>
                                          </tr>
                                          <tr class="block-16">
                                              <td>block 16</td>
                                              <td><input type="text" id="priceblock16"></td>
                                          </tr>
                                          <tr class="block-17">
                                              <td>block 17</td>
                                              <td><input type="text" id="priceblock17"></td>
                                          </tr>
                                          <tr class="block-18">
                                              <td>block 18</td>
                                              <td><input type="text" id="priceblock18"></td>
                                          </tr>
                                          <tr class="block-19">
                                              <td>block 19</td>
                                              <td><input type="text" id="priceblock19"></td>
                                          </tr>
                                          <tr class="block-20">
                                              <td>block 20</td>
                                              <td><input type="text" id="priceblock20"></td>
                                          </tr>
                                          <tr class="block-21">
                                              <td>block 21</td>
                                              <td><input type="text" id="priceblock21"></td>
                                          </tr>
                                          <tr class="block-22">
                                              <td>block 22</td>
                                              <td><input type="text" id="priceblock22"></td>
                                          </tr>
                                          <tr class="block-23">
                                              <td>block 23</td>
                                              <td><input type="text" id="priceblock23"></td>
                                          </tr>
                                          <tr class="block-24">
                                              <td>block 24</td>
                                              <td><input type="text" id="priceblock24"></td>
                                          </tr>
                                      </table>
                                  </div>
                              </div>

                              <div class="col-md-3 col-sm-6 col-xs-12">  <%--Define price per day--%>
                                   <div class="form-group">
                                    <label class="control-label col-md-5 col-sm-5 col-xs-12" for="first-name">Số Ngày cho 1 block <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select class="form-control selectpicker" id="listPricePerDay" onchange ="tbPricePerDayValue() ">
                                            <option>1 ngày</option>
                                            <option>2 ngày</option>
                                            <option>3 ngày</option>
                                            <option>4 ngày</option>
                                        </select>
                                    </div>
                                  </div>
                                  <div class="form-group set-price-per-day">
                                      <table class="table table-striped table-bordered">
                                          <tr class="block-1">
                                              <td>block 1</td>
                                              <td><input type="text" id="priceDayBlock1"></td>
                                          </tr>
                                          <tr class="block-2">
                                              <td>block 2</td>
                                              <td><input type="text" id="priceDayBlock2"></td>
                                          </tr>
                                          <tr class="block-3">
                                              <td>block 3</td>
                                              <td><input type="text" id="priceDayBlock3"></td>
                                          </tr>
                                          <tr class="block-4">
                                              <td>block 4</td>
                                              <td><input type="text" id="priceDayBlock4"></td>
                                          </tr>
                                          <tr class="block-5">
                                              <td>block 5</td>
                                              <td><input type="text" id="priceDayBlock5"></td>
                                          </tr>
                                          <tr class="block-6">
                                              <td>block 6</td>
                                              <td><input type="text" id="priceDayBlock6"></td>
                                          </tr>
                                          <tr class="block-7">
                                              <td>block 7</td>
                                              <td><input type="text" id="priceDayBlock7"></td>
                                          </tr>
                                          <tr class="block-8">
                                              <td>block 8</td>
                                              <td><input type="text" id="priceDayBlock8"></td>
                                          </tr>
                                          <tr class="block-9">
                                              <td>block 9</td>
                                              <td><input type="text" id="priceDayBlock9"></td>
                                          </tr>
                                          <tr class="block-10">
                                              <td>block 10</td>
                                              <td><input type="text" id="priceDayBlock10"></td>
                                          </tr>
                                          <tr class="block-11">
                                              <td>block 11</td>
                                              <td><input type="text" id="priceDayBlock11"></td>
                                          </tr>
                                          <tr class="block-12">
                                              <td>block 12</td>
                                              <td><input type="text" id="priceDayBlock12"></td>
                                          </tr>
                                          <tr class="block-13">
                                              <td>block 13</td>
                                              <td><input type="text" id="priceDayBlock13"></td>
                                          </tr>
                                          <tr class="block-14">
                                              <td>block 14</td>
                                              <td><input type="text" id="priceDayBlock14"></td>
                                          </tr>
                                          <tr class="block-15">
                                              <td>block 15</td>
                                              <td><input type="text" id="priceDayBlock15"></td>
                                          </tr>
                                          <tr class="block-16">
                                              <td>block 16</td>
                                              <td><input type="text" id="priceDayBlock16"></td>
                                          </tr>
                                          <tr class="block-17">
                                              <td>block 17</td>
                                              <td><input type="text" id="priceDayBlock17"></td>
                                          </tr>
                                          <tr class="block-18">
                                              <td>block 18</td>
                                              <td><input type="text" id="priceDayBlock18"></td>
                                          </tr>
                                          <tr class="block-19">
                                              <td>block 19</td>
                                              <td><input type="text" id="priceDayBlock19"></td>
                                          </tr>
                                          <tr class="block-20">
                                              <td>block 20</td>
                                              <td><input type="text" id="priceDayBlock20"></td>
                                          </tr>
                                          <tr class="block-21">
                                              <td>block 21</td>
                                              <td><input type="text" id="priceDayBlock21"></td>
                                          </tr>
                                          <tr class="block-22">
                                              <td>block 22</td>
                                              <td><input type="text" id="priceDayBlock22"></td>
                                          </tr>
                                          <tr class="block-23">
                                              <td>block 23</td>
                                              <td><input type="text" id="priceDayBlock23"></td>
                                          </tr>
                                          <tr class="block-24">
                                              <td>block 24</td>
                                              <td><input type="text" id="priceDayBlock24"></td>
                                          </tr>
                                          <tr class="block-25">
                                              <td>block 25</td>
                                              <td><input type="text" id="priceDayBlock25"></td>
                                          </tr>
                                          <tr class="block-26">
                                              <td>block 26</td>
                                              <td><input type="text" id="priceDayBlock26"></td>
                                          </tr>
                                          <tr class="block-27">
                                              <td>block 27</td>
                                              <td><input type="text" id="priceDayBlock27"></td>
                                          </tr>
                                          <tr class="block-28">
                                              <td>block 28</td>
                                              <td><input type="text" id="priceDayBlock28"></td>
                                          </tr>
                                          <tr class="block-29">
                                              <td>block 29</td>
                                              <td><input type="text" id="priceDayBlock29"></td>
                                          </tr>
                                          <tr class="block-30">
                                              <td>block 30</td>
                                              <td><input type="text" id="priceDayBlock30"></td>
                                          </tr>
                                      </table>
                                  </div>
                              </div>

                              <div class="col-md-4 col-sm-6 col-xs-12">  <%--Define price per quantity--%>
                                 <div class="form-group set-price-per-day">  
                                      <table id="myTable" class="table table-striped table-bordered">
	                                        <tr>
                                              <th>Số lượng từ</th>
                                              <th>Số lượng đến</th>
                                              <th>Giá tiền </th>
                                          </tr>
                                          <tr>
                                            <td><input type="text" id="priceQuantityRow1"></td>
                                            <td><input type="text" id="priceQuantityRow2"></td>
                                            <td><input type="text" id="priceQuantityRow3"></td>
                                          </tr>
                                        </table>
                                        <br>
                                        <button onclick="myFunction()">Try it</button>                                       
                                 </div>
                                </div>
                          </div>
                        </form>
                        <div class="ln_solid"></div>
                          <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                              <button class="btn btn-primary" type="button">Hủy</button>
                              <button class="btn btn-primary" type="reset">Reset</button>
                              <button type="submit" class="btn btn-success">Tạo</button>
                            </div>
                          </div>
                      </div>
                  </div>
                </div> <!-- /Create new category -->
            </div>
          </div>
        <!-- /page content -->
            <script>
                function myFunction() {
                    var table = document.getElementById("myTable");
                    var row = table.insertRow(1);
                    var cell1 = row.insertCell(0);
                    var cell2 = row.insertCell(0);
                    var cell3 = row.insertCell(1);  
                }
            </script>
            <script>
                function tbPricePerHourValue()
                {
                    var x = document.getElementById("listPricePerHour").value;
                    console.log(x);
                    if (x == "6 giờ")
                    {
                        $('.set-price-per-hour .block-24').css('display', 'none')
                        $('.set-price-per-hour .block-23').css('display', 'none')
                        $('.set-price-per-hour .block-22').css('display', 'none')
                        $('.set-price-per-hour .block-21').css('display', 'none')
                        $('.set-price-per-hour .block-20').css('display', 'none')
                        $('.set-price-per-hour .block-19').css('display', 'none')
                        $('.set-price-per-hour .block-18').css('display', 'none')
                        $('.set-price-per-hour .block-17').css('display', 'none')
                        $('.set-price-per-hour .block-16').css('display', 'none')
                        $('.set-price-per-hour .block-15').css('display', 'none')
                        $('.set-price-per-hour .block-14').css('display', 'none')
                        $('.set-price-per-hour .block-13').css('display', 'none')
                        $('.set-price-per-hour .block-12').css('display', 'none')
                        $('.set-price-per-hour .block-11').css('display', 'none')
                        $('.set-price-per-hour .block-10').css('display', 'none')
                        $('.set-price-per-hour .block-9').css('display', 'none')
                        $('.set-price-per-hour .block-8').css('display', 'none')
                        $('.set-price-per-hour .block-7').css('display', 'none')
                        $('.set-price-per-hour .block-6').css('display', 'none')
                        $('.set-price-per-hour .block-5').css('display', 'none')
                        $('.set-price-per-hour .block-4').css('display', 'block')
                        $('.set-price-per-hour .block-3').css('display', 'block')
                        $('.set-price-per-hour .block-2').css('display', 'block')
                        $('.set-price-per-hour .block-1').css('display', 'block')
                    }
                    if (x == "5 giờ")
                    {
                        $('.set-price-per-hour .block-24').css('display', 'none')
                        $('.set-price-per-hour .block-23').css('display', 'none')
                        $('.set-price-per-hour .block-22').css('display', 'none')
                        $('.set-price-per-hour .block-21').css('display', 'none')
                        $('.set-price-per-hour .block-20').css('display', 'none')
                        $('.set-price-per-hour .block-19').css('display', 'none')
                        $('.set-price-per-hour .block-18').css('display', 'none')
                        $('.set-price-per-hour .block-17').css('display', 'none')
                        $('.set-price-per-hour .block-16').css('display', 'none')
                        $('.set-price-per-hour .block-15').css('display', 'none')
                        $('.set-price-per-hour .block-14').css('display', 'none')
                        $('.set-price-per-hour .block-13').css('display', 'none')
                        $('.set-price-per-hour .block-12').css('display', 'none')
                        $('.set-price-per-hour .block-11').css('display', 'none')
                        $('.set-price-per-hour .block-10').css('display', 'none')
                        $('.set-price-per-hour .block-9').css('display', 'none')
                        $('.set-price-per-hour .block-8').css('display', 'none')
                        $('.set-price-per-hour .block-7').css('display', 'none')
                        $('.set-price-per-hour .block-6').css('display', 'none')
                        $('.set-price-per-hour .block-5').css('display', 'block')
                        $('.set-price-per-hour .block-4').css('display', 'block')
                        $('.set-price-per-hour .block-3').css('display', 'block')
                        $('.set-price-per-hour .block-2').css('display', 'block')
                        $('.set-price-per-hour .block-1').css('display', 'block')
                    }
                    if (x == "4 giờ")
                    {
                        $('.set-price-per-hour .block-24').css('display', 'none')
                        $('.set-price-per-hour .block-23').css('display', 'none')
                        $('.set-price-per-hour .block-22').css('display', 'none')
                        $('.set-price-per-hour .block-21').css('display', 'none')
                        $('.set-price-per-hour .block-20').css('display', 'none')
                        $('.set-price-per-hour .block-19').css('display', 'none')
                        $('.set-price-per-hour .block-18').css('display', 'none')
                        $('.set-price-per-hour .block-17').css('display', 'none')
                        $('.set-price-per-hour .block-16').css('display', 'none')
                        $('.set-price-per-hour .block-15').css('display', 'none')
                        $('.set-price-per-hour .block-14').css('display', 'none')
                        $('.set-price-per-hour .block-13').css('display', 'none')
                        $('.set-price-per-hour .block-12').css('display', 'none')
                        $('.set-price-per-hour .block-11').css('display', 'none')
                        $('.set-price-per-hour .block-10').css('display', 'none')
                        $('.set-price-per-hour .block-9').css('display', 'none')
                        $('.set-price-per-hour .block-8').css('display', 'none')
                        $('.set-price-per-hour .block-7').css('display', 'none')
                        $('.set-price-per-hour .block-6').css('display', 'block')
                        $('.set-price-per-hour .block-5').css('display', 'block')
                        $('.set-price-per-hour .block-4').css('display', 'block')
                        $('.set-price-per-hour .block-3').css('display', 'block')
                        $('.set-price-per-hour .block-2').css('display', 'block')
                        $('.set-price-per-hour .block-1').css('display', 'block')
                    }
                    if (x == "3 giờ")
                    {
                        $('.set-price-per-hour .block-24').css('display', 'none')
                        $('.set-price-per-hour .block-23').css('display', 'none')
                        $('.set-price-per-hour .block-22').css('display', 'none')
                        $('.set-price-per-hour .block-21').css('display', 'none')
                        $('.set-price-per-hour .block-20').css('display', 'none')
                        $('.set-price-per-hour .block-19').css('display', 'none')
                        $('.set-price-per-hour .block-18').css('display', 'none')
                        $('.set-price-per-hour .block-17').css('display', 'none')
                        $('.set-price-per-hour .block-16').css('display', 'none')
                        $('.set-price-per-hour .block-15').css('display', 'none')
                        $('.set-price-per-hour .block-14').css('display', 'none')
                        $('.set-price-per-hour .block-13').css('display', 'none')
                        $('.set-price-per-hour .block-12').css('display', 'none')
                        $('.set-price-per-hour .block-11').css('display', 'none')
                        $('.set-price-per-hour .block-10').css('display', 'none')
                        $('.set-price-per-hour .block-9').css('display', 'none')
                        $('.set-price-per-hour .block-8').css('display', 'block')
                        $('.set-price-per-hour .block-7').css('display', 'block')
                        $('.set-price-per-hour .block-6').css('display', 'block')
                        $('.set-price-per-hour .block-5').css('display', 'block')
                        $('.set-price-per-hour .block-4').css('display', 'block')
                        $('.set-price-per-hour .block-3').css('display', 'block')
                        $('.set-price-per-hour .block-2').css('display', 'block')
                        $('.set-price-per-hour .block-1').css('display', 'block')
                    }
                    if (x == "2 giờ")
                    {
                        $('.set-price-per-hour .block-24').css('display', 'none')
                        $('.set-price-per-hour .block-23').css('display', 'none')
                        $('.set-price-per-hour .block-22').css('display', 'none')
                        $('.set-price-per-hour .block-21').css('display', 'none')
                        $('.set-price-per-hour .block-20').css('display', 'none')
                        $('.set-price-per-hour .block-19').css('display', 'none')
                        $('.set-price-per-hour .block-18').css('display', 'none')
                        $('.set-price-per-hour .block-17').css('display', 'none')
                        $('.set-price-per-hour .block-16').css('display', 'none')
                        $('.set-price-per-hour .block-15').css('display', 'none')
                        $('.set-price-per-hour .block-14').css('display', 'none')
                        $('.set-price-per-hour .block-13').css('display', 'none')
                        $('.set-price-per-hour .block-12').css('display', 'block')
                        $('.set-price-per-hour .block-11').css('display', 'block')
                        $('.set-price-per-hour .block-10').css('display', 'block')
                        $('.set-price-per-hour .block-9').css('display', 'block')
                        $('.set-price-per-hour .block-8').css('display', 'block')
                        $('.set-price-per-hour .block-7').css('display', 'block')
                        $('.set-price-per-hour .block-6').css('display', 'block')
                        $('.set-price-per-hour .block-5').css('display', 'block')
                        $('.set-price-per-hour .block-4').css('display', 'block')
                        $('.set-price-per-hour .block-3').css('display', 'block')
                        $('.set-price-per-hour .block-2').css('display', 'block')
                        $('.set-price-per-hour .block-1').css('display', 'block')
                    }
                    if (x == "1 giờ")
                    {
                        $('.set-price-per-hour .block-24').css('display', 'block')
                        $('.set-price-per-hour .block-23').css('display', 'block')
                        $('.set-price-per-hour .block-22').css('display', 'block')
                        $('.set-price-per-hour .block-21').css('display', 'block')
                        $('.set-price-per-hour .block-20').css('display', 'block')
                        $('.set-price-per-hour .block-19').css('display', 'block')
                        $('.set-price-per-hour .block-18').css('display', 'block')
                        $('.set-price-per-hour .block-17').css('display', 'block')
                        $('.set-price-per-hour .block-16').css('display', 'block')
                        $('.set-price-per-hour .block-15').css('display', 'block')
                        $('.set-price-per-hour .block-14').css('display', 'block')
                        $('.set-price-per-hour .block-13').css('display', 'block')
                        $('.set-price-per-hour .block-12').css('display', 'block')
                        $('.set-price-per-hour .block-11').css('display', 'block')
                        $('.set-price-per-hour .block-10').css('display', 'block')
                        $('.set-price-per-hour .block-9').css('display', 'block')
                        $('.set-price-per-hour .block-8').css('display', 'block')
                        $('.set-price-per-hour .block-7').css('display', 'block')
                        $('.set-price-per-hour .block-6').css('display', 'block')
                        $('.set-price-per-hour .block-5').css('display', 'block')
                        $('.set-price-per-hour .block-4').css('display', 'block')
                        $('.set-price-per-hour .block-3').css('display', 'block')
                        $('.set-price-per-hour .block-2').css('display', 'block')
                        $('.set-price-per-hour .block-1').css('display', 'block')
                    }
                }
            </script>
            <script>
                function tbPricePerDayValue()
                {
                    var y = document.getElementById("listPricePerDay").value;
                    console.log(y);
                    if (y == "1 ngày")
                    {
                        $('.set-price-per-day .block-30').css('display', 'block')
                        $('.set-price-per-day .block-29').css('display', 'block')
                        $('.set-price-per-day .block-28').css('display', 'block')
                        $('.set-price-per-day .block-27').css('display', 'block')
                        $('.set-price-per-day .block-26').css('display', 'block')
                        $('.set-price-per-day .block-25').css('display', 'block')
                        $('.set-price-per-day .block-24').css('display', 'block')
                        $('.set-price-per-day .block-23').css('display', 'block')
                        $('.set-price-per-day .block-22').css('display', 'block')
                        $('.set-price-per-day .block-21').css('display', 'block')
                        $('.set-price-per-day .block-20').css('display', 'block')
                        $('.set-price-per-day .block-19').css('display', 'block')
                        $('.set-price-per-day .block-18').css('display', 'block')
                        $('.set-price-per-day .block-17').css('display', 'block')
                        $('.set-price-per-day .block-16').css('display', 'block')
                        $('.set-price-per-day .block-15').css('display', 'block')
                        $('.set-price-per-day .block-14').css('display', 'block')
                        $('.set-price-per-day .block-13').css('display', 'block')
                        $('.set-price-per-day .block-12').css('display', 'block')
                        $('.set-price-per-day .block-11').css('display', 'block')
                        $('.set-price-per-day .block-10').css('display', 'block')
                        $('.set-price-per-day .block-9').css('display', 'block')
                        $('.set-price-per-day .block-8').css('display', 'block')
                        $('.set-price-per-day .block-7').css('display', 'block')
                        $('.set-price-per-day .block-6').css('display', 'block')
                        $('.set-price-per-day .block-5').css('display', 'block')
                        $('.set-price-per-day .block-4').css('display', 'block')
                        $('.set-price-per-day .block-3').css('display', 'block')
                        $('.set-price-per-day .block-2').css('display', 'block')
                        $('.set-price-per-day .block-1').css('display', 'block')
                    }
                    if (y == "2 ngày")
                    {
                        $('.set-price-per-day .block-30').css('display', 'none')
                        $('.set-price-per-day .block-29').css('display', 'none')
                        $('.set-price-per-day .block-28').css('display', 'none')
                        $('.set-price-per-day .block-27').css('display', 'none')
                        $('.set-price-per-day .block-26').css('display', 'none')
                        $('.set-price-per-day .block-25').css('display', 'none')
                        $('.set-price-per-day .block-24').css('display', 'none')
                        $('.set-price-per-day .block-23').css('display', 'none')
                        $('.set-price-per-day .block-22').css('display', 'none')
                        $('.set-price-per-day .block-21').css('display', 'none')
                        $('.set-price-per-day .block-20').css('display', 'none')
                        $('.set-price-per-day .block-19').css('display', 'none')
                        $('.set-price-per-day .block-18').css('display', 'none')
                        $('.set-price-per-day .block-17').css('display', 'none')
                        $('.set-price-per-day .block-16').css('display', 'none')
                        $('.set-price-per-day .block-15').css('display', 'block')
                        $('.set-price-per-day .block-14').css('display', 'block')
                        $('.set-price-per-day .block-13').css('display', 'block')
                        $('.set-price-per-day .block-12').css('display', 'block')
                        $('.set-price-per-day .block-11').css('display', 'block')
                        $('.set-price-per-day .block-10').css('display', 'block')
                        $('.set-price-per-day .block-9').css('display', 'block')
                        $('.set-price-per-day .block-8').css('display', 'block')
                        $('.set-price-per-day .block-7').css('display', 'block')
                        $('.set-price-per-day .block-6').css('display', 'block')
                        $('.set-price-per-day .block-5').css('display', 'block')
                        $('.set-price-per-day .block-4').css('display', 'block')
                        $('.set-price-per-day .block-3').css('display', 'block')
                        $('.set-price-per-day .block-2').css('display', 'block')
                        $('.set-price-per-day .block-1').css('display', 'block')
                    }
                    if (y == "3 ngày")
                    {
                        $('.set-price-per-day .block-30').css('display', 'none')
                        $('.set-price-per-day .block-29').css('display', 'none')
                        $('.set-price-per-day .block-28').css('display', 'none')
                        $('.set-price-per-day .block-27').css('display', 'none')
                        $('.set-price-per-day .block-26').css('display', 'none')
                        $('.set-price-per-day .block-25').css('display', 'none')
                        $('.set-price-per-day .block-24').css('display', 'none')
                        $('.set-price-per-day .block-23').css('display', 'none')
                        $('.set-price-per-day .block-22').css('display', 'none')
                        $('.set-price-per-day .block-21').css('display', 'none')
                        $('.set-price-per-day .block-20').css('display', 'none')
                        $('.set-price-per-day .block-19').css('display', 'none')
                        $('.set-price-per-day .block-18').css('display', 'none')
                        $('.set-price-per-day .block-17').css('display', 'none')
                        $('.set-price-per-day .block-16').css('display', 'none')
                        $('.set-price-per-day .block-15').css('display', 'none')
                        $('.set-price-per-day .block-14').css('display', 'none')
                        $('.set-price-per-day .block-13').css('display', 'none')
                        $('.set-price-per-day .block-12').css('display', 'none')
                        $('.set-price-per-day .block-11').css('display', 'none')
                        $('.set-price-per-day .block-10').css('display', 'block')
                        $('.set-price-per-day .block-9').css('display', 'block')
                        $('.set-price-per-day .block-8').css('display', 'block')
                        $('.set-price-per-day .block-7').css('display', 'block')
                        $('.set-price-per-day .block-6').css('display', 'block')
                        $('.set-price-per-day .block-5').css('display', 'block')
                        $('.set-price-per-day .block-4').css('display', 'block')
                        $('.set-price-per-day .block-3').css('display', 'block')
                        $('.set-price-per-day .block-2').css('display', 'block')
                        $('.set-price-per-day .block-1').css('display', 'block')
                    }
                    if (y == "4 ngày")
                    {
                        $('.set-price-per-day .block-30').css('display', 'none')
                        $('.set-price-per-day .block-29').css('display', 'none')
                        $('.set-price-per-day .block-28').css('display', 'none')
                        $('.set-price-per-day .block-27').css('display', 'none')
                        $('.set-price-per-day .block-26').css('display', 'none')
                        $('.set-price-per-day .block-25').css('display', 'none')
                        $('.set-price-per-day .block-24').css('display', 'none')
                        $('.set-price-per-day .block-23').css('display', 'none')
                        $('.set-price-per-day .block-22').css('display', 'none')
                        $('.set-price-per-day .block-21').css('display', 'none')
                        $('.set-price-per-day .block-20').css('display', 'none')
                        $('.set-price-per-day .block-19').css('display', 'none')
                        $('.set-price-per-day .block-18').css('display', 'none')
                        $('.set-price-per-day .block-17').css('display', 'none')
                        $('.set-price-per-day .block-16').css('display', 'none')
                        $('.set-price-per-day .block-15').css('display', 'none')
                        $('.set-price-per-day .block-14').css('display', 'none')
                        $('.set-price-per-day .block-13').css('display', 'none')
                        $('.set-price-per-day .block-12').css('display', 'none')
                        $('.set-price-per-day .block-11').css('display', 'none')
                        $('.set-price-per-day .block-10').css('display', 'none')
                        $('.set-price-per-day .block-9').css('display', 'none')
                        $('.set-price-per-day .block-8').css('display', 'block')
                        $('.set-price-per-day .block-7').css('display', 'block')
                        $('.set-price-per-day .block-6').css('display', 'block')
                        $('.set-price-per-day .block-5').css('display', 'block')
                        $('.set-price-per-day .block-4').css('display', 'block')
                        $('.set-price-per-day .block-3').css('display', 'block')
                        $('.set-price-per-day .block-2').css('display', 'block')
                        $('.set-price-per-day .block-1').css('display', 'block')
                    }
                }
            </script>


</asp:Content>

