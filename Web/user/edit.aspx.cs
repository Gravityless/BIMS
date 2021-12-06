using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Model.User user = new Model.User();
            user = (Model.User)SH.SessionHelper.GetSession("user");
            this.password.Text = user.Password;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.User user = new Model.User();
        user = (Model.User)SH.SessionHelper.GetSession("user");
        user.Password = this.password.Text;

        bool i = BLL.User.update(user);

        if (i)
        {
            JH.JsHelper.AlertAndRedirect("保存成功！", "index.aspx");
        }
        else
        {
            JH.JsHelper.AlertAndRedirect("保存失败！", "index.aspx");
        }
    }
}