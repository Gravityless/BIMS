<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background:#DEDEDE; margin:0; padding:0;">
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr align="center"><td><a href="user.aspx" target="view">用户管理</a></td></tr>
                <tr align="center"><td><a href="feature.aspx" target="view">要素管理</a></td></tr>
                <tr align="center"><td><a href="f_add.aspx" target="view">新增要素</a></td></tr>
                <tr align="center"><td><a href="search.aspx" target="view">要素查询</a></td></tr>
                <tr align="center"><td><a href="report.aspx" target="view">反馈信息</a></td></tr>
            </table>
        </div>
    </form>
</body>
</html>
