<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="admin_report" %>

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
    <title></title>
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
                                <thead class="thead-dark" style="margin: 0 auto">
                                    <tr style="margin: 0 auto">
                                        <th scope="col">要素名</th>
                                        <th scope="col">图片</th>
                                        <th scope="col">反馈用户</th>
                                        <th scope="col">反馈内容</th>
                                        <th scope="col">反馈时间</th>
                                        <th scope="col"style="width:100px">反馈状态</th>
                                        <th scope="col" style="width:60px">操作</th>
                                    </tr>
                                </thead>
                                <%  List<Model.Report> list = BLL.Report.list();
                                    for (int i = 0; i < list.Count; i++)
                                    {
                                        Model.Feature feature = BLL.Feature.GetFeature(list[i].Fid);
                                        string featureName = feature.Title;
                                        string imgPath = feature.Fimg;
                                        string username = BLL.User.GetUser(list[i].Uid).Name;
                                        string status = "";
                                        if (list[i].Status == 0)
                                        {
                                            status = "已反馈";
                                        }
                                        else
                                        {
                                            status = "已解决";
                                        }
                                %>
                                <tr align="center">
                                    <td><%=featureName %></td>
                                    <td>
                                        <img src="/img/<%=imgPath %>" width="50" /></td>
                                    <td><%=username %></td>
                                    <td><%=list[i].FeedBack %></td>
                                    <td><%=list[i].Addate %></td>
                                    <td><%=status %></td>
                                    <td><a href="reportDealer.aspx?rid=<%=list[i].Rid %>&fid=<%=list[i].Fid %>">处理</a></td>
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
