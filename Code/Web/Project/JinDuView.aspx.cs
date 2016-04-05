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

public partial class Project_JinDuView : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
            SDLX.BLL.ERPJinDu model = new SDLX.BLL.ERPJinDu();
            model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.lblProjectName.Text = model.ProjectName;
            this.lblProjectSerils.Text = model.ProjectSerils;
            this.lblJieDuanName.Text = model.JieDuanName;
            this.lblStartTime.Text = model.StartTime.ToString();
            this.lblEndTime.Text = model.EndTime.ToString();
            this.lblWanChengDu.Text = model.WanChengDu;
            this.lblFuZeRen.Text = model.FuZeRen;
            this.lblContentStr.Text = model.ContentStr;            
            this.lblUserName.Text = model.UserName;
            this.lblTimeStr.Text = model.TimeStr.ToString();
            this.lblFuJianList.Text = SDLX.Common.PublicMethod.GetWenJian(model.FuJianList, "../UploadFile/");
            

            //写系统日志
            SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
            MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "查看项目进度信息(" + this.lblProjectName.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();
        }
    }
}
