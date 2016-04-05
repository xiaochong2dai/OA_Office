﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class DocCenter_DocDirAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {        
        SDLX.BLL.ERPFileList MyModel = new SDLX.BLL.ERPFileList();
        MyModel.FileName = this.TextBox1.Text;
        MyModel.BianHao = this.TextBox2.Text;
        MyModel.BackInfo = "";
        MyModel.DaXiao = 0;
        MyModel.FileType = "dir";
        MyModel.DirID = int.Parse(Request.QueryString["DirID"].ToString());
        MyModel.ShangChuanTime = DateTime.Now;
        MyModel.FilePath = "";
        MyModel.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyModel.IFDel = "否";
        MyModel.TypeName = Request.QueryString["Type"].ToString();
        MyModel.IfShare = this.RadioButtonList1.SelectedItem.Text;
        MyModel.DirOrFile = 1;
        MyModel.Add();

        //写系统日志
        SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
        MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户添加文件夹信息(" + this.TextBox1.Text+ ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "文件夹添加成功！", "DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());        
    }
}