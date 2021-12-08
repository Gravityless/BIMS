<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feature.aspx.cs" Inherits="admin_feature" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" width="80%">
                <tr><td><span style="display: inline-block; width: 40px;">编号</span></td><td><span style="display: inline-block; width: 100px;">名称</span></td><td><span style="display: inline-block; width: 50px;">类型</span></td><td>位置</td><td>图片</td><td>详细</td><td><span style="display: inline-block; width: 70px;">操作</span></td></tr>

                <%
                    string fid = Request.QueryString["fid"];
                    if (fid != null)
                    {
                        BLL.Feature.del(int.Parse(fid));
                        JH.JsHelper.AlertAndRedirect("删除成功！", "feature.aspx");
                    }


                    List<Model.Feature> list = BLL.Feature.list();

                    for (int i = 0; i < list.Count; i++)
                    {
                    %>

                <tr><td><%=i+1 %></td><td><%=list[i].Title %></td><td><%=list[i].Tag %></td><td><%=list[i].Locx+","+list[i].Locy %></td><td><img src="/img/<%=list[i].Fimg %>" width="200"/></td><td><%=list[i].Detail %></td><td><a href="f_edit.aspx?fid=<%=list[i].Fid %>">更新</a> <a href="feature.aspx?fid=<%=list[i].Fid %>">删除</a></td></tr>

                <%} %>
            </table>
        </div>
    </form>
</body>
</html>
