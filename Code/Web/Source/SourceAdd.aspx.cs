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

public partial class Source_SourceAdd : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();			
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPSource Model = new SDLX.BLL.ERPSource();
		
		Model.SourceName=this.txtSourceName.Text.ToString();
		Model.ShengQingUser=this.txtShengQingUser.Text.ToString();
		Model.ShiYongUser=this.txtShiYongUser.Text.ToString();
		Model.ShiYongShiXian=this.txtShiYongShiXian.Text.ToString();
		Model.SourceMiaoShu=this.txtSourceMiaoShu.Text.ToString();
		Model.NowState="等待审核";
		Model.UserName=SDLX.Common.PublicMethod.GetSessionValue("UserName");
		Model.TimeStr=DateTime.Now;
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		
		Model.Add();
		
		//写系统日志
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户添加资源申请信息(" + this.txtSourceName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "资源申请信息添加成功！", "Source.aspx");
	}
}
