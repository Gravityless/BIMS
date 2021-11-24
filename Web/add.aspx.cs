using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void add_button_Click(object sender, EventArgs e)
    {
        Model.User myuser = new Model.User();
        myuser.Name = this.username.Text;
        if (BLL.User.add(myuser))
        {
            JH.JsHelper.AlertAndParentUrl("Success!", "index.aspx");
        }
    }
}