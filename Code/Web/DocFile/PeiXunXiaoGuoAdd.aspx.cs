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

public partial class DocFile_PeiXunXiaoGuoAdd : System.Web.UI.Page
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
		SDLX.BLL.ERPPeiXunXiaoGuo Model = new SDLX.BLL.ERPPeiXunXiaoGuo();
		
		Model.PeiXunName=this.txtPeiXunName.Text.ToString();
		Model.FanKuiZhuTi=this.txtFanKuiZhuTi.Text.ToString();
		Model.XiaoGuoFanKui=this.txtXiaoGuoFanKui.Text.ToString();
		Model.ZongTiJieLun=this.txtZongTiJieLun.Text.ToString();
		Model.UserName=SDLX.Common.PublicMethod.GetSessionValue("UserName");
		Model.TimeStr=DateTime.Now;
		
		Model.Add();
		
		//写系统日志
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户添加培训效果信息(" + this.txtPeiXunName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "培训效果信息添加成功！", "PeiXunXiaoGuo.aspx?PeiXunName="+Request.QueryString["PeiXunName"].ToString());
	}
}
