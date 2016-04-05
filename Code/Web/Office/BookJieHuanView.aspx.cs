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

public partial class Office_BookJieHuanView : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPBookJieHuan Model = new SDLX.BLL.ERPBookJieHuan();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.lblBookName.Text=Model.BookName.ToString();
			this.lblJieShuDate.Text=Model.JieShuDate.ToString();
			this.lblGuiHuanDate.Text=Model.GuiHuanDate.ToString();
			this.lblJieHuanState.Text=Model.JieHuanState.ToString();
			this.lblBackInfo.Text=Model.BackInfo.ToString();
			this.lblUserName.Text=Model.UserName.ToString();
			this.lblTimeStr.Text=Model.TimeStr.ToString();
			
			//дϵͳ��־
			SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
			MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
			MyRiZhi.DoSomething = "�û��鿴ͼ��軹��¼��Ϣ(" + this.lblBookName.Text + ")";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
			
		}
	}
}
