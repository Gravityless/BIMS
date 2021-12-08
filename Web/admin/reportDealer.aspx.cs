using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_reportDealer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int rid = int.Parse(Request.QueryString["rid"].ToString());
        int fid = int.Parse(Request.QueryString["fid"].ToString());
        if (BLL.Report.update(rid))
        {
            JH.JsHelper.Redirect("f_edit.aspx?fid="+fid+"");
        }
        else
        {
            JH.JsHelper.AlertAndRedirect("意外错误！", "report.aspx");
        }

    }
}