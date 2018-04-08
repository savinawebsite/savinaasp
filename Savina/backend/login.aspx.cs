using System;
using System.Linq;
using System.Web;
using System.Web.UI;

public partial class backend_login : System.Web.UI.Page
{
    private veritass_savinaEntities Db = new veritass_savinaEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["adAccountInfo"] != null)
        {
            Response.Cookies["adAccountInfo"].Expires = DateTime.Now.AddDays(-1);
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
                Session["user"] = username;
                Session["idadmin"] = checklogin.Account_code;

                HttpCookie aCookie = new HttpCookie("adAccountInfo");
                aCookie.Values["user"] = username;
                aCookie.Values["idadmin"] = checklogin.Account_code.ToString();
                Response.Cookies.Add(aCookie);
                Response.Redirect("../backend/index.aspx");
            }
            else
            {
                bodymodal.InnerHtml = "Password không đúng, vui lòng thử lại!";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
        }
    }
}
