using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;
using JH;
using System.IO;

public partial class admin_f_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.Feature feature = new Model.Feature();
        feature.Title = this.title.Text.Trim();
        feature.Tag = this.tag.Text.Trim();
        feature.Locx = float.Parse(this.locx.Text);
        feature.Locy = float.Parse(this.locy.Text);
        feature.Detail = this.detail.Text.Trim();

        if (fimg.HasFile)
        {
            string fn = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + Path.GetExtension(fimg.FileName);
            string fp = "/img/" + fn;
            fimg.SaveAs(MapPath(fp));
            feature.Fimg = fn;
        }

        if (BLL.Feature.add(feature))
        {
            JsHelper.AlertAndRedirect("添加成功！","feature.aspx");
        }
        else
        {
            JsHelper.AlertAndRedirect("添加失败！","f_add.aspx");
        }
    }
}