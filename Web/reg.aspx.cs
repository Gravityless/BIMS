using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.User user = new Model.User();
        user.Name = this.username.Text;
        user.Password = this.password.Text;
        user.Status = int.Parse(this.userstatus.Text);

        if (!BLL.User.Search(this.username.Text))
        {
            JH.JsHelper.AlertAndRedirect("账号已存在！", "reg.aspx");
        }

        if (BLL.User.add(user))
        {
            JH.JsHelper.AlertAndRedirect("注册成功！", "index.aspx");
        }
    }
}