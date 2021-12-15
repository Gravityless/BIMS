<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<%@ Register src="inc/sideBar.ascx" tagname="sideBar" tagprefix="uc1" %>

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
            <uc1:sideBar ID="sideBar1" runat="server" />
        </div>
    </form>
</body>
</html>
