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

public partial class HRNew_KaoHeRWModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPKaoHeRW Model = new SDLX.BLL.ERPKaoHeRW();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtRenWuName.Text=Model.RenWuName.ToString();
			this.txtFenZhi.Text=Model.FenZhi.ToString();
			this.txtRenWuNeiRong.Text=Model.RenWuNeiRong.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPKaoHeRW Model = new SDLX.BLL.ERPKaoHeRW();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.RenWuName=this.txtRenWuName.Text.ToString();
		Model.FenZhi=this.txtFenZhi.Text.ToString();
		Model.RenWuNeiRong=this.txtRenWuNeiRong.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//写系统日志
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改考核任务信息(" + this.txtRenWuName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "考核任务信息修改成功！", "KaoHeRW.aspx");
	}
}
