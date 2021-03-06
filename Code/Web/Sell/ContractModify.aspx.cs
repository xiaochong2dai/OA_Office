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

public partial class Sell_ContractModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPContract Model = new SDLX.BLL.ERPContract();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtHeTongName.Text=Model.HeTongName.ToString();
			this.txtHeTongSerils.Text=Model.HeTongSerils.ToString();
			this.txtHeTongLeiXing.Text=Model.HeTongLeiXing.ToString();
			this.txtQianYueKeHu.Text=Model.QianYueKeHu.ToString();
			this.txtHeTongMiaoShu.Text=Model.HeTongMiaoShu.ToString();
			this.txtHeTongTiaoKuan.Text=Model.HeTongTiaoKuan.ToString();
			this.txtHeTongContent.Text=Model.HeTongContent.ToString();
            this.txtShengXiaoDate.Text = Model.ShengXiaoDate.ToString().Replace(" 0:00:00", "");
            this.txtZhongZhiDate.Text = Model.ZhongZhiDate.ToString().Replace(" 0:00:00", "");
            this.txtTiXingDate.Text = Model.TiXingDate.ToString().Replace(" 0:00:00", "");
			this.txtQianYueRenBuy.Text=Model.QianYueRenBuy.ToString();
			this.txtQianYueRenSell.Text=Model.QianYueRenSell.ToString();
			this.Label2.Text=Model.CreateTime.ToString();
			this.Label1.Text=Model.CreateUser.ToString();

            SDLX.Common.PublicMethod.SetSessionValue("WenJianList", Model.FuJianList);
            SDLX.Common.PublicMethod.BindDDL(this.CheckBoxList1, SDLX.Common.PublicMethod.GetSessionValue("WenJianList"));

			this.txtBackInfo.Text=Model.BackInfo.ToString();
			this.Label3.Text=Model.NowState.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPContract Model = new SDLX.BLL.ERPContract();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.HeTongName=this.txtHeTongName.Text.ToString();
		Model.HeTongSerils=this.txtHeTongSerils.Text.ToString();
		Model.HeTongLeiXing=this.txtHeTongLeiXing.Text.ToString();
		Model.QianYueKeHu=this.txtQianYueKeHu.Text.ToString();
		Model.HeTongMiaoShu=this.txtHeTongMiaoShu.Text.ToString();
		Model.HeTongTiaoKuan=this.txtHeTongTiaoKuan.Text.ToString();
		Model.HeTongContent=this.txtHeTongContent.Text.ToString();
		Model.ShengXiaoDate=DateTime.Parse(this.txtShengXiaoDate.Text);
		Model.ZhongZhiDate=DateTime.Parse(this.txtZhongZhiDate.Text);
		Model.TiXingDate=DateTime.Parse(this.txtTiXingDate.Text);
		Model.QianYueRenBuy=this.txtQianYueRenBuy.Text.ToString();
		Model.QianYueRenSell=this.txtQianYueRenSell.Text.ToString();
		Model.CreateTime=DateTime.Parse(this.Label2.Text);
		Model.CreateUser=this.Label1.Text.ToString();
		Model.FuJianList=SDLX.Common.PublicMethod.GetSessionValue("WenJianList");
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.NowState=this.Label3.Text.ToString();
		
		Model.Update();
		
		//写系统日志
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
		MyRiZhi.DoSomething = "用户修改销售订单信息(" + this.txtHeTongName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();
		
		SDLX.Common.MessageBox.ShowAndRedirect(this, "销售订单信息修改成功！", "ContractDengJi.aspx");
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
