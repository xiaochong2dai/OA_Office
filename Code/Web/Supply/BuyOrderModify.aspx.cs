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

public partial class Supply_BuyOrderModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPBuyOrder Model = new SDLX.BLL.ERPBuyOrder();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtOrderName.Text=Model.OrderName.ToString();
			this.txtGongYingShangName.Text=Model.GongYingShangName.ToString();
			this.txtSerils.Text=Model.Serils.ToString();
			this.txtDingDanLeiXing.Text=Model.DingDanLeiXing.ToString();
			this.txtDingDanMiaoShu.Text=Model.DingDanMiaoShu.ToString();
			this.txtCreateDate.Text=Model.CreateDate.ToString().Replace(" 0:00:00","");
            this.txtLaiHuoDate.Text = Model.LaiHuoDate.ToString().Replace(" 0:00:00", "");
            this.txtTiXingDate.Text = Model.TiXingDate.ToString().Replace(" 0:00:00", "");
			this.txtChuangJianRen.Text=Model.ChuangJianRen.ToString();
			this.txtFuZeRen.Text=Model.FuZeRen.ToString();
		    SDLX.Common.PublicMethod.SetSessionValue("WenJianList", Model.FuJianList);
		    SDLX.Common.PublicMethod.BindDDL(this.CheckBoxList1, SDLX.Common.PublicMethod.GetSessionValue("WenJianList"));
			this.txtNowState.Text=Model.NowState.ToString();
			this.txtShenPiTongGuoRen.Text=Model.ShenPiTongGuoRen.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPBuyOrder Model = new SDLX.BLL.ERPBuyOrder();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.OrderName=this.txtOrderName.Text.ToString();
		Model.GongYingShangName=this.txtGongYingShangName.Text.ToString();
		Model.Serils=this.txtSerils.Text.ToString();
		Model.DingDanLeiXing=this.txtDingDanLeiXing.Text.ToString();
		Model.DingDanMiaoShu=this.txtDingDanMiaoShu.Text.ToString();
		Model.CreateDate=DateTime.Parse(this.txtCreateDate.Text);
		Model.LaiHuoDate=DateTime.Parse(this.txtLaiHuoDate.Text);
		Model.TiXingDate=DateTime.Parse(this.txtTiXingDate.Text);
		Model.ChuangJianRen=this.txtChuangJianRen.Text.ToString();
		Model.FuZeRen=this.txtFuZeRen.Text.ToString();
		Model.FuJianList=SDLX.Common.PublicMethod.GetSessionValue("WenJianList");
		Model.NowState=this.txtNowState.Text.ToString();
		Model.ShenPiTongGuoRen=this.txtShenPiTongGuoRen.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//写系统日志
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改采购订单信息(" + this.txtOrderName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "采购订单信息修改成功！", "BuyDengJi.aspx");
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
