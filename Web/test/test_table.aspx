<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test_table.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />
    <title></title>
</head>
<body>
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">编号</th>
                <th scope="col">名称</th>
                <th scope="col">类型</th>
                <th scope="col">位置</th>
                <th scope="col">图片</th>
                <th scope="col">详细</th>
                <th scope="col">操作</th>
            </tr>
        </thead>

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

        <tr>
            <td><%=i+1 %></td>
            <td><%=list[i].Title %></td>
            <td><%=list[i].Tag %></td>
            <td><%=list[i].Locx+","+list[i].Locy %></td>
            <td>
                <img src="/img/<%=list[i].Fimg %>" width="200" /></td>
            <td><%=list[i].Detail %></td>
            <td><a href="f_edit.aspx?fid=<%=list[i].Fid %>">更新</a> <a href="feature.aspx?fid=<%=list[i].Fid %>">删除</a></td>
        </tr>

        <%} %>
    </table>
</body>
</html>
