using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class backend_category_sub1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loadSubCat1();
    }

    private void loadSubCat1()
    {
        String html = "";
        html = adGenerate.getSubCat1List();
        this.dvSubCate1List.InnerHtml = html;
    }
}