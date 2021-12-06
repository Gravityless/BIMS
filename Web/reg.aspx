<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<%@ Register Src="~/inc/pageHead.ascx" TagPrefix="uc1" TagName="pageHead" %>
<%@ Register Src="~/inc/pageTail.ascx" TagPrefix="uc1" TagName="pageTail" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 166px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:pageHead runat="server" ID="pageHead" />
        </div>
        <div>
        <table align="center">
            <tr>
                <td>账号</td><td class="auto-style1">
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>密码</td><td class="auto-style1">
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>状态</td><td class="auto-style1">
                <asp:DropDownList ID="userstatus" runat="server">
                    <asp:ListItem Value="1">管理员</asp:ListItem>
                    <asp:ListItem Value="0">访客</asp:ListItem>
                    <asp:ListItem Value="-1">禁用</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td><td class="auto-style1">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注 册" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="登 录" OnClick="Button2_Click" />
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
