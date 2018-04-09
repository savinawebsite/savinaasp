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
    savinaEntities db = new savinaEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string action = Request.QueryString["action"].ToString();
            switch (action)
            {
                case "createMainCate":
                    {
                        String mainCateListHTML = "";
                        try
                        {
                            string cateName = Request.QueryString["cateName"].ToString();
                            string desc = Request.QueryString["desc"].ToString();
                            //int cateSort = Request.QueryString["cateSort"];
                            int cateSort = 0;
                                if (Request.QueryString["cateSort"].ToString() != null)
                                {
                                    cateSort = int.Parse(Request.QueryString["cateSort"].ToString());
                                }

                            //Insert to Database
                            tb_CategoryMain tbMainCate = new tb_CategoryMain();
                            tbMainCate.MainCateName = cateName;
                            tbMainCate.MainCateDesc = desc;
                            tbMainCate.Sort = cateSort;
                            tbMainCate.CreateDate = DateTime.Now;
                            tbMainCate.IsDisplay = true;
                            tbMainCate.IsDeleted = false;
                            tbMainCate.Sort = cateSort;
                            db.tb_CategoryMain.Add(tbMainCate);
                            db.SaveChanges();

                            List<tb_CategoryMain> mainCateList = adGenerate.getMainCateList();
                            if (mainCateList.Count() != 0)
                            {
                                mainCateListHTML = adGenerate.generateHTMLMainCate(mainCateList);
                            }
                        }catch(Exception exp)
                        {
                            mainCateListHTML = "error";
                        }
                        Response.Write(mainCateListHTML);
                    }
                    break;
            }


        }
    }

   
}