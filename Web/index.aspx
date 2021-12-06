<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register src="inc/pageHead.ascx" tagname="pageHead" tagprefix="uc1" %>
<%@ Register src="inc/pageTail.ascx" tagname="pageTail" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>泸州市建筑信息</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:pageHead ID="pageHead1" runat="server" />
            
            <div style="width:1000px; margin:0 auto">
                <ul style="list-style:none; margin:0;padding:0;">
                    <%
                    List<Model.Feature> list = BLL.Feature.list();
                    for (int i = 0; i < list.Count; i++)
                    {
                    %>

                    <li style="float:left; height:200px; width:238px; text-align:center; border:#DEDEDE solid 1px; margin:10px 10px 10px 0">
                        <a href="detailView.aspx?fid=<%=list[i].Fid %>" target="_blank">
                            <img src="/img/<%=list[i].Fimg %>" width="200"/>
                            <br>
                            <%=list[i].Title %> | <%=list[i].Tag %>
                        </a>

                    </li>

                    <%} %>
                </ul>
            </div>

            <uc2:pageTail ID="pageTail1" runat="server" />
        </div>
    </form>
</body>
</html>
