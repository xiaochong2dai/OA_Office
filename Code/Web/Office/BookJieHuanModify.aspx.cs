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

public partial class Office_BookJieHuanModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPBookJieHuan Model = new SDLX.BLL.ERPBookJieHuan();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtBookName.Text=Model.BookName.ToString();
			this.txtJieShuDate.Text=Model.JieShuDate.ToString();
			this.txtGuiHuanDate.Text=Model.GuiHuanDate.ToString();
			this.txtJieHuanState.Text=Model.JieHuanState.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPBookJieHuan Model = new SDLX.BLL.ERPBookJieHuan();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.BookName=this.txtBookName.Text.ToString();
		Model.JieShuDate=this.txtJieShuDate.Text.ToString();
		Model.GuiHuanDate=this.txtGuiHuanDate.Text.ToString();
		Model.JieHuanState=this.txtJieHuanState.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//写系统日志
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改图书借还记录信息(" + this.txtBookName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "图书借还记录信息修改成功！", "BookJieHuan.aspx");
	}
}
