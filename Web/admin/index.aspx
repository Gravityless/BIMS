<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_main" %>

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
    <title>建筑信息后台管理</title>
    <style type="text/css">
        .auto-style1 {
            width: 780px;
            height: 650px;
        }
    </style>
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
                            <asp:Label ID="username" runat="server" Text="label"></asp:Label>
                            ,欢迎登陆系统</td>
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
