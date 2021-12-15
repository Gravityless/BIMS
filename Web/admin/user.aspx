<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="admin_user" %>

<%@ Register Src="~/admin/inc/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/admin/inc/tail.ascx" TagPrefix="uc1" TagName="tail" %>
<%@ Register Src="~/admin/inc/menu.ascx" TagPrefix="uc1" TagName="menu" %>
<%@ Register Src="~/admin/inc/navBar.ascx" TagPrefix="uc1" TagName="navBar" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />
    <script src="/js/jQuery-3.6.0.js"></script>
    <script src="/js/bootstrap.js"></script>
    <title>用户列表</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="width: 1000px; margin: 0 auto">
                    <uc1:navBar ID="navBar1" runat="server" />
                </div>
            <div>
                <uc1:head ID="head1" runat="server" />
            </div>
            <div>
                <table width="1000" align="center" border="0">
                    <tr>
                        <td width="200" style="vertical-align: top">
                            <uc1:menu ID="menu1" runat="server" />
                        </td>
                        <td align="center">
                            <table class="table">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col">用户名</th>
                                        <th scope="col">密码</th>
                                        <th scope="col">权限</th>
                                        <th scope="col">操作</th>
                                    </tr>
                                </thead>
                                <%

                                    string id = Request.QueryString["id"];

                                    if (id != null)
                                    {
                                        BLL.User.del(int.Parse(id));
                                        JH.JsHelper.AlertAndRedirect("删除成功！", "user.aspx");
                                    }

                                    List<Model.User> list = BLL.User.list();

                                    for (int i = 0; i < list.Count; i++)
                                    {
                                        string status = "";
                                        if (list[i].Status == 1)
                                        {
                                            status = "管理员";
                                        }
                                        else if (list[i].Status == 0)
                                        {
                                            status = "访客";
                                        }
                                        else
                                        {
                                            status = "禁用";
                                        }

                                %>
                                <tr>
                                    <td><%=list[i].Name %></td>
                                    <td><%=list[i].Password %></td>
                                    <td><%=status %></td>
                                    <td><a href="user_edit.aspx?id=<%=list[i].Id %>">更新</a> <a href="user.aspx?id=<%=list[i].Id %>">删除</a></td>
                                </tr>
                                <%} %>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div>
            <uc1:tail ID="tail1" runat="server" />
        </div>
    </form>
</body>
</html>
