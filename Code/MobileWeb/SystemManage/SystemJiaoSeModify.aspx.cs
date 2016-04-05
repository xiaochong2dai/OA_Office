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

public partial class SystemManage_SystemJiaoSeModify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
            SDLX.BLL.ERPJiaoSe MyModel = new SDLX.BLL.ERPJiaoSe();
            MyModel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.TextBox1.Text = MyModel.JiaoSeName;
            this.TextBox2.Text = MyModel.BackInfo;
            SDLX.Common.PublicMethod.GetCheckList(this.CheckBoxList1, MyModel.QuanXian);

            for (int i = 0; i < this.CheckBoxList1.Items.Count; i++)
            {
                if (this.CheckBoxList1.Items[i].Text.Trim() == "")
                {
                    this.CheckBoxList1.Items[i].Enabled = false;
                    this.CheckBoxList1.Items[i].Attributes.CssStyle.Add("DISPLAY", "none");
                }
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (SDLX.Common.PublicMethod.IFExists("JiaoSeName", "ERPJiaoSe", int.Parse(Request.QueryString["ID"].ToString()), this.TextBox1.Text) == true)
        {
            SDLX.BLL.ERPJiaoSe MyModel = new SDLX.BLL.ERPJiaoSe();
            MyModel.ID = int.Parse(Request.QueryString["ID"].ToString());
            MyModel.JiaoSeName = this.TextBox1.Text;
            MyModel.BackInfo = this.TextBox2.Text;
            MyModel.QuanXian = SDLX.Common.PublicMethod.GetStringFromCheckList(this.CheckBoxList1);
            MyModel.Update();

            //写系统日志
            SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
            MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户修改角色信息(" + this.TextBox1.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            SDLX.Common.MessageBox.ShowAndRedirect(this, "角色信息修改加成功！", "SystemJiaoSe.aspx");
        }
        else
        {
            SDLX.Common.MessageBox.Show(this, "该角色名已经存在，请更换其他名称！");
        }
    }
}
