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

public partial class Project_ProjectAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
            //设置上传的附件为空
            SDLX.Common.PublicMethod.SetSessionValue("WenJianList", "");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SDLX.BLL.ERPProject model = new SDLX.BLL.ERPProject();
        model.ProjectName = this.txtProjectName.Text;
        model.ProjectSerils = this.txtProjectSerils.Text;
        model.SuoShuKeHu = this.txtSuoShuKeHu.Text;
        model.YuJiChengJiaoRiQi = this.txtYuJiChengJiaoRiQi.Text;
        model.TiXingDate = this.txtTiXingDate.Text;
        model.FuZeRen = this.txtFuZeRen.Text;
        model.XiangMuJinE = this.txtXiangMuJinE.Text;
        model.XiangMuYuSuan = this.txtXiangMuYuSuan.Text;
        model.XiangMuDaXiao = this.txtXiangMuDaXiao.Text;
        model.PeiHeRenList = this.txtPeiHeRenList.Text;
        model.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        model.TimeStr = DateTime.Now;
        model.HeTongAndFuJian = SDLX.Common.PublicMethod.GetSessionValue("WenJianList");
        model.BackInfo = this.txtBackInfo.Text;
        model.Add();

        //写系统日志
        SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
        MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户添加项目信息(" + this.txtProjectName.Text + ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "项目信息添加成功！", "ProjectManage.aspx?ProjectName=");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string FileNameStr = SDLX.Common.PublicMethod.UploadFileIntoDir(this.FileUpload1, DateTime.Now.Ticks.ToString() + System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName));
        if (SDLX.Common.PublicMethod.GetSessionValue("WenJianList").Trim() == "")
        {
            SDLX.Common.PublicMethod.SetSessionValue("WenJianList", FileNameStr);
        }
        else
        {
            SDLX.Common.PublicMethod.SetSessionValue("WenJianList", SDLX.Common.PublicMethod.GetSessionValue("WenJianList") + "|" + FileNameStr);
        }
        SDLX.Common.PublicMethod.BindDDL(this.CheckBoxList1, SDLX.Common.PublicMethod.GetSessionValue("WenJianList"));
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            for (int i = 0; i < this.CheckBoxList1.Items.Count; i++)
            {
                if (this.CheckBoxList1.Items[i].Selected == true)
                {
                    SDLX.Common.PublicMethod.SetSessionValue("WenJianList", SDLX.Common.PublicMethod.GetSessionValue("WenJianList").Replace(this.CheckBoxList1.Items[i].Text, "").Replace("||", "|"));
                }
            }
            SDLX.Common.PublicMethod.BindDDL(this.CheckBoxList1, SDLX.Common.PublicMethod.GetSessionValue("WenJianList"));
        }
        catch
        { }
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (this.CheckBoxList1.SelectedItem.Text.Trim().Length > 0)
            {
                Response.Write("<script>window.open('../DsoFramer/ReadFile.aspx?FilePath=" + this.CheckBoxList1.SelectedItem.Text + "');</script>");
            }
        }
        catch
        { }
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (this.CheckBoxList1.SelectedItem.Text.Trim().Length > 0)
            {
                Response.Write("<script>window.open('../DsoFramer/EditFile.aspx?FilePath=" + this.CheckBoxList1.SelectedItem.Text + "');</script>");
            }
        }
        catch
        { }
    }
}