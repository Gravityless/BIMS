using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_f_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int fid = int.Parse(Request.QueryString["fid"].ToString());
            Model.Feature feature = BLL.Feature.GetFeature(fid);

            title.Text = feature.Title;
            tag.Text = feature.Tag;
            locx.Text = feature.Locx.ToString();
            locy.Text = feature.Locy.ToString();
            detail.Text = feature.Detail.ToString();
            featureId.Value = fid.ToString();
            imgPath.Value = feature.Fimg;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.Feature feature = new Model.Feature();
        feature.Title = this.title.Text.Trim();
        feature.Tag = this.tag.Text.Trim();
        feature.Locx = float.Parse(this.locx.Text);
        feature.Locy = float.Parse(this.locy.Text);
        feature.Detail = this.detail.Text.Trim();
        feature.Fid = int.Parse(featureId.Value);
        feature.Fimg = imgPath.Value;

        if (fimg.HasFile)
        {
            string fn = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + Path.GetExtension(fimg.FileName);
            string fp = "/img/" + fn;
            fimg.SaveAs(MapPath(fp));
            feature.Fimg = fn;
        }

        if (BLL.Feature.update(feature))
        {
            JH.JsHelper.AlertAndRedirect("更新成功！", "feature.aspx");
        }
        else
        {
            JH.JsHelper.AlertAndRedirect("更新失败！", "f_edit.aspx");
        }
    }

    protected void HiddenField2_ValueChanged(object sender, EventArgs e)
    {

    }
}