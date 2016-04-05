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

public partial class Car_CarWeiHuModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPCarWeiHu Model = new SDLX.BLL.ERPCarWeiHu();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtCarName.Text=Model.CarName.ToString();
			this.txtWeiHuRiQi.Text=Model.WeiHuRiQi.ToString();
			this.txtWeiHuLeiXing.Text=Model.WeiHuLeiXing.ToString();
			this.txtWeiHuYuanYin.Text=Model.WeiHuYuanYin.ToString();
			this.txtJingBanUser.Text=Model.JingBanUser.ToString();
			this.txtWeiHuFeiYong.Text=Model.WeiHuFeiYong.ToString();
			this.txtNowState.Text=Model.NowState.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPCarWeiHu Model = new SDLX.BLL.ERPCarWeiHu();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.CarName=this.txtCarName.Text.ToString();
		Model.WeiHuRiQi=this.txtWeiHuRiQi.Text.ToString();
		Model.WeiHuLeiXing=this.txtWeiHuLeiXing.Text.ToString();
		Model.WeiHuYuanYin=this.txtWeiHuYuanYin.Text.ToString();
		Model.JingBanUser=this.txtJingBanUser.Text.ToString();
		Model.WeiHuFeiYong=this.txtWeiHuFeiYong.Text.ToString();
		Model.NowState=this.txtNowState.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		
		Model.Update();
		
		//写系统日志
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
		MyRiZhi.DoSomething = "用户修改车辆维护信息(" + this.txtCarName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "车辆维护信息修改成功！", "CarWeiHu.aspx");
	}
}
