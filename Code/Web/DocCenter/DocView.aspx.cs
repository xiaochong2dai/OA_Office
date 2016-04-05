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

public partial class DocCenter_DocView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();

            SDLX.BLL.ERPFileList MyModel = new SDLX.BLL.ERPFileList();
            MyModel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.HyperLink1.Text = MyModel.FileName;
            this.HyperLink1.NavigateUrl = "../UploadFile/" + MyModel.FilePath;

            this.Label1.Text = MyModel.BianHao;
            this.Label6.Text = MyModel.BackInfo;

            this.Label2.Text = MyModel.DaXiao.ToString();
            this.Label3.Text = MyModel.ShangChuanTime.ToString();
            this.Label4.Text = MyModel.UserName;
            this.Label5.Text = MyModel.FileType;

            this.HyperLink2.NavigateUrl = "../DsoFramer/ReadFile.aspx?FilePath=" + MyModel.FilePath;

            //写系统日志
            SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
            MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "查看文件信息(" + this.HyperLink1.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();
        }
    }
}
