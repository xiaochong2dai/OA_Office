﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NetEmailView.aspx.cs" Inherits="NetMail_NetEmailView" %>

<html>
<head>
    <title>移动手机浙江金海环境移动办公平台 </title>
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="index,follow" name="robots" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <link href="../Style/Mobile/pics/homescreen.gif" rel="apple-touch-icon" />
    <meta content="minimum-scale=1.0, width=device-width, maximum-scale=0.6667, user-scalable=no"
        name="viewport" />
    <link href="../Style/Mobile/css/Style.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Style/Mobile/css/developer-style.css" rel="stylesheet" type="text/css" />

    <script src="../Style/Mobile/javascript/functions.js" type="text/javascript"></script>

    <link href="../Style/Mobile/pics/startup.png" rel="apple-touch-startup-image" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="topbar">
        <div id="title">
            查看邮件</div>
        <div id="leftnav">
            <a href="../Main/Main.aspx">
                <img alt="home" src="../Style/Mobile/images/home.png" /></a>
        </div>
        <div id="rightnav">
            <a href="NetEmailAdd.aspx">写邮件</a>
        </div>
    </div>
    <div id="content">
        <span class="graytitle">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </span>
        <ul class="pageitem">
            <li class="textbox"><span class="header">发送人：
                <asp:Label ID="Label2" runat="server"></asp:Label></span><span class="header">接收人：
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </span><span class="header">发送时间：
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </span></li>
        </ul>
        <ul class="pageitem">
            <li class="textbox"><span class="header">邮件附件：
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </span></li>
        </ul>
        <ul class="pageitem">
            <li class="textbox">
                <p>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </p>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
