<%@ Page Language="C#" AutoEventWireup="true" CodeFile="s_result.aspx.cs" Inherits="s_result" %>

<%@ Register Src="inc/pageHead.ascx" TagName="pageHead" TagPrefix="uc1" %>
<%@ Register Src="inc/pageTail.ascx" TagName="pageTail" TagPrefix="uc2" %>
<%@ Register Src="~/inc/navBar.ascx" TagPrefix="uc1" TagName="navBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />
    <script src="/js/jQuery-3.6.0.js"></script>
    <script src="/js/bootstrap.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1000px; margin: 0 auto">
            <uc1:navBar ID="navBar1" runat="server" />
        </div>
        <div>
            <uc1:pageHead ID="pageHead1" runat="server" />
        </div>
        <div>
            <table class="table" align="center" style="width: 1000px">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col" style="width: 60px">编号</th>
                        <th scope="col" style="width: 150px">名称</th>
                        <th scope="col" style="width: 60px">类型</th>
                        <th scope="col">位置</th>
                        <th scope="col">图片</th>
                        <th scope="col" style="width: 120px">操作</th>
                    </tr>
                </thead>

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
                    if (Request.QueryString["locx"] != null)
                        search.Locx = float.Parse(Request.QueryString["locx"]);
                    if (Request.QueryString["locy"] != null)
                        search.Locy = float.Parse(Request.QueryString["locy"]);
                    if (Request.QueryString["dist"] != null)
                        search.Dist = float.Parse(Request.QueryString["dist"])/100;

                    List<Model.Feature> list = BLL.Search.search(search);

                    for (int i = 0; i < list.Count; i++)
                    {
                %>

                <tr>
                    <td><%=i+1 %></td>
                    <td><%=list[i].Title %></td>
                    <td><%=list[i].Tag %></td>
                    <td><%=list[i].Locx+","+list[i].Locy %></td>
                    <td>
                        <img src="/img/<%=list[i].Fimg %>" width="200" /></td>
                    <td><a href="/detailView.aspx?fid=<%=list[i].Fid %>">查看</a></td>
                </tr>

                <%} %>
            </table>
        </div>
        <div>

            <uc2:pageTail ID="pageTail1" runat="server" />

        </div>
    </form>
</body>
</html>
