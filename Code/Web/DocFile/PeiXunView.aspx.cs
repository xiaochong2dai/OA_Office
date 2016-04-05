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

public partial class DocFile_PeiXunView : System.Web.UI.Page
{
    public string PeiXunName = "";

	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPPeiXun Model = new SDLX.BLL.ERPPeiXun();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.lblPeiXunName.Text=Model.PeiXunName.ToString();
            PeiXunName = Model.PeiXunName.ToString();
			this.lblPeiXunUser.Text=Model.PeiXunUser.ToString();
			this.lblCanYuUser.Text=Model.CanYuUser.ToString();
			this.lblStartDate.Text=Model.StartDate.ToString();
			this.lblEndDate.Text=Model.EndDate.ToString();
			this.lblPeiXunMuDi.Text=Model.PeiXunMuDi.ToString();
			this.lblPeiXunNeiRong.Text=Model.PeiXunNeiRong.ToString();
			this.lblXiaoGuo.Text=Model.XiaoGuo.ToString();
			this.lblBackInfo.Text=Model.BackInfo.ToString();
			this.lblFuJianList.Text=SDLX.Common.PublicMethod.GetWenJian(Model.FuJianList.ToString(),"../UploadFile/");
			this.lblUserName.Text=Model.UserName.ToString();
			this.lblTimeStr.Text=Model.TimeStr.ToString();
			
			//写系统日志
			SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
			MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户查看培训信息(" + this.lblPeiXunName.Text + ")";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
			
		}
	}
}
