using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class inc_navBar : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string title = featureName.Text;
        int fid = BLL.Feature.GetFeatureByName(title).Fid;
        JH.JsHelper.Redirect("/detailView.aspx?fid=" + fid + "");
    }
}