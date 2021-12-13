<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_edit.aspx.cs" Inherits="user_edit" %>
<%@ Register Src="~/admin/inc/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/admin/inc/tail.ascx" TagPrefix="uc1" TagName="tail" %>
<%@ Register Src="~/admin/inc/menu.ascx" TagPrefix="uc1" TagName="menu" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <uc1:head ID="head1" runat="server" />
            </div>
            <div>
                <table width="1000" align="center" border="0">
                    <tr>
                        <td width="200" style="vertical-align: top">
                            <uc1:menu ID="menu1" runat="server" />
                        </td>
                        <td align="center"><table border="1" width="80%">
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
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="保 存" />
                <asp:HiddenField ID="id" runat="server" />
                <asp:HiddenField ID="username" runat="server" />
                </td>
            </tr>
        </table></td>
                    </tr>
                </table>
            </div>
        </div>
        <div>
            <uc1:tail ID="tail1" runat="server" />
        </div>
    </form>
</body>
</html>
