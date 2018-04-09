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
                case "deleteMainCate":
                    {
                        String mainCateListHTML = "";
                        try
                        {
                            int cateID = 0;
                            if(Request.QueryString["cateID"].ToString() != null)
                            {
                                cateID = int.Parse(Request.QueryString["cateID"].ToString());
                                tb_CategoryMain t = (tb_CategoryMain)db.tb_CategoryMain.Where(b => b.MainCateID == cateID).First();
                                db.tb_CategoryMain.Remove(t);
                                db.SaveChanges();
                            }
                      
                            List<tb_CategoryMain> mainCateList = adGenerate.getMainCateList();
                            if (mainCateList.Count() != 0)
                            {
                                mainCateListHTML = adGenerate.generateHTMLMainCate(mainCateList);
                            }
                        }
                        catch (Exception exp)
                        {
                            mainCateListHTML = "error";
                        }
                        Response.Write(mainCateListHTML);
                    }
                    break;

                case "editMainCate":
                    {
                        String mainCateListHTML = "";
                        try
                        {
                            string cateName = Request.QueryString["cateName"].ToString();
                            string desc = Request.QueryString["desc"].ToString();
                            int cateSort = 0;
                            if (Request.QueryString["cateSort"].ToString() != null)
                            {
                                cateSort = int.Parse(Request.QueryString["cateSort"].ToString());
                            }
                            int cateID = 0;
                            if (Request.QueryString["cateID"].ToString() != null)
                            {
                                cateID = int.Parse(Request.QueryString["cateID"].ToString());
                            }

                            //update to Database
                            var update = db.tb_CategoryMain.Where(t => t.MainCateID == cateID).FirstOrDefault();
                            update.MainCateName = cateName;
                            update.MainCateDesc = desc;
                            update.Sort = cateSort;
                            db.SaveChanges();

                            //Reload list maincate
                            List<tb_CategoryMain> mainCateList = adGenerate.getMainCateList();
                            if (mainCateList.Count() != 0)
                            {
                                mainCateListHTML = adGenerate.generateHTMLMainCate(mainCateList);
                            }
                        }
                        catch (Exception exp)
                        {
                            mainCateListHTML = "error";
                        }
                        Response.Write(mainCateListHTML);
                    }
                    break;

                case "createMainCate":
                    {
                        String mainCateListHTML = "";
                        try
                        {
                            string cateName = Request.QueryString["cateName"].ToString();
                            string desc = Request.QueryString["desc"].ToString();
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

                            //Reload list maincate
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