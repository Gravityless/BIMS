<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feature.aspx.cs" Inherits="admin_feature" %>

<%@ Register Src="~/admin/inc/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/admin/inc/tail.ascx" TagPrefix="uc1" TagName="tail" %>
<%@ Register Src="~/admin/inc/menu.ascx" TagPrefix="uc1" TagName="menu" %>
<%@ Register Src="~/admin/inc/navBar.ascx" TagPrefix="uc1" TagName="navBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />
    <script src="/js/jQuery-3.6.0.js"></script>
    <script src="/js/bootstrap.js"></script>
    <title>要素列表</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="width: 1000px; margin: 0 auto">
                    <uc1:navBar ID="navBar1" runat="server" />
                </div>
            <div>
                <uc1:head ID="head1" runat="server" />
            </div>
            <div>
                <table width="1000" align="center" border="0">
                    <tr>
                        <td width="200" style="vertical-align: top">
                            <uc1:menu ID="menu1" runat="server" />
                        </td>
                        <td align="center">
                            <table class="table">
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


                                    List<Model.Feature> list = BLL.Feature.list();

                                    for (int i = 0; i < list.Count; i++)
                                    {
                                %>

                                <tr>
                                    <td><%=i+1 %></td>
                                    <td><%=list[i].Title %></td>
                                    <td><%=list[i].Tag %></td>
                                    <td><%=list[i].Locx+","+list[i].Locy %></td>
                                    <td>
                                        <img src="/img/<%=list[i].Fimg %>" width="50" /></td>
                                    <td><a href="f_edit.aspx?fid=<%=list[i].Fid %>">更新</a> <a href="feature.aspx?fid=<%=list[i].Fid %>">删除</a></td>
                                </tr>

                                <%} %>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div>

                <uc1:tail ID="tail1" runat="server" />

            </div>
        </div>
    </form>
</body>
</html>
