<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="220" align="center">
                <tr><td>账号</td><td>
                    <asp:TextBox ID="username" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td></tr>
                <tr><td>密码</td><td>
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td></tr>
                <tr><td>&nbsp;</td><td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登 录" />
                    </td></tr>
            </table>
        </div>
    </form>
</body>
</html>
