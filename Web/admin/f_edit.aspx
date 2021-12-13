<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f_edit.aspx.cs" Inherits="admin_f_edit" %>

<%@ Register Src="~/admin/inc/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/admin/inc/tail.ascx" TagPrefix="uc1" TagName="tail" %>
<%@ Register Src="~/admin/inc/menu.ascx" TagPrefix="uc1" TagName="menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                        <td align="center">
                            <table border="1" width="80%">
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;名称：</td>
                                    <td>
                                        <asp:TextBox ID="title" runat="server" Width="400px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;类型：</td>
                                    <td>
                                        <asp:TextBox ID="tag" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;经度：</td>
                                    <td>
                                        <asp:TextBox ID="locx" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;纬度：</td>
                                    <td>
                                        <asp:TextBox ID="locy" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;图片：</td>
                                    <td>
                                        <asp:FileUpload ID="fimg" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;详细：</td>
                                    <td>
                                        <asp:TextBox ID="detail" runat="server" Height="80px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确 认" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div>

                <uc1:tail ID="tail1" runat="server" />

            </div>
        </div>
        <asp:HiddenField ID="featureId" runat="server" />
        <asp:HiddenField ID="imgPath" runat="server" OnValueChanged="HiddenField2_ValueChanged" />
    </form>
</body>
</html>
