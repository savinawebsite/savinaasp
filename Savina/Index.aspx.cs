using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    private savinaEntities db = new savinaEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        getMainBannerSlide();    
        getBannerGroup1();
        getBannerGroup2();
        getBannerGroup3();
        getBannerGroup4();
    }

    private void getMainBannerSlide()
    {
        var banner = (from s in db.tb_HomeMainBanner
                       select new
                       {
                           s.HomeMainBannerID,
                           s.BannerPath,
                           s.SortBy,
                           s.BannerLandingpage
                       }
                       ).OrderBy(p => p.SortBy).ToList();

        string bannerHtml = "";
        string html = "";
        int kk = 0;

        bannerHtml += "<div id=\"home-slick\" class=\"mainbanner-height\">";
        foreach (var item in banner)
        {
            kk++;
            html += "<div class=\"banner banner-1\">";
            html += "<a href=\"" + item.BannerLandingpage + "\">";
            html += "<img src=\"" + item.BannerPath + "\" alt=\"\">";
            html += "</a>";
            html += "</div>";
        }
        bannerHtml += html;
        bannerHtml += "</div>";
        this.home_mainBannerSlide.InnerHtml = bannerHtml;
    }

    private void getBannerGroup1()
    {
        var banner1 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 1).FirstOrDefault();
        var banner2 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 2).FirstOrDefault();
        var banner3 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 3).FirstOrDefault();

        string bannerHtml = "";

        bannerHtml += "<div class=\"col-md-4\">";
        bannerHtml += "<a href= \""+banner1.BannerLandingpage+"\">";
        bannerHtml += "<img src=\""+banner1.BannerPath+"\" alt=\"\" style=\"width: 98%;\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "<div class=\"col-md-4\">";
        bannerHtml += "<a href= \"" + banner2.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner2.BannerPath + "\" alt=\"\" style=\"width: 98%;\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "<div class=\"col-md-4\">";
        bannerHtml += "<a href= \"" + banner3.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner3.BannerPath + "\" alt=\"\" style=\"width: 98%;\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";

        this.home_3banner_group1.InnerHtml = bannerHtml;
    }

    private void getBannerGroup2()
    {
        var banner1 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 4).FirstOrDefault();
        var banner2 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 5).FirstOrDefault();
        var banner3 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 6).FirstOrDefault();

        string bannerHtml = "";

        bannerHtml += "<div class=\"container\">";
        bannerHtml += "<div class=\"row\">";
        bannerHtml += "<div class=\"col-md-4 col-sm-6\">";
        bannerHtml += "<a href= \"" + banner1.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner1.BannerPath + "\" alt=\"\" style=\"width: 98%;\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "<div class=\"col-md-4 col-sm-6\">";
        bannerHtml += "<a href= \"" + banner2.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner2.BannerPath + "\" alt=\"\" style=\"width: 98%;\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "<div class=\"col-md-4 col-sm-6\">";
        bannerHtml += "<a href= \"" + banner3.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner3.BannerPath + "\" alt=\"\" style=\"width: 98%;\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "</div>";  //div row
        bannerHtml += "</div>";  //dix container

        this.home_3banner_group2.InnerHtml = bannerHtml;
    }

    private void getBannerGroup3()
    {
        var banner1 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 7).FirstOrDefault();
        var banner2 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 8).FirstOrDefault();
        var banner3 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 9).FirstOrDefault();
        var banner4 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 10).FirstOrDefault();
        var banner5 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 11).FirstOrDefault();

        string bannerHtml = "";

        bannerHtml += "<div class=\"banner\">";
        bannerHtml += "<a href= \"" + banner1.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner1.BannerPath + "\" alt=\"\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "<div class=\"banner\">";
        bannerHtml += "<a href= \"" + banner2.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner2.BannerPath + "\" alt=\"\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "<div class=\"banner\">";
        bannerHtml += "<a href= \"" + banner3.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner3.BannerPath + "\" alt=\"\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "<div class=\"banner\">";
        bannerHtml += "<a href= \"" + banner4.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner4.BannerPath + "\" alt=\"\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "<div class=\"banner\">";
        bannerHtml += "<a href= \"" + banner5.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner5.BannerPath + "\" alt=\"\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";

        this.home_5banner_group3.InnerHtml = bannerHtml;
    }

    private void getBannerGroup4()
    {
        var banner1 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 12).FirstOrDefault();
        var banner2 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 13).FirstOrDefault();
        var banner3 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 14).FirstOrDefault();

        string bannerHtml = "";

        bannerHtml += "<div class=\"col-md-8\">";
        bannerHtml += "<a href= \"" + banner1.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner1.BannerPath + "\" alt=\"\" style=\"width: 98%;\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "<div class=\"col-md-4 col-sm-6\">";
        bannerHtml += "<a class=\"banner banner-1 banner-bottom-1\" href=\"" + banner2.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner2.BannerPath + "\" alt=\"\" style=\"width: 98%;\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";
        bannerHtml += "<div class=\"col-md-4 col-sm-6\">";
        bannerHtml += "<a class=\"banner banner-1 banner-bottom-1\" href=\"" + banner3.BannerLandingpage + "\">";
        bannerHtml += "<img src=\"" + banner3.BannerPath + "\" alt=\"\" style=\"width: 98%;\">";
        bannerHtml += "</a>";
        bannerHtml += "</div>";

        this.home_3banner_group4.InnerHtml = bannerHtml;
    }


    //--------------------------------
}