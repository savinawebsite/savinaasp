using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class backend_category_sub2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loadSubCate2();
    }

    private void loadSubCate2()
    {
        String html = "";
        html = adGenerate.getSubCate2List();
        this.dvSubCate2List.InnerHtml = html;
    }
}