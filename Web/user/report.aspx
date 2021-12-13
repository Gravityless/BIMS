<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="user_report" %>

<%@ Register Src="~/inc/pageHead.ascx" TagPrefix="uc1" TagName="pageHead" %>
<%@ Register Src="~/inc/pageTail.ascx" TagPrefix="uc1" TagName="pageTail" %>
<%@ Register Src="../inc/menu.ascx" TagName="menu" TagPrefix="uc2" %>
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
            <uc1:pageHead runat="server" ID="pageHead" />
        </div>
        <div>
            <table width="1000" border="0" align="center">
                <tr>
                    <td width="150"  style="vertical-align: top">
                        <uc2:menu ID="menu1" runat="server" />
                    </td>
                    <td align="center">

                        <table class="table">
                            <thead class="thead-dark">
                                <tr style="margin: 0 auto">
                                    <th scope="col">要素名</th>
                                    <th scope="col">图片</th>
                                    <th scope="col">反馈内容</th>
                                    <th scope="col">反馈时间</th>
                                    <th scope="col">反馈状态</th>
                                </tr>
                            </thead>
                            <%  int uid = ((Model.User)SH.SessionHelper.GetSession("user")).Id;
                                List<Model.Report> list = BLL.Report.GetReport(uid);
                                for (int i = 0; i < list.Count; i++)
                                {
                                    Model.Feature feature = BLL.Feature.GetFeature(list[i].Fid);
                                    string featureName = feature.Title;
                                    string imgPath = feature.Fimg;
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
                                <td><%=list[i].FeedBack %></td>
                                <td><%=list[i].Addate %></td>
                                <td><%=status %></td>
                            </tr>
                            <%} %>
                        </table>

                    </td>
                </tr>
            </table>
        </div>
        <div>
            <uc1:pageTail runat="server" ID="pageTail" />
        </div>
    </form>
</body>
</html>
