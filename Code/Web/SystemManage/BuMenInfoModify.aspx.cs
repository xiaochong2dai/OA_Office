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

public partial class SystemManage_BuMenInfoModify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
            SDLX.BLL.ERPBuMen MyBuMen = new SDLX.BLL.ERPBuMen();
            MyBuMen.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.TextBox1.Text = MyBuMen.BuMenName;
            this.TextBox2.Text = MyBuMen.ChargeMan;
            this.TextBox3.Text = MyBuMen.TelStr;
            this.TextBox4.Text = MyBuMen.ChuanZhen;
            this.TextBox5.Text = MyBuMen.BackInfo;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (SDLX.Common.PublicMethod.IFExists("BuMenName", "ERPBuMen", int.Parse(Request.QueryString["ID"].ToString()), this.TextBox1.Text) == true)
        {
            SDLX.BLL.ERPBuMen MyBuMen = new SDLX.BLL.ERPBuMen();
            MyBuMen.ID = int.Parse(Request.QueryString["ID"].ToString());
            MyBuMen.BuMenName = this.TextBox1.Text;
            MyBuMen.ChargeMan = this.TextBox2.Text;
            MyBuMen.TelStr = this.TextBox3.Text;
            MyBuMen.ChuanZhen = this.TextBox4.Text;
            MyBuMen.BackInfo = this.TextBox5.Text;
            MyBuMen.DirID = int.Parse(Request.QueryString["DirID"].ToString());
            MyBuMen.Update();

            //写系统日志
            SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
            MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户修改部门信息(" + this.TextBox1.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            SDLX.Common.MessageBox.ShowAndRedirect(this, "部门信息添加成功！", "BuMenInfo.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
        }
        else
        {
            SDLX.Common.MessageBox.Show(this, "该部门已经存在，请更换名称！");
        }
    }
}
