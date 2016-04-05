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

public partial class Work_RiChengModify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
            //绑定页面数据
            SDLX.BLL.ERPAnPai Model = new SDLX.BLL.ERPAnPai();
            Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.TextBox1.Text = Model.TitleStr;
            this.TxtContent.Text = Model.ContentStr;
            this.TextBox5.Text = Model.TypeStr;

            this.TextBox2.Text = Model.TimeStart.ToString().Split(' ')[0];
            this.DropDownList1.SelectedValue = DateTime.Parse(Model.TimeStart.ToString()).Hour.ToString("D2");
            this.DropDownList2.SelectedValue = DateTime.Parse(Model.TimeStart.ToString()).Minute.ToString("D2");

            this.TextBox3.Text = Model.TimeEnd.ToString().Split(' ')[0];
            this.DropDownList3.SelectedValue = DateTime.Parse(Model.TimeEnd.ToString()).Hour.ToString("D2");
            this.DropDownList4.SelectedValue = DateTime.Parse(Model.TimeEnd.ToString()).Minute.ToString("D2");

            this.TextBox4.Text = Model.TimeTiXing.ToString().Split(' ')[0];
            this.DropDownList5.SelectedValue = DateTime.Parse(Model.TimeTiXing.ToString()).Hour.ToString("D2");
            this.DropDownList6.SelectedValue = DateTime.Parse(Model.TimeTiXing.ToString()).Minute.ToString("D2");

            this.txtIFShare.Text = Model.GongXiangWho;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SDLX.BLL.ERPAnPai Model = new SDLX.BLL.ERPAnPai();
        Model.TitleStr = this.TextBox1.Text;
        Model.ContentStr = this.TxtContent.Text;
        Model.TimeEnd = DateTime.Parse(this.TextBox3.Text.Trim() + " " + this.DropDownList3.SelectedItem.Text + ":" + this.DropDownList4.SelectedItem.Text + ":00");
        Model.TimeStart = DateTime.Parse(this.TextBox2.Text.Trim() + " " + this.DropDownList1.SelectedItem.Text + ":" + this.DropDownList2.SelectedItem.Text + ":00");
        Model.TimeTiXing = DateTime.Parse(this.TextBox4.Text.Trim() + " " + this.DropDownList5.SelectedItem.Text + ":" + this.DropDownList6.SelectedItem.Text + ":00");
        Model.TypeStr = this.TextBox5.Text.Trim();
        Model.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        Model.ID = int.Parse(Request.QueryString["ID"].ToString());
        Model.GongXiangWho = this.txtIFShare.Text.Trim();
        Model.Update();

        //写系统日志
        SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
        MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改日程安排信息(" + this.TextBox1.Text + ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "日程安排信息修改成功！", "RiCheng.aspx");
    }
}