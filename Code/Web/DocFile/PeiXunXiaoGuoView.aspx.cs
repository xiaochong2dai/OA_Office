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

public partial class DocFile_PeiXunXiaoGuoView : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPPeiXunXiaoGuo Model = new SDLX.BLL.ERPPeiXunXiaoGuo();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.lblPeiXunName.Text=Model.PeiXunName.ToString();
			this.lblFanKuiZhuTi.Text=Model.FanKuiZhuTi.ToString();
			this.lblXiaoGuoFanKui.Text=Model.XiaoGuoFanKui.ToString();
			this.lblZongTiJieLun.Text=Model.ZongTiJieLun.ToString();
			this.lblUserName.Text=Model.UserName.ToString();
			this.lblTimeStr.Text=Model.TimeStr.ToString();
			
			//дϵͳ��־
			SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
			MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "�û��鿴��ѵЧ����Ϣ(" + this.lblPeiXunName.Text + ")";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
			
		}
	}
}
