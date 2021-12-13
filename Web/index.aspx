<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register Src="inc/pageHead.ascx" TagName="pageHead" TagPrefix="uc1" %>
<%@ Register Src="inc/pageTail.ascx" TagName="pageTail" TagPrefix="uc2" %>

<%@ Register Src="inc/navBar.ascx" TagName="navBar" TagPrefix="uc3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />
    <script src="/js/jQuery-3.6.0.js"></script>
    <script src="/js/bootstrap.js"></script>
    <title>泸州市建筑信息</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="width: 1000px; margin: 0 auto">
                <uc3:navBar ID="navBar1" runat="server" />
            </div>
            <uc1:pageHead ID="pageHead1" runat="server" />

            <div style="width: 1000px; margin: 0 auto">
                <ul style="list-style: none; margin: 0; padding: 0;">
                    <%
                        List<Model.Feature> list;
                        if (Request.QueryString["Tag"] == null)
                        {
                            list = BLL.Feature.list();
                        }
                        else
                        {
                            list = BLL.Feature.ListbyTag(Request.QueryString["Tag"]);
                        }

                        for (int i = 0; i < list.Count; i++)
                        {
                    %>

                    <li style="float: left; height: 200px; width: 238px; text-align: center; border: #DEDEDE solid 1px; margin: 10px 10px 10px 0">
                        <a href="detailView.aspx?fid=<%=list[i].Fid %>" target="_blank">
                            <img src="/img/<%=list[i].Fimg %>" width="200" />
                            <br />
                            <%=list[i].Title %> | <%=list[i].Tag %>
                        </a>

                    </li>

                    <%}%>
                </ul>
            </div>
            <div style="width:1000px;margin: 0 auto;">
                <uc2:pageTail ID="pageTail1" runat="server" />
            </div>

        </div>
    </form>
</body>
</html>
