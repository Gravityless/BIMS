﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="admin_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>建筑信息后台管理</title>
</head>
<frameset rows="100,*" cols="*" frameborder="no" border="0" framespacing="0">
    <frame src="top.aspx" name="topFrame" scrolling="No" noresize="noresize" id="topFrame"/>
    <frameset cols="200,*" frameborder="no" border="0" framespacing="0">
        <frame src="menu.aspx" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" />
        <frame src="" name="view" id="mainFrame"/>
    </frameset> 
</frameset>
<noframes>
</noframes>
</html>
