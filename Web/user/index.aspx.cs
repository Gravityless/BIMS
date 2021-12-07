using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Model.User user = new Model.User();

        user = (Model.User)SH.SessionHelper.GetSession("user");

        if (user != null)
            this.username.Text = user.Name;
        else
            JH.JsHelper.AlertAndRedirect("尚未登录！", "/login.aspx");
    }
}