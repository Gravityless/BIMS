using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// mode = 0 search by name
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (byName.Text != "")
            JH.JsHelper.Redirect("/s_result.aspx?mode=1&title=" + byName.Text + "");

        if (byTag.Text != "")
            JH.JsHelper.Redirect("/s_result.aspx?mode=2&tag=" + byTag.Text + "");

        if (d_b_n_name.Text != "" && d_b_n_tag.Text == "")
            JH.JsHelper.Redirect("/s_result.aspx?mode=3&title=" + d_b_n_name.Text + "&dist=" + d_b_n_dist.Text + "");

        if (d_b_n_name.Text != "" && d_b_n_tag.Text != "")
            JH.JsHelper.Redirect("/s_result.aspx?mode=4&title=" + d_b_n_name.Text + "&dist=" + d_b_n_dist.Text + "&tag=" + d_b_n_tag.Text + "");

        if (d_b_l_x.Text != "" && d_b_l_tag.Text == "")
            JH.JsHelper.Redirect("/s_result.aspx?mode=5&locx=" + d_b_l_x.Text + "&locy=" + d_b_l_y.Text + "&dist=" + d_b_l_dist.Text + "");

        if (d_b_l_x.Text != "" && d_b_l_tag.Text != "")
            JH.JsHelper.Redirect("/s_result.aspx?mode=6&locx=" + d_b_l_x.Text + "&locy=" + d_b_l_y.Text + "&dist=" + d_b_l_dist.Text + "&tag=" + d_b_l_tag.Text + "");
    }
}