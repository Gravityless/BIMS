using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class detailView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string fid = Request["fid"];
        Model.Feature feature = BLL.Feature.GetFeature(int.Parse(fid));
        this.title.Text = feature.Title;
        this.tag.Text = feature.Tag;
        this.location.Text = "(" + feature.Locx + "," + feature.Locy + ")";
        this.detail.Text = feature.Detail;
        this.img.ImageUrl = "img/" + feature.Fimg.Trim();
        this.img.Width = 280;
    }
}