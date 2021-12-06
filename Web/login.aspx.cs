using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.User user = BLL.User.GetUser(this.username.Text);

        if(BLL.User.login(this.username.Text, this.password.Text))
        {
            SH.SessionHelper.SetSession("user", user);
            JH.JsHelper.AlertAndRedirect("登录成功！", "user/index.aspx");
        }
        else
        {
            JH.JsHelper.AlertAndRedirect("登录失败！", "login.aspx");
        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        JH.JsHelper.Redirect("reg.aspx");
    }
}