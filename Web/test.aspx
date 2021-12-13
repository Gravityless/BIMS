<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

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
                  <tr><th scope="col">用户名</th><th scope="col">密码</th><th scope="col">权限</th><th scope="col">操作</th></tr>
              </thead>
                   <%

                       string id = Request.QueryString["id"];

                       if (id != null)
                       {
                           BLL.User.del(int.Parse(id));
                           JH.JsHelper.AlertAndRedirect("删除成功！", "user.aspx");
                       }

                       List<Model.User> list = BLL.User.list();
                       
                       for (int i= 0; i<list.Count; i++)
                        {
                            string status = "";
                            if (list[i].Status == 1)
                            {
                                status = "管理员";
                            }
                            else if(list[i].Status == 0)
                            {
                                status = "访客";
                            }
                            else
                            {
                                status = "禁用";
                            }

                            %>
                   <tr>
                       <td><%=list[i].Name %></td><td><%=list[i].Password %></td><td><%=status %></td>
                       <td><a href="user_edit.aspx?id=<%=list[i].Id %>">更新</a> <a href="user.aspx?id=<%=list[i].Id %>">删除</a></td>
                   </tr>
                   <%} %>

            </table>
        </div>
    </form>
</body>
</html>
