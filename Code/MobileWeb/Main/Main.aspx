﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<html>
<head>
    <title>阿琴移动手机办公平台 </title>
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="index,follow" name="robots" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <link href="../Style/Mobile/pics/homescreen.gif" rel="apple-touch-icon" />
    <meta content="minimum-scale=1.0, width=device-width, maximum-scale=0.6667, user-scalable=no"
        name="viewport" />

    <script src="../JS/jquery-1.4.1.js" type="text/javascript"></script>

    <link href="../Style/Mobile/css/Style.css" rel="stylesheet" media="screen" type="text/css" />

    <script src="../Style/Mobile/javascript/functions.js" type="text/javascript"></script>

    <link href="../Style/Mobile/pics/startup.png" rel="apple-touch-startup-image" />
</head>
<body>
    <form id="main" method="post" runat="server">
    <div id="topbar">
        <div id="title">
            阿琴移动手机办公平台</div>
        <div id="leftbutton">
            <a href="../Main/Main.aspx" class="noeffect">主页</a>
        </div>
        <div id="rightbutton">
            <a href="../Default.aspx" class="noeffect">退出</a>
        </div>
    </div>
    <div id="tributton">
        <div class="links">
            <a id="pressed" href="#">主页</a><a href="OnlineUser.aspx">在线用户</a><a href="http://aqinxiaodian.taobao.com" target="_blank" >关于</a></div>
    </div>
    <div id="content">
        <span class="graytitle">基本菜单</span>
        <ul class="pageitem">
            <li class="textbox"><span class="header">欢迎,<%= SDLX.Common.PublicMethod.GetSessionValue("UserName")%></span><p>
                阿琴移动手机办公平台（手机版）!</p>
            </li>
            <%=menus %>
        </ul>
        <span class="graytitle">待办事项</span>
        <div id="divResult">
        </div>
    </div>
    <div id="footer">
        <a href="#">Powered by 阿琴小店</a></div>
    <div style="overflow: auto; height: 100%; scrollbar-face-color: #ffffff; scrollbar-highlight-color: #6fa4d0;
        scrollbar-shadow-color: #6fa4d0; scrollbar-3dlight-color: #e6e6e6; scrollbar-arrow-color: #6fa4d0;
        scrollbar-track-color: #ffffff; scrollbar-darkshadow-color: #e6e6e6; display: none;">
        <asp:TreeView ID="ListTreeView" runat="server" ExpandDepth="0" ShowLines="True" ForeColor="Black">
            <ParentNodeStyle HorizontalPadding="2px" />
            <RootNodeStyle HorizontalPadding="2px" />
            <LeafNodeStyle HorizontalPadding="2px" />
            <Nodes>
                <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/plugin.png" Text="我的办公桌" Value="F001"
                    NavigateUrl="../Main/Main.aspx?param=F001" SelectAction="Expand">
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/rmail.png" Text="内部邮件" Value="F001M001"
                        NavigateUrl="../Main/Main.aspx?param=F001M001" SelectAction="Expand">
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/plugin.png" Text="收件箱" Value="001"
                            NavigateUrl="../LanEmail/LanEmailShou.aspx" Target="rform"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/voice.png" Text="草稿箱" Value="002"
                            NavigateUrl="../LanEmail/LanEmailCao.aspx" Target="rform"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/voice.png" Text="已发送" Value="003"
                            NavigateUrl="../LanEmail/LanEmailYiFa.aspx" Target="rform"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/voice.png" Text="已删除" Value="004"
                            NavigateUrl="../LanEmail/LanEmailYiDel.aspx" Target="rform"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/mail.png" Text="Internet邮件" Value="F001M002"
                        NavigateUrl="../Main/Main.aspx?param=F001M002" SelectAction="Expand">
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/voice.png" Text="收件箱" Value="005"
                            NavigateUrl="../NetMail/NetMailShou.aspx" Target="rform"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/voice.png" Text="草稿箱" Value="006"
                            NavigateUrl="../NetMail/NetMailCao.aspx" Target="rform"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/voice.png" Text="已发送" Value="007"
                            NavigateUrl="../NetMail/NetMailYiFa.aspx" Target="rform"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/voice.png" Text="已删除" Value="008"
                            NavigateUrl="../NetMail/NetMailYiDel.aspx" Target="rform"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/telephone.png" Text="手机短信" Value="009"
                        NavigateUrl="../Mobile/MobileSms.aspx" Target="rform"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/messages.png" Text="公告通知" Value="F001M003"
                        NavigateUrl="../Main/Main.aspx?param=F001M003" SelectAction="Expand">
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/voice.png" Text="单位公告通知" Value="010"
                            NavigateUrl="../GongGao/GongGao.aspx?Type=单位" Target="rform"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/voice.png" Text="部门公告通知" Value="011"
                            NavigateUrl="../GongGao/GongGao.aspx?Type=部门" Target="rform"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/wordpress.png" Text="投票" Value="012"
                        NavigateUrl="../GongGao/Vote.aspx" Target="rform"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/accessibility.png" Text="工作日志" Value="014"
                        NavigateUrl="../Work/WorkRiZhi.aspx" Target="rform"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/contacts.png" Text="通讯簿" Value="F001M005"
                        NavigateUrl="../Main/Main.aspx?param=F001M005" SelectAction="Expand">
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/accessibility.png" Text="公共通讯簿" Value="015"
                            NavigateUrl="../Work/TongXunLu.aspx?TypeStr=公共通讯簿" Target="rform"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/accessibility.png" Text="共享通讯簿" Value="016"
                            NavigateUrl="../Work/TongXunLu.aspx?TypeStr=共享通讯簿" Target="rform"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/accessibility.png" Text="个人通讯簿" Value="017"
                            NavigateUrl="../Work/TongXunLu.aspx?TypeStr=个人通讯簿" Target="rform"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/wordpress.png" Text="工作管理" Value="F004"
                    NavigateUrl="../Main/Main.aspx?param=F004" SelectAction="Expand">
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/wordpress.png" Text="我的计划" Value="027"
                        NavigateUrl="../WorkPlan/MyWorkPlan.aspx" Target="rform"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/wordpress.png" Text="计划管理" Value="028"
                        NavigateUrl="../WorkPlan/ManageWorkPlan.aspx" Target="rform"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/wordpress.png" Text="我的汇报" Value="A001"
                        NavigateUrl="../WorkPlan/HuiBao.aspx" Target="rform"></asp:TreeNode>
                    <asp:TreeNode ImageUrl="../Style/Mobile/thumbs/wordpress.png" Text="汇报管理" Value="A002"
                        NavigateUrl="../WorkPlan/HuiBaoOK.aspx" Target="rform"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    </div>
    </form>
</body>
</html>

<script type="text/javascript">
    function query() {
        var sw = "W";
        var djr = "";
        var rqs = "";
        var rqe = "";
        $.ajax({
            type: "POST",
            url: "../WorkFlow/NowWorkFlow.aspx",
            data: {},
            success: function(mes) {
                $("#divResult").html(mes);
            }
        });
    }
    $(function() {
        query();
    });
</script>

