using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ProductDetail : System.Web.UI.Page
{
    private savinaEntities db = new savinaEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        int productID = 0;
        if (Request.QueryString["ProductID"].ToString() != null)
        {
            productID = int.Parse(Request.QueryString["ProductID"].ToString());
            //String productCode = Request.QueryString["ProductID"].ToString();
            getProductName(productID);
            getProductPercentage(productID);
            getProductBriefDescription(productID);
            getProductPrice(productID);
            getProductValue(productID);
            getProductAccompanied(productID);
            getProductAccessory(productID);
            getProducSlider(productID);

        }
        getProductServices();
        getProductDelivery();       
    }

    private void getProductServices()
    {
        string proServiceHtml = "";
        string html1 = "";
        string html2 = "";
        string html3 = "";

        //get service via database
        var serviceList = (from s in db.tb_ServiceSelection
                     select new
                     {
                         s.ServiceSelectionID,
                         s.ServiceName,
                         s.ServiceDescription,
                         s.ServiceCost                      
                     });

        proServiceHtml += "<div class=\"col-md-7 col-xs-12\">";
        proServiceHtml += "<div class=\"col-md-6 col-xs-5\">";
        proServiceHtml += "<p class=\"services-title\">Chọn dịch vụ đi kèm:</p>";
        int kk = 0;

        foreach (var item in serviceList)
        {
            kk++;
			html1 += "<div style = \"padding:5px 0 5px;\" >";
            html1 += "<div class=\"accessories-checkbox\" style=\"margin-top: 3px;\">";
            html1 += "<input type = \"radio\" id=\"ServiceSelect-" + kk + "\" onchange=\"javascript:callMeOnChangeService()\" name=\"Service\" value=\"1\">";
			html1 += "</div>";
			html1 += "<h3 class=\"productDetail-lable-accessories\" style=\"display:inline;\">"+item.ServiceName.ToString()+"</h3>";																	
			html1 += "</div>";

            html2 += "<div class=\"col-md-6 col-xs-7\">";
			html2 += "<div class=\"dvServiceDescription"+kk+"\" style=\"margin-left:-16px;margin-top: 28px;\">";
			html2 += "<P id = \"service_des_p"+kk+"\">"+item.ServiceDescription.ToString()+"</P>	";
			html2 += "</div>";
			html2 +="</div>";

            html3 += "<div class=\"dvPriceTamTinh dvPriceTamTinh-Services service_cost_"+kk+"\">";
            html3 += "<p id = \"service_cost_"+kk+"_p\">"+item.ServiceCost+"</p>";
            html3 += "</div>";
        }

        proServiceHtml += html1;
        proServiceHtml += "</div>";
        proServiceHtml += html2;
        proServiceHtml += "</div>";

        proServiceHtml += "<div class=\"col-md-5\">";
        proServiceHtml += "<p class=\"services-title services-title-price\">Giá thuê tạm tính:</p>";
        proServiceHtml += html3;
        proServiceHtml += "</div>";

        this.dvBookServices.InnerHtml = proServiceHtml;
    }

    private void getProductDelivery()
    {
        string proDeliveryHtml = "";
        string html1 = "";
        string html2 = "";
        string html3 = "";

        //get Delivery via database
        var deliveryList = (from s in db.tb_DeliverySelection
                           select new
                           {
                               s.DeliverySelectionID,
                               s.DeliveryName,
                               s.DeliveryDescription,
                               s.DeliveryCost
                           });

        proDeliveryHtml += "<div class=\"col-md-7 col-xs-12\">";
        proDeliveryHtml += "<div class=\"col-md-6 col-xs-5\">";
        proDeliveryHtml += "<p class=\"services-title\">Chọn cách vận chuyển:</p>";
        int kk = 0;

        foreach (var item in deliveryList)
        {
            kk++;
            html1 += "<div style = \"padding:5px 0 5px;\" >";
            html1 += "<div class=\"accessories-checkbox\" style=\"margin-top: 3px;\">";
            html1 += "<input type = \"radio\" id=\"DeliverySelect-" + kk + "\" onchange=\"javascript:callMeOnChangeDelivery()\" name=\"Delivery\" value=\"1\">";
            html1 += "</div>";
            html1 += "<h3 class=\"productDetail-lable-accessories\" style=\"display:inline;\">" + item.DeliveryName.ToString() + "</h3>";
            html1 += "</div>";

            html2 += "<div class=\"col-md-6 col-xs-7\">";
            html2 += "<div class=\"dvDeliveryDescription" + kk + "\" style=\"margin-left:-16px;margin-top: 28px;\">";
            html2 += "<P id = \"delivery_des_p" + kk + "\">" + item.DeliveryDescription.ToString() + "</P>	";
            html2 += "</div>";
            html2 += "</div>";

            html3 += "<div class=\"dvPriceTamTinh dvPriceTamTinh-Services delivery_cost_" + kk + "\">";
            html3 += "<p id = \"delivery_cost_" + kk + "_p\">" + item.DeliveryCost + "</p>";
            html3 += "</div>";
        }

        proDeliveryHtml += html1;
        proDeliveryHtml += "</div>";
        proDeliveryHtml += html2;
        proDeliveryHtml += "</div>";

        proDeliveryHtml += "<div class=\"col-md-5\">";
        proDeliveryHtml += "<p class=\"services-title services-title-price\">Giá thuê:</p>";
        proDeliveryHtml += html3;
        proDeliveryHtml += "</div>";

        this.dvBookDelivery.InnerHtml = proDeliveryHtml;
    }

    private void getProductName(int productID)
    {
        var product = db.tb_Product.Where(p => p.ProductID == productID).FirstOrDefault();
        string prNameHtml = "";
        prNameHtml = product.ProductName.ToString();

        this.productNameDb.InnerHtml = prNameHtml;
    }

    private void getProductPercentage(int productID)
    {
        var product = db.tb_Product.Where(p => p.ProductID == productID).FirstOrDefault();
        string percentageHtml = "";
        percentageHtml = product.StatusPercentage.ToString();

        this.productPercentage.InnerHtml = percentageHtml;
    }

    private void getProductBriefDescription(int productID)
    {
        var product = db.tb_Product.Where(p => p.ProductID == productID).FirstOrDefault();
        string shortDescHtml = "";
        shortDescHtml = product.ShortDescription.ToString();

        this.BriefDescription.InnerHtml = shortDescHtml;
    }
   
    private void getProductPrice(int productID)
    {
        var product = db.tb_Product.Where(p => p.ProductID == productID).FirstOrDefault();
        string pricebyBlock = "";
        string pricebyDay = "";
        pricebyBlock = product.PricePerBlock.ToString();
        pricebyDay = product.PricePerDay.ToString();

        this.price_block_p.InnerHtml = pricebyBlock;
        this.price_day_p.InnerHtml = pricebyDay;
    }

    private void getProductValue(int productID)
    {
        var product = db.tb_Product.Where(p => p.ProductID == productID).FirstOrDefault();
        string productValueHtml = "";
        productValueHtml = product.ProductValue.ToString();

        this.product_value_p.InnerHtml = productValueHtml;
    }

    private void getProductAccompanied(int productID)
    {
        string proAccompaniedHtml = "";
        string html1 = "";
        //string html2 = "";

        var prAccompList = (from pr in db.tb_Product
                         join prac in db.tb_ProductAccompany
                         on pr.ProductID equals prac.ProductID
                         where prac.ProductID == productID
                            select new
                         {
                             pr.ProductID,
                             prac.ProductAccompany,
                             prac.ProductCode,
                             prac.ProductName,
                             prac.productAccAvatar
                         }
               ).OrderByDescending(p => p.ProductAccompany).ToList();   
            
        proAccompaniedHtml += "<div class=\"col-md-12 col-xs-12\">";
        proAccompaniedHtml += "<div id=\"product-slick-7\" class=\"product-slick\">";
        int kk = 0;
        foreach (var item in prAccompList)
        {
            kk++;
            html1 += "<div class=\"product product-inpackage\">";
            html1 += "<div class=\"product-thumb\">";
            html1 += "<img src = \"" +item.productAccAvatar + "\">";
            html1 += "</div>";

            html1 += "<div class=\"product-body\">";
            html1 += "<h2 class=\"product-name\" style=\"font-size:12px;font-weight: bold; margin-top: 5px;text-align: center;\">"+item.ProductName+"</h2>";
            html1 += "</div>";
            html1 += "</div>";
        }
        proAccompaniedHtml += html1;
        proAccompaniedHtml += "</div>";
        proAccompaniedHtml += "</div>";

        this.dvProductAccompaniedList.InnerHtml = proAccompaniedHtml;
    }

    private void getProductAccessory(int productID)
    {
        string proAccessoryHtml = "";
        string html1 = "";

        var prAccessoryList = (from pr in db.tb_Product
                                join prac in db.tb_ProductAccessorySelection
                                on pr.ProductID equals prac.ProductID
                               where prac.ProductID == productID
                               select new
                             {
                                pr.ProductID,
                                prac.ProductAccessorySelectionID,
                                prac.ProductCode,
                                prac.ProductName,
                                prac.ProductValue,
                                prac.PricePerBlock,
                                prac.PricePerDay
                            }
               ).OrderByDescending(p => p.ProductAccessorySelectionID).ToList();

        proAccessoryHtml += "<div class=\"col-md-5 col-xs-12 accessories-titleBar\">";
            proAccessoryHtml += "<p class=\"accessories-title\">Chọn thêm phụ kiện:</p>";
        proAccessoryHtml += "</div>";
        proAccessoryHtml += "<div class=\"col-md-7 col-xs-12 accessories-titleBar\">";
            proAccessoryHtml += "<p class=\"accessories-title\">Số lượng:</p>";
            proAccessoryHtml += "<p class=\"accessories-title\" style=\"padding-left:24px;\">Giá thuê tạm tính:</p>";
            proAccessoryHtml += "<p class=\"accessories-title\" style=\"padding-left:31px;\">Giá trị sản phẩm:</p>";
        proAccessoryHtml += "</div>";

        int kk = 0;
        foreach (var item in prAccessoryList)
        {
            kk++;
            html1 += "<div class=\"col-md-5 col-xs-12 BookAccessories-productName\">";
                html1 += "<div class=\"accessories-checkbox\">";
                    html1 += "<input type=\"checkbox\" id=\"accessoriesCheckbox1\" name=\"GiaChoThue\" value=\"2\"/>";
                html1 += "</div>";
                html1 += "<h3 class=\"productDetail-lable-accessories\" style=\"display:inline;\">"+item.ProductName+"</h3>";
            html1 += "</div>";
            html1 += "<div class=\"col-md-7 col-xs-12\">";
                html1 += "<div class=\"qty-input\">";
                    html1 += "<input class=\"input\" type=\"number\" onchange=\"javascript:callMeOnChangeAccessory()\" id=\"access_qty_"+kk+"\" value=\"0\" style=\"height: 32px; width: 55px;\">";
                html1 += "</div>";
                html1 += "<div class=\"dvPriceTamTinh\" style=\"display: inline-block;margin-left: 20px; margin-top: 6px;\">";
                    html1 += "<p id=\"access_temp_p"+kk+"\">"+item.PricePerDay+"</p>";
                html1 += "</div>";
                html1 += "<div class=\"dvProductValue\" style=\"display: inline-block;margin-left: 16px;\">";
                    html1 += "<p id=\"access_value_p"+kk+"\">"+item.ProductValue+"</p>";
                html1 += "</div>";
            html1 += "</div>";
        }
        proAccessoryHtml += html1;

        this.dvProductAccessoryList.InnerHtml = proAccessoryHtml;
    }

    private void getProducSlider(int productID)
    {
        string proSlideHtml = "";
        string html1 = "";
        string html2 = "";

        var prSlideList = (from pr in db.tb_Product
                           join prac in db.tb_ProductGallery
                           on pr.ProductID equals prac.ProductID
                           where prac.ProductID == productID
                           select new
                           {
                               pr.ProductID,
                               prac.ImageID,
                               prac.ImagePath
                           }
               ).OrderByDescending(p => p.ImageID).ToList();


        int kk = 0;
        foreach (var item in prSlideList)
        {
            kk++;
            html1 += "<div class=\"product-view\">";
            html1 += "<img src=\"" + item.ImagePath + "\"/>";
            html1 += "</div>";

            html2 += "<div class=\"product-view\">";
            html2 += "<img src=\"" + item.ImagePath + "\"/>";
            html2 += "</div>";
        }

        proSlideHtml += "<div id=\"product-main-view\" style=\"height: 415px;\">";
        proSlideHtml += html1;
        proSlideHtml += "</div>";

        proSlideHtml += "<div id=\"product-view\">";
        proSlideHtml += html2;
        proSlideHtml += "</div>";

        this.dvProductSlideList.InnerHtml = proSlideHtml;
    }

    
    //---------
}