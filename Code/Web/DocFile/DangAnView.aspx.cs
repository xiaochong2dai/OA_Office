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

public partial class DocFile_DangAnView : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPDangAn Model = new SDLX.BLL.ERPDangAn();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.lblFileName.Text=Model.FileName.ToString();
			this.lblJuanKuName.Text=Model.JuanKuName.ToString();
			this.lblFileSerils.Text=Model.FileSerils.ToString();
			this.lblFileTitle.Text=Model.FileTitle.ToString();
			this.lblFaWenDanWei.Text=Model.FaWenDanWei.ToString();
			this.lblFaWenDate.Text=Model.FaWenDate.ToString();
			this.lblMiJi.Text=Model.MiJi.ToString();
			this.lblJingJi.Text=Model.JingJi.ToString();
			this.lblTypeStr.Text=Model.TypeStr.ToString();
			this.lblGongWenType.Text=Model.GongWenType.ToString();
			this.lblFilePage.Text=Model.FilePage.ToString();
			this.lblFuJianList.Text=SDLX.Common.PublicMethod.GetWenJian(Model.FuJianList.ToString(),"../UploadFile/");
			this.lblBackInfo.Text=Model.BackInfo.ToString();
			this.lblUserName.Text=Model.UserName.ToString();
			this.lblTimeStr.Text=Model.TimeStr.ToString();
			
			//写系统日志
			SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
			MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户查看档案信息(" + this.lblFileName.Text + ")";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
			
		}
	}
}
