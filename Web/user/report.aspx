<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="user_report" %>

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
                
                    <table width="100%" align="center" border="1">
                        <tr><td>要素名</td><td>反馈内容</td><td>反馈时间</td><td>反馈状态</td></tr>
                        <%  int uid = ((Model.User)SH.SessionHelper.GetSession("user")).Id;
                            List<Model.Report> list = BLL.Report.GetReport(uid);                        
                            for (int i = 0; i < list.Count; i++)
                            {
                                string featureName = BLL.Feature.GetFeature(list[i].Fid).Title;
                                %>                        
                        <tr><td><%=featureName %></td><td><%=list[i].FeedBack %></td><td><%=list[i].Addate %></td><td><%=list[i].Status %></td></tr>
                            <%} %>
                    </table>
                    
                </td></tr>
            </table>
        </div>
        <div>
            <uc1:pageTail runat="server" ID="pageTail" />
        </div>
    </form>
</body>
</html>
