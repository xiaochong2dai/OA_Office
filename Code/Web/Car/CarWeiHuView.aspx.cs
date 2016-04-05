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

public partial class Car_CarWeiHuView : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPCarWeiHu Model = new SDLX.BLL.ERPCarWeiHu();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.lblCarName.Text=Model.CarName.ToString();
			this.lblWeiHuRiQi.Text=Model.WeiHuRiQi.ToString();
			this.lblWeiHuLeiXing.Text=Model.WeiHuLeiXing.ToString();
			this.lblWeiHuYuanYin.Text=Model.WeiHuYuanYin.ToString();
			this.lblJingBanUser.Text=Model.JingBanUser.ToString();
			this.lblWeiHuFeiYong.Text=Model.WeiHuFeiYong.ToString();
			this.lblNowState.Text=Model.NowState.ToString();
			this.lblUserName.Text=Model.UserName.ToString();
			this.lblTimeStr.Text=Model.TimeStr.ToString();
			this.lblBackInfo.Text=Model.BackInfo.ToString();
			
			//дϵͳ��־
			SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
			MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "�û��鿴����ά����Ϣ(" + this.lblCarName.Text + ")";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
			
		}
	}
}
