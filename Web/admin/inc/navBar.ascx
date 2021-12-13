<%@ Control Language="C#" AutoEventWireup="true" CodeFile="navBar.ascx.cs" Inherits="inc_navBar" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.aspx">泸州在线</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/index.aspx">主页 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/login.aspx">登录</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/user/logout.aspx">退出</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="login.aspx" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">类别
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/index.aspx?tag=学校">学校</a>
                    <a class="dropdown-item" href="/index.aspx?tag=政府">政府</a>
                    <a class="dropdown-item" href="/index.aspx?tag=医院">医院</a>
                    <a class="dropdown-item" href="/index.aspx?tag=银行">银行</a>
                    <a class="dropdown-item" href="/index.aspx?tag=餐饮">餐饮</a>
                    <a class="dropdown-item" href="/index.aspx?tag=商业">商业</a>
                    <a class="dropdown-item" href="/index.aspx?tag=住宿">住宿</a>
                </div>
            </li>

        </ul>
        <form class="form-inline my-2 my-lg-0">
            <asp:TextBox ID="featureName" runat="server" class="form-control mr-sm-6" type="search" placeholder="Search" aria-label="Search" Style="width: 350px"></asp:TextBox>
            &nbsp;<asp:Button ID="Button1" runat="server" class="btn btn-outline-success my-2 my-sm-0" type="submit" Text="搜索" OnClick="Button1_Click" />
        </form>
    </div>
</nav>
