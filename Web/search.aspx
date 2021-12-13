<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<%@ Register Src="inc/pageHead.ascx" TagName="pageHead" TagPrefix="uc1" %>
<%@ Register Src="inc/pageTail.ascx" TagName="pageTail" TagPrefix="uc2" %>
<%@ Register Src="inc/menu.ascx" TagName="menu" TagPrefix="uc3" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 249px;
        }

        .auto-style2 {
            width: 249px;
            height: 67px;
        }

        .auto-style3 {
            height: 67px;
        }

        .auto-style4 {
            width: 225px;
        }

        .auto-style5 {
            height: 67px;
            width: 225px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:pageHead ID="pageHead1" runat="server" />
        </div>
        <div>
            <table width="1000" align="center" border="1">
                <tr align="center">
                    <td class="auto-style1">搜索方式</td>
                    <td class="auto-style4">搜索条件</td>
                    <td>搜索参数</td>
                </tr>
                <tr align="center">
                    <td class="auto-style1">通过名称搜索</td>
                    <td class="auto-style4">要素名：<br />
                    </td>
                    <td>
                        <asp:TextBox ID="byName" runat="server" OnTextChanged="TextBox1_TextChanged" Width="270px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style1">通过标签搜索</td>
                    <td class="auto-style4">标签：</td>
                    <td>
                        <asp:TextBox ID="byTag" runat="server" Width="270px"></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style2">通过距离搜索(已知要素)</td>
                    <td class="auto-style5">要素名：<br />
                        目标标签：<br />
                        缓冲区(km)：</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="d_b_n_name" runat="server" Width="270px"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="d_b_n_tag" runat="server" Width="270px"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="d_b_n_dist" runat="server" Width="270px"></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style2">通过距离搜索（已知点）</td>
                    <td class="auto-style5">起始点经度：<br />
                        起始点纬度：<br />
                        目标标签：<br />
                        缓冲区(km)：</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="d_b_l_x" runat="server" Width="270px"></asp:TextBox>
                        <asp:TextBox ID="d_b_l_y" runat="server" Width="270px"></asp:TextBox>
                        <asp:TextBox ID="d_b_l_tag" runat="server" Width="270px"></asp:TextBox>
                        <asp:TextBox ID="d_b_l_dist" runat="server" Width="270px"></asp:TextBox>
                    </td>
                </tr>

                <tr align="center">
                    <td class="auto-style1"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="搜 索" /></td>
                </tr>

            </table>
        </div>
        <div>
            <uc2:pageTail ID="pageTail1" runat="server" />
        </div>
    </form>
</body>
</html>
