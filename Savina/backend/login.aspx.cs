using System;
using System.Linq;
using System.Web.UI;
using System.Data;

public partial class backend_login : System.Web.UI.Page
{
    private veritass_savinaEntities Db = new veritass_savinaEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userInfo"] != null)
        {
            Response.Redirect("../backend/login.aspx");
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtUsername != null)
        {
            string username = txtUsername.Value;
            string password = txtPassword.Value;
            var checklogin = Db.tb_LocalAccount.Where(p => p.User_Name == username && p.Password == password).FirstOrDefault();
            if (checklogin != null)
            {
                Response.Redirect("../backend/index.aspx");
            }
            else
            {
                bodymodal.InnerHtml = "incorrect pass";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
        }
    }
}
