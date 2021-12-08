<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f_edit.aspx.cs" Inherits="admin_f_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" width="80%">
                <tr><td>名称：</td><td>
                    <asp:TextBox ID="title" runat="server" Width="400px"></asp:TextBox>
                    </td></tr>
                <tr><td>类型：</td><td>
                    <asp:TextBox ID="tag" runat="server"></asp:TextBox>
                    </td></tr>
                <tr><td>经度：</td><td>
                    <asp:TextBox ID="locx" runat="server"></asp:TextBox>
                    </td></tr>
                <tr><td>纬度：</td><td>
                    <asp:TextBox ID="locy" runat="server"></asp:TextBox>
                    </td></tr>
                <tr><td>图片：</td><td>
                    <asp:FileUpload ID="fimg" runat="server" />
                    </td></tr>
                <tr><td>详细：</td><td>
                    <asp:TextBox ID="detail" runat="server" Height="80px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </td></tr>
                <tr><td>&nbsp;</td><td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确 认" />
                    </td></tr>
            </table>
        </div>
        <asp:HiddenField ID="featureId" runat="server" />
        <asp:HiddenField ID="imgPath" runat="server" OnValueChanged="HiddenField2_ValueChanged" />
    </form>
</body>
</html>
