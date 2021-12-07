using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_reporting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Model.User user = new Model.User();

        user = (Model.User)SH.SessionHelper.GetSession("user");

        if (user != null)
        {
            Model.Report report = new Model.Report();

            int fid = int.Parse(Request.QueryString["fid"].ToString());
            string feedBack = Request.QueryString["feedBack"].ToString();

            Model.Feature feature = BLL.Feature.GetFeature(fid);

            report.Fid = feature.Fid;
            report.Uid = user.Id;
            report.Status = 0;
            report.Addate = DateTime.Now;
            report.FeedBack = feedBack;

            if (BLL.Report.add(report))
            {
                JH.JsHelper.AlertAndRedirect("反馈成功！", "/user/report.aspx");
            }
            else
            {
                JH.JsHelper.AlertAndRedirect("反馈失败！", "/user/report.aspx");
            }
        }
        else
            JH.JsHelper.AlertAndRedirect("尚未登录！", "/login.aspx");
    }
}