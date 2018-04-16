using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class backend_banner_management : System.Web.UI.Page
{
    private savinaEntities db = new savinaEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        getBannerGroup1();
        getBannerGroup2();
        getBannerGroup3();
        getBannerGroup4();
    }

    private void getBannerGroup1()
    {
        var banner1 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 1).FirstOrDefault();
        var banner2 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 2).FirstOrDefault();
        var banner3 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 3).FirstOrDefault();

        string gr1Landing1 = "";
        string gr1Landing2 = "";
        string gr1Landing3 = "";
        string gr1Avatar1 = "";
        string gr1Avatar2 = "";
        string gr1Avatar3 = "";
        string gr1Upload1 = "";
        string gr1Upload2 = "";
        string gr1Upload3 = "";

        gr1Landing1 = banner1.BannerLandingpage.ToString();
        gr1Landing2 = banner2.BannerLandingpage.ToString();
        gr1Landing3 = banner3.BannerLandingpage.ToString();
        gr1Avatar1 = "<img src=\""+banner1.BannerPath.ToString()+"\" class=\"imgBannerInTable\"/>";
        gr1Avatar2 = "<img src=\"" + banner2.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr1Avatar3 = "<img src=\"" + banner3.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr1Upload1 = banner1.BannerUpload.ToString();
        gr1Upload2 = banner2.BannerUpload.ToString();
        gr1Upload3 = banner3.BannerUpload.ToString();


        this.group1_Landingpage1.InnerHtml = gr1Landing1;
        this.group1_Landingpage2.InnerHtml = gr1Landing2;
        this.group1_Landingpage3.InnerHtml = gr1Landing3;
        this.group1_Avatar1.InnerHtml = gr1Avatar1;
        this.group1_Avatar2.InnerHtml = gr1Avatar2;
        this.group1_Avatar3.InnerHtml = gr1Avatar3;
        this.group1_UploadTime1.InnerHtml = gr1Upload1;
        this.group1_UploadTime2.InnerHtml = gr1Upload2;
        this.group1_UploadTime3.InnerHtml = gr1Upload3;
    }

    private void getBannerGroup2()
    {
        var banner1 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 4).FirstOrDefault();
        var banner2 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 5).FirstOrDefault();
        var banner3 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 6).FirstOrDefault();

        string gr2Landing1 = "";
        string gr2Landing2 = "";
        string gr2Landing3 = "";
        string gr2Avatar1 = "";
        string gr2Avatar2 = "";
        string gr2Avatar3 = "";
        string gr2Upload1 = "";
        string gr2Upload2 = "";
        string gr2Upload3 = "";

        gr2Landing1 = banner1.BannerLandingpage.ToString();
        gr2Landing2 = banner2.BannerLandingpage.ToString();
        gr2Landing3 = banner3.BannerLandingpage.ToString();
        gr2Avatar1 = "<img src=\"" + banner1.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr2Avatar2 = "<img src=\"" + banner2.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr2Avatar3 = "<img src=\"" + banner3.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr2Upload1 = banner1.BannerUpload.ToString();
        gr2Upload2 = banner2.BannerUpload.ToString();
        gr2Upload3 = banner3.BannerUpload.ToString();


        this.group2_Landingpage1.InnerHtml = gr2Landing1;
        this.group2_Landingpage2.InnerHtml = gr2Landing2;
        this.group2_Landingpage3.InnerHtml = gr2Landing3;
        this.group2_Avatar1.InnerHtml = gr2Avatar1;
        this.group2_Avatar2.InnerHtml = gr2Avatar2;
        this.group2_Avatar3.InnerHtml = gr2Avatar3;
        this.group2_UploadTime1.InnerHtml = gr2Upload1;
        this.group2_UploadTime2.InnerHtml = gr2Upload2;
        this.group2_UploadTime3.InnerHtml = gr2Upload3;
    }

    private void getBannerGroup3()
    {
        var banner1 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 7).FirstOrDefault();
        var banner2 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 8).FirstOrDefault();
        var banner3 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 9).FirstOrDefault();
        var banner4 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 10).FirstOrDefault();
        var banner5 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 11).FirstOrDefault();

        string gr3Landing1 = "";
        string gr3Landing2 = "";
        string gr3Landing3 = "";
        string gr3Landing4 = "";
        string gr3Landing5 = "";
        string gr3Avatar1 = "";
        string gr3Avatar2 = "";
        string gr3Avatar3 = "";
        string gr3Avatar4 = "";
        string gr3Avatar5 = "";
        string gr3Upload1 = "";
        string gr3Upload2 = "";
        string gr3Upload3 = "";
        string gr3Upload4 = "";
        string gr3Upload5 = "";

        gr3Landing1 = banner1.BannerLandingpage.ToString();
        gr3Landing2 = banner2.BannerLandingpage.ToString();
        gr3Landing3 = banner3.BannerLandingpage.ToString();
        gr3Landing4 = banner4.BannerLandingpage.ToString();
        gr3Landing5 = banner4.BannerLandingpage.ToString();
        gr3Avatar1 = "<img src=\"" + banner1.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr3Avatar2 = "<img src=\"" + banner2.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr3Avatar3 = "<img src=\"" + banner3.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr3Avatar4 = "<img src=\"" + banner4.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr3Avatar5 = "<img src=\"" + banner5.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr3Upload1 = banner1.BannerUpload.ToString();
        gr3Upload2 = banner2.BannerUpload.ToString();
        gr3Upload3 = banner3.BannerUpload.ToString();
        gr3Upload4 = banner4.BannerUpload.ToString();
        gr3Upload5 = banner5.BannerUpload.ToString();


        this.group3_Landingpage1.InnerHtml = gr3Landing1;
        this.group3_Landingpage2.InnerHtml = gr3Landing2;
        this.group3_Landingpage3.InnerHtml = gr3Landing3;
        this.group3_Landingpage4.InnerHtml = gr3Landing4;
        this.group3_Landingpage5.InnerHtml = gr3Landing5;
        this.group3_Avatar1.InnerHtml = gr3Avatar1;
        this.group3_Avatar2.InnerHtml = gr3Avatar2;
        this.group3_Avatar3.InnerHtml = gr3Avatar3;
        this.group3_Avatar4.InnerHtml = gr3Avatar4;
        this.group3_Avatar5.InnerHtml = gr3Avatar5;
        this.group3_UploadTime1.InnerHtml = gr3Upload1;
        this.group3_UploadTime2.InnerHtml = gr3Upload2;
        this.group3_UploadTime3.InnerHtml = gr3Upload3;
        this.group3_UploadTime4.InnerHtml = gr3Upload4;
        this.group3_UploadTime5.InnerHtml = gr3Upload5;
    }

    private void getBannerGroup4()
    {
        var banner1 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 12).FirstOrDefault();
        var banner2 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 13).FirstOrDefault();
        var banner3 = db.tb_HomeBanner.Where(p => p.HomeBannerID == 14).FirstOrDefault();

        string gr4Landing1 = "";
        string gr4Landing2 = "";
        string gr4Landing3 = "";
        string gr4Avatar1 = "";
        string gr4Avatar2 = "";
        string gr4Avatar3 = "";
        string gr4Upload1 = "";
        string gr4Upload2 = "";
        string gr4Upload3 = "";

        gr4Landing1 = banner1.BannerLandingpage.ToString();
        gr4Landing2 = banner2.BannerLandingpage.ToString();
        gr4Landing3 = banner3.BannerLandingpage.ToString();
        gr4Avatar1 = "<img src=\"" + banner1.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr4Avatar2 = "<img src=\"" + banner2.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr4Avatar3 = "<img src=\"" + banner3.BannerPath.ToString() + "\" class=\"imgBannerInTable\"/>";
        gr4Upload1 = banner1.BannerUpload.ToString();
        gr4Upload2 = banner2.BannerUpload.ToString();
        gr4Upload3 = banner3.BannerUpload.ToString();


        this.group4_Landingpage1.InnerHtml = gr4Landing1;
        this.group4_Landingpage2.InnerHtml = gr4Landing2;
        this.group4_Landingpage3.InnerHtml = gr4Landing3;
        this.group4_Avatar1.InnerHtml = gr4Avatar1;
        this.group4_Avatar2.InnerHtml = gr4Avatar2;
        this.group4_Avatar3.InnerHtml = gr4Avatar3;
        this.group4_UploadTime1.InnerHtml = gr4Upload1;
        this.group4_UploadTime2.InnerHtml = gr4Upload2;
        this.group4_UploadTime3.InnerHtml = gr4Upload3;
    }

    //-------------------
}