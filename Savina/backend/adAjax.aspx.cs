using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

public partial class backend_adAjax : System.Web.UI.Page
{
    veritass_savinaEntities db = new veritass_savinaEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string action = Request.QueryString["action"].ToString();
            switch (action)
            {
                case "createMainCate":
                    { 
                        string cateName = Request.QueryString["cateName"].ToString();
                        string desc = Request.QueryString["desc"].ToString();

                            //Insert to Database
                            tb_CategoryMain tbMainCate = new tb_CategoryMain();
                            tbMainCate.MainCateName = cateName;
                            tbMainCate.MainCateDesc = desc;
                            tbMainCate.CreateDate = DateTime.Now;
                            tbMainCate.MainCateStatus = 1;
                            tbMainCate.Sort = 1;
                            db.tb_CategoryMain.Add(tbMainCate);
                            db.SaveChanges();

                            //Get main category list
                            var mainCateList = (from mc in db.tb_CategoryMain
                                             select new
                                             {
                                                 mc.MainCateID,
                                                 mc.MainCateName,
                                                 mc.MainCateDesc,
                                                 mc.MainCateStatus,
                                                 mc.CreateDate,
                                                 mc.Sort
                                             });

                            if (mainCateList.Count() != 0)
                            {
                                String mainCateListHTML = adGenerate.generateMainCate(mainCateList);
                            }
                      
                    }
                    break;
            }


        }
    }

   
}