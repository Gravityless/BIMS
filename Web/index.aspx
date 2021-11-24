<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
              <tr>
                  <td>ID</td><td>账号</td><td>密码</td>
              </tr>
                   <%
                       List<Model.User> list = BLL.User.list();
                       %>
                    <% for (int i= 0; i<list.Count; i++)   
                      {%>
                   <tr><td><%=list[i].Id %></td><td><%=list[i].Name %></td><td><%=list[i].Password %></td></tr>
                   <%} %>

            </table>
    </form>
</body>
</html>
