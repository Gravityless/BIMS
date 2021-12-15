<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detailView.aspx.cs" Inherits="detailView" %>

<%@ Register Src="inc/pageHead.ascx" TagName="pageHead" TagPrefix="uc1" %>
<%@ Register Src="inc/pageTail.ascx" TagName="pageTail" TagPrefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />

    <title>要素详情</title>
    <style type="text/css">
        .auto-style2 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:pageHead ID="pageHead1" runat="server" />
            <table width="1000" align="center" border="0">
                <tr>
                    <td rowspan="4" style="width: 300px;">
                        <asp:Image ID="img" runat="server" />
                    </td>
                    <td class="auto-style2">名称:<asp:Label ID="title" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">类型:<asp:Label ID="tag" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">位置:<asp:Label ID="location" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">查询:<br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查看相同标签要素" Width="177px" />
                        <br />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="以此要素建立缓冲区" Width="177px" />
                        &nbsp&nbsp 缓冲区(km)&nbsp;<asp:TextBox ID="dist" runat="server" Width="150px"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="建立缓冲区(带标签)" Width="177px" />
                        &nbsp;&nbsp; 指定标签&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="searchTag" runat="server" Width="150px">
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">详情:<asp:Label ID="detail" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            <table width="1000" align="center" border="0">
                <tr>
                    <td>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="反馈" />
                    </td>
                </tr>
                <tr>
                    <td align="top">
                        <asp:TextBox ID="feedBack" runat="server" Height="150px" Width="990px" TextMode="MultiLine">有什么想反馈的？</asp:TextBox>
                    </td>
                </tr>
            </table>
            <uc2:pageTail ID="pageTail1" runat="server" />
        </div>
    </form>
</body>
</html>
