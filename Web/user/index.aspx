﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="user_index" %>

<%@ Register Src="~/inc/pageHead.ascx" TagPrefix="uc1" TagName="pageHead" %>
<%@ Register Src="~/inc/pageTail.ascx" TagPrefix="uc1" TagName="pageTail" %>
<%@ Register src="../inc/menu.ascx" tagname="menu" tagprefix="uc2" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:pageHead runat="server" ID="pageHead" />
        </div>
        <div>
            <table width="1000" align="center" border="0"><tr><td width="200">
                <uc2:menu ID="menu1" runat="server" />
                </td><td align="center">
                    <asp:Label ID="username" runat="server" Text="label"></asp:Label>
                    ,欢迎登陆系统</td></tr>
            </table>
        </div>
        <div>
            <uc1:pageTail runat="server" ID="pageTail" />
        </div>
    </form>
</body>
</html>
