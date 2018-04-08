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
                        tbMainCate. = customerId;
                        tTracking.LessionId = lessionId;
                        tTracking.InsertDate = DateTime.Now;
                        tTracking.LessionStatus = lessionStatus;
                        if (lessionStatus == 3 && lessionId == 1)
                        {
                            tTracking.ActiveDate = DateTime.Now;
                        }
                        db.tTrackings.Add(tTracking);
                        db.SaveChanges();


                        //int lessionId = Convert.ToInt32(Request.QueryString["lessionId"].ToString());
                        //var updateTrackRecord = db.tTrackings.Where(t => t.CustomerId == customerId && t.LessionId == lessionId).FirstOrDefault();
                        //updateTrackRecord.LessionStatus = 3;
                        //updateTrackRecord.ActiveDate = DateTime.Now;
                        // db.SaveChanges();
                        //Response.Write("success");
                    }
                    break;
            }


        }
    }

   
}