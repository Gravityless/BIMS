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


        if(BLL.User.login(this.username.Text, this.password.Text))
        {
            JH.JsHelper.AlertAndRedirect("登录成功！", "index.aspx");
        }
        else
        {
            JH.JsHelper.AlertAndRedirect("登录失败！", "login.aspx");
        }
    }


}