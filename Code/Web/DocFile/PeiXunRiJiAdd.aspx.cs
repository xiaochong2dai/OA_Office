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

public partial class DocFile_PeiXunRiJiAdd : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
            this.txtPeiXunName.Text = Request.QueryString["PeiXunName"].ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPPeiXunRiJi Model = new SDLX.BLL.ERPPeiXunRiJi();
		
		Model.PeiXunName=this.txtPeiXunName.Text.ToString();
		Model.RiJiTitle=this.txtRiJiTitle.Text.ToString();
		Model.RiJiDate=this.txtRiJiDate.Text.ToString();
		Model.RiJiContent=this.txtRiJiContent.Text.ToString();
		Model.UserName=SDLX.Common.PublicMethod.GetSessionValue("UserName");
		Model.TimeStr=DateTime.Now;
		
		Model.Add();
		
		//写系统日志
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户添加培训日志信息(" + this.txtPeiXunName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "培训日志信息添加成功！", "PeiXunRiJi.aspx?PeiXunName="+Request.QueryString["PeiXunName"].ToString());
	}
}
