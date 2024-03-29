﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="admin_search" %>

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
    <title>要素查询</title>
    <style type="text/css">
        .auto-style1 {
            width: 213px;
        }

        .auto-style2 {
            width: 273px;
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
                            <table width="80%" align="center" border="1">
                                <tr align="center">
                                    <td class="auto-style2">搜索方式</td>
                                    <td class="auto-style1">搜索条件</td>
                                    <td>搜索参数</td>
                                </tr>
                                <tr align="center">
                                    <td class="auto-style2">通过名称搜索</td>
                                    <td class="auto-style1">要素名：<br />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="byName" runat="server" OnTextChanged="TextBox1_TextChanged" Width="255px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td class="auto-style2">通过标签搜索</td>
                                    <td class="auto-style1">标签：</td>
                                    <td>
                                        <asp:TextBox ID="byTag" runat="server" Width="255px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td class="auto-style2">通过距离搜索(已知要素)</td>
                                    <td class="auto-style1">要素名：<br />
                                        目标标签：<br />
                                        缓冲区(km)：</td>
                                    <td>
                                        <asp:TextBox ID="d_b_n_name" runat="server" Width="255px"></asp:TextBox>
                                        <br />
                                        <asp:TextBox ID="d_b_n_tag" runat="server" Width="255px"></asp:TextBox>
                                        <br />
                                        <asp:TextBox ID="d_b_n_dist" runat="server" Width="255px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td class="auto-style2">通过距离搜索（已知点）</td>
                                    <td class="auto-style1">起始点经度：<br />
                                        起始点纬度：<br />
                                        目标标签：<br />
                                        缓冲区(km)：</td>
                                    <td>
                                        <asp:TextBox ID="d_b_l_x" runat="server" Width="255px"></asp:TextBox>
                                        <br />
                                        <asp:TextBox ID="d_b_l_y" runat="server" Width="255px"></asp:TextBox>
                                        <br />
                                        <asp:TextBox ID="d_b_l_tag" runat="server" Width="255px" OnTextChanged="d_b_l_tag_TextChanged"></asp:TextBox>
                                        <br />
                                        <asp:TextBox ID="d_b_l_dist" runat="server" Width="255px"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr align="center">
                                    <td class="auto-style2">
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="搜 索" /></td>
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
    </form>
</body>
</html>
