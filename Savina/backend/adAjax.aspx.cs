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
                #region CREATE SUBCATE2
                case "createSubCate2":
               {
                String html = "";
                try
                {
                    String subCate2Name = Request.QueryString["subCate2Name"].ToString();
                    String subCate2Desc = Request.QueryString["subCate2Desc"].ToString();
                    byte subCate2Sort = 0;
                    if (Request.QueryString["subCate2Sort"].ToString() != null)
                    {
                                subCate2Sort = byte.Parse(Request.QueryString["subCate2Sort"].ToString());
                    }
                    int mainCateID = 0;
                    if (Request.QueryString["mainCateID"].ToString() != null)
                    {
                                mainCateID = int.Parse(Request.QueryString["mainCateID"].ToString());
                    }
                    int subCate1ID = 0;
                    if (Request.QueryString["subCate1ID"].ToString() != null)
                    {
                        subCate1ID = int.Parse(Request.QueryString["subCate1ID"].ToString());
                    }

                            //Insert to Database
                     tb_CategorySub2 subCat1 = new tb_CategorySub2();
                    subCat1.SubCate1ID = subCate1ID;
                    subCat1.SubCate2Name = subCate2Name;
                    subCat1.SubCate2Desc = subCate2Desc;
                    subCat1.Sort = subCate2Sort;
                    subCat1.CreateDate = DateTime.Now;
                    subCat1.IsDeleted = false;
                    subCat1.IsDisplay = true;
                    db.tb_CategorySub2.Add(subCat1);
                    db.SaveChanges();

                    html = adGenerate.getSubCate2List();

                }
                catch (Exception exp)
                {
                    html = "error";
                }
                Response.Write(html);
            }
            break;
                #endregion

                #region DELETE SUBCATE2
                case "deleteSubCate2":
                    {
                        String subCate2HTML = "";
                        try
                        {
                            int subCate2ID = 0;
                            if (Request.QueryString["subCate2ID"].ToString() != null)
                            {
                                subCate2ID = int.Parse(Request.QueryString["subCate2ID"].ToString());
                                tb_CategorySub2 t = (tb_CategorySub2)db.tb_CategorySub2.Where(b => b.SubCate2ID == subCate2ID).First();
                                db.tb_CategorySub2.Remove(t);
                                db.SaveChanges();
                            }

                            subCate2HTML = adGenerate.getSubCate2List();
                        }
                        catch (Exception exp)
                        {
                            subCate2HTML = "error";
                        }
                        Response.Write(subCate2HTML);
                    }
                    break;
                #endregion

                #region EDIT SUBCATE1
                case "editSubCate1":
                    {
                        String html = "";
                        try
                        {
                            String subCat1Name = Request.QueryString["subCat1Name"].ToString();
                            String subCat1Desc = Request.QueryString["subCat1Desc"].ToString();
                            byte subCat1Sort = 0;
                            if (Request.QueryString["subCat1Sort"].ToString() != null)
                            {
                                subCat1Sort = byte.Parse(Request.QueryString["subCat1Sort"].ToString());
                            }
                            int mainCatID = 0;
                            if (Request.QueryString["mainCatID"].ToString() != null)
                            {
                                mainCatID = int.Parse(Request.QueryString["mainCatID"].ToString());
                            }
                            int subCate1ID = 0;
                            if (Request.QueryString["subCate1ID"].ToString() != null)
                            {
                                subCate1ID = int.Parse(Request.QueryString["subCate1ID"].ToString());
                            }

                            //update to Database
                            var update = db.tb_CategorySub1.Where(t => t.SubCate1ID == subCate1ID).FirstOrDefault();
                            update.SubCate1Name = subCat1Name;
                            update.SubCate1Desc = subCat1Desc;
                            update.Sort = subCat1Sort;
                            update.MainCateID = mainCatID;
                            db.SaveChanges();

                            html = adGenerate.getSubCat1List();
                        }
                        catch (Exception exp)
                        {
                            html = "error";
                        }
                        Response.Write(html);
                    }
                    break;
                #endregion

                #region CREATE SUBCATE1
                case "createSubCate1":
                    {
                        String html = "";
                        try
                        {
                            String subCat1Name = Request.QueryString["subCat1Name"].ToString();
                            String subCat1Desc = Request.QueryString["subCat1Desc"].ToString();
                            byte subCat1Sort = 0;
                            if (Request.QueryString["subCat1Sort"].ToString() != null)
                            {
                                subCat1Sort = byte.Parse(Request.QueryString["subCat1Sort"].ToString());
                            }
                            int mainCatID = 0;
                            if (Request.QueryString["mainCatID"].ToString() != null)
                            {
                                mainCatID = int.Parse(Request.QueryString["mainCatID"].ToString());
                            }

                            //Insert to Database
                            tb_CategorySub1 subCat1 = new tb_CategorySub1();
                            subCat1.MainCateID = mainCatID;
                            subCat1.SubCate1Name = subCat1Name;
                            subCat1.SubCate1Desc = subCat1Desc;
                            subCat1.Sort = subCat1Sort;
                            subCat1.CreateDate = DateTime.Now;
                            subCat1.IsDeleted = false;
                            subCat1.IsDisplay = true;
                            db.tb_CategorySub1.Add(subCat1);
                            db.SaveChanges();

                            html = adGenerate.getSubCat1List() ;

                        }catch(Exception exp)
                        {
                            html = "error";  
                        }
                        Response.Write(html);
                    }
                    break;
                #endregion

                #region DELETE SUBCATE1
                case "deleteSubCate1":
                    {
                        String subCate1HTML = "";
                        try
                        {
                            int subCate1ID = 0;
                            if (Request.QueryString["subCate1ID"].ToString() != null)
                            {
                                subCate1ID = int.Parse(Request.QueryString["subCate1ID"].ToString());
                                tb_CategorySub1 t = (tb_CategorySub1)db.tb_CategorySub1.Where(b => b.SubCate1ID == subCate1ID).First();
                                db.tb_CategorySub1.Remove(t);
                                db.SaveChanges();
                            }

                            subCate1HTML = adGenerate.getSubCat1List();
                        }
                        catch (Exception exp)
                        {
                            subCate1HTML = "error";
                        }
                        Response.Write(subCate1HTML);
                    }
                    break;
                #endregion

                #region FETCH SUBCATE1
                case "fetchSubCate1":
                    {
                        String subCate1ListHTML = "";
                        try
                        {
                            int mainCateID = 0;
                            if (Request.QueryString["mainCateID"].ToString() != null)
                            {
                                mainCateID = int.Parse(Request.QueryString["mainCateID"].ToString());
                                subCate1ListHTML = adGenerate.getSubCate1List(mainCateID);
                            }
                        }
                        catch (Exception exp)
                        {
                            subCate1ListHTML = "error";
                        }
                        Response.Write(subCate1ListHTML);
                    }
                    break;
                #endregion

                #region FETCH MAINCATE
                case "fetchMainCate":
                    {
                        String mainCateListHTML = "";
                        try
                        {
                            //Reload list maincate
                            List<tb_CategoryMain> mainCateList = adGenerate.getMainCateList();
                            if (mainCateList.Count() != 0)
                            {
                                mainCateListHTML = adGenerate.generateHTMLMainCateSelect(mainCateList);
                            }
                        }catch(Exception exp)
                        {
                            mainCateListHTML = "error";
                        }
                        Response.Write(mainCateListHTML);
                    }
                    break;
                #endregion

                #region DELETE MAINCATE
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
                #endregion

                #region EDIT MAINCATE
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
                #endregion

                #region CREATE MAINCATE
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
                    #endregion
            }
        }
    } 
}