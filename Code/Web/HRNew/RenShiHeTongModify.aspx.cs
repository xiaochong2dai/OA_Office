using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class HRNew_RenShiHeTongModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPRenShiHeTong Model = new SDLX.BLL.ERPRenShiHeTong();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtHeTongUser.Text=Model.HeTongUser.ToString();
			this.txtNowState.Text=Model.NowState.ToString();
			this.txtSerils.Text=Model.Serils.ToString();
			this.txtTypeStr.Text=Model.TypeStr.ToString();
			this.txtJingYe.Text=Model.JingYe.ToString();
			this.txtBaoMiXieYi.Text=Model.BaoMiXieYi.ToString();
			this.txtQianYueDate.Text=Model.QianYueDate.ToString();
			this.txtManYueDate.Text=Model.ManYueDate.ToString();
			this.txtJianZhengJiGuan.Text=Model.JianZhengJiGuan.ToString();
			this.txtJianZhengDate.Text=Model.JianZhengDate.ToString();
			this.txtWeiYueZeRen.Text=Model.WeiYueZeRen.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
		    SDLX.Common.PublicMethod.SetSessionValue("WenJianList", Model.FuJianList);
		    SDLX.Common.PublicMethod.BindDDL(this.CheckBoxList1, SDLX.Common.PublicMethod.GetSessionValue("WenJianList"));
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPRenShiHeTong Model = new SDLX.BLL.ERPRenShiHeTong();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.HeTongUser=this.txtHeTongUser.Text.ToString();
		Model.NowState=this.txtNowState.Text.ToString();
		Model.Serils=this.txtSerils.Text.ToString();
		Model.TypeStr=this.txtTypeStr.Text.ToString();
		Model.JingYe=this.txtJingYe.Text.ToString();
		Model.BaoMiXieYi=this.txtBaoMiXieYi.Text.ToString();
		Model.QianYueDate=this.txtQianYueDate.Text.ToString();
		Model.ManYueDate=this.txtManYueDate.Text.ToString();
		Model.JianZhengJiGuan=this.txtJianZhengJiGuan.Text.ToString();
		Model.JianZhengDate=this.txtJianZhengDate.Text.ToString();
		Model.WeiYueZeRen=this.txtWeiYueZeRen.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.FuJianList=SDLX.Common.PublicMethod.GetSessionValue("WenJianList");
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//дϵͳ��־
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "�û��޸����º�ͬ��Ϣ(" + this.txtHeTongUser.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "���º�ͬ��Ϣ�޸ĳɹ���", "RenShiHeTong.aspx");
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
