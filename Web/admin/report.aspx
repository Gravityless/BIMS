<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="admin_report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div>
            <table width="1000" align="center" border="0"><tr><td align="center">
                
                    <table width="100%" align="center" border="1">
                        <tr align="center"><td>要素名</td><td>图片</td><td>反馈用户</td><td>反馈内容</td><td>反馈时间</td><td>反馈状态</td><td>操作</td></tr>
                        <%  List<Model.Report> list = BLL.Report.list();                        
                            for (int i = 0; i < list.Count; i++)
                            {
                                Model.Feature feature = BLL.Feature.GetFeature(list[i].Fid);
                                string featureName = feature.Title;
                                string imgPath = feature.Fimg;
                                string username = BLL.User.GetUser(list[i].Uid).Name;
                                %>                        
                        <tr align="center"><td><%=featureName %></td><td><img src="/img/<%=imgPath %>" width="50" /></td><td><%=username %></td><td><%=list[i].FeedBack %></td><td><%=list[i].Addate %></td><td><%=list[i].Status %></td><td><a href="reportDealer.aspx?rid=<%=list[i].Rid %>&fid=<%=list[i].Fid %>">处理</a></td></tr>
                            <%} %>
                    </table>
                    
                </td></tr>
            </table>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
