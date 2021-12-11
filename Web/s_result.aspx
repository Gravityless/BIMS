<%@ Page Language="C#" AutoEventWireup="true" CodeFile="s_result.aspx.cs" Inherits="s_result" %>

<%@ Register src="inc/pageHead.ascx" tagname="pageHead" tagprefix="uc1" %>
<%@ Register src="inc/pageTail.ascx" tagname="pageTail" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <uc1:pageHead ID="pageHead1" runat="server" />

        </div>
        <div>
            <table width="1000" align="center">
                <tr><td><span style="display: inline-block; width: 40px;">编号</span></td><td><span style="display: inline-block; width: 100px;">名称</span></td><td><span style="display: inline-block; width: 50px;">类型</span></td><td>位置</td><td>图片</td><td>详细</td><td><span style="display: inline-block; width: 70px;">操作</span></td></tr>

                <%
                    string fid = Request.QueryString["fid"];
                    if (fid != null)
                    {
                        BLL.Feature.del(int.Parse(fid));
                        JH.JsHelper.AlertAndRedirect("删除成功！", "feature.aspx");
                    }

                    Model.Search search = new Model.Search();
                    search.Mode = int.Parse(Request.QueryString["mode"]);
                    search.Title = Request.QueryString["title"];
                    search.Tag = Request.QueryString["tag"];
                    if(Request.QueryString["locx"]!=null)
                        search.Locx = float.Parse(Request.QueryString["locx"]);
                    if(Request.QueryString["locy"]!=null)
                        search.Locy = float.Parse(Request.QueryString["locy"]);
                    if(Request.QueryString["dist"]!=null)
                        search.Dist = float.Parse(Request.QueryString["dist"]);

                    List<Model.Feature> list = BLL.Search.search(search);

                    for (int i = 0; i < list.Count; i++)
                    {
                    %>

                <tr><td><%=i+1 %></td><td><%=list[i].Title %></td><td><%=list[i].Tag %></td><td><%=list[i].Locx+","+list[i].Locy %></td><td><img src="/img/<%=list[i].Fimg %>" width="200"/></td><td><%=list[i].Detail %></td><td><a href="/detailView.aspx?fid=<%=list[i].Fid %>">查看</a></td></tr>

                <%} %>
            </table>
        </div>
        <div>

            <uc2:pageTail ID="pageTail1" runat="server" />

        </div>
    </form>
</body>
</html>
