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
            string id = Request.QueryString["id"];
            Model.User user = BLL.User.GetUser(int.Parse(id));
            this.password.Text = user.Password;
            this.userstatus.Text = user.Status.ToString();
            this.id.Value = id;
            this.username.Value = user.Name;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.User user = new Model.User();
        user.Name = this.username.Value;
        user.Password = this.password.Text;
        user.Status = int.Parse(this.userstatus.Text);
        user.Id = int.Parse(this.id.Value);

        if (BLL.User.update(user))
        {
            JH.JsHelper.AlertAndRedirect("更新成功！", "user.aspx");
        }
        else
        {
            JH.JsHelper.AlertAndRedirect("更新失败！", "user_edit.aspx");
        }
    }
}