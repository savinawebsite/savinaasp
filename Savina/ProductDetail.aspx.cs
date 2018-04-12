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
        if (Request.QueryString["ProductID"] != null)
        {
            String productKey = Request.QueryString["ProductID"].ToString();
            getProductName(productKey);
            getProductPercentage(productKey);
            getProductBriefDescription(productKey);
            getProductPrice(productKey);
            getProductValue(productKey);
    
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

    private void getProductName(string productCode)
    {
        var product = db.tb_Product.Where(p => p.ProductCode == productCode).FirstOrDefault();
        string prNameHtml = "";
        prNameHtml = product.ProductName.ToString();

        this.productNameDb.InnerHtml = prNameHtml;
    }

    private void getProductPercentage(string productCode)
    {
        var product = db.tb_Product.Where(p => p.ProductCode == productCode).FirstOrDefault();
        string percentageHtml = "";
        percentageHtml = product.StatusPercentage.ToString();

        this.productPercentage.InnerHtml = percentageHtml;
    }

    private void getProductBriefDescription(string productCode)
    {
        var product = db.tb_Product.Where(p => p.ProductCode == productCode).FirstOrDefault();
        string shortDescHtml = "";
        shortDescHtml = product.ShortDescription.ToString();

        this.BriefDescription.InnerHtml = shortDescHtml;
    }
   
    private void getProductPrice(string productCode)
    {
        var product = db.tb_Product.Where(p => p.ProductCode == productCode).FirstOrDefault();
        string pricebyBlock = "";
        string pricebyDay = "";
        pricebyBlock = product.PricePerBlock.ToString();
        pricebyDay = product.PricePerDay.ToString();

        this.price_block_p.InnerHtml = pricebyBlock;
        this.price_day_p.InnerHtml = pricebyDay;
    }

    private void getProductValue(string productCode)
    {
        var product = db.tb_Product.Where(p => p.ProductCode == productCode).FirstOrDefault();
        string productValueHtml = "";
        productValueHtml = product.ProductValue.ToString();

        this.product_value_p.InnerHtml = productValueHtml;
    }
}