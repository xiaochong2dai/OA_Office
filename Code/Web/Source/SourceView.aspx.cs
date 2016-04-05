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

public partial class Source_SourceView : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPSource Model = new SDLX.BLL.ERPSource();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.lblSourceName.Text=Model.SourceName.ToString();
			this.lblShengQingUser.Text=Model.ShengQingUser.ToString();
			this.lblShiYongUser.Text=Model.ShiYongUser.ToString();
			this.lblShiYongShiXian.Text=Model.ShiYongShiXian.ToString();
			this.lblSourceMiaoShu.Text=Model.SourceMiaoShu.ToString();
			this.lblNowState.Text=Model.NowState.ToString();
			this.lblUserName.Text=Model.UserName.ToString();
			this.lblTimeStr.Text=Model.TimeStr.ToString();
			this.lblBackInfo.Text=Model.BackInfo.ToString();
			
			//写系统日志
			SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
			MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户查看资源申请信息(" + this.lblSourceName.Text + ")";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
			
		}
	}
}
