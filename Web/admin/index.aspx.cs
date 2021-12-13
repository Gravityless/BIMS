using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Model.User user = new Model.User();

        user = (Model.User)SH.SessionHelper.GetSession("user");

        if (user == null || user.Status != 1)
            JH.JsHelper.AlertAndRedirect("您尚未登录或不是管理员！", "/login.aspx");
       
        this.username.Text = user.Name;
    }
}