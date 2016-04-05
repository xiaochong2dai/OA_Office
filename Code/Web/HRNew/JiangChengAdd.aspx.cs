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

public partial class HRNew_JiangChengAdd : System.Web.UI.Page
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
		SDLX.BLL.ERPJiangCheng Model = new SDLX.BLL.ERPJiangCheng();
		
		Model.JCUser=this.txtJCUser.Text.ToString();
		Model.JiangChengQuFen=this.txtJiangChengQuFen.Text.ToString();
		Model.JiangChengType=this.txtJiangChengType.Text.ToString();
		Model.ShouYuDanWei=this.txtShouYuDanWei.Text.ToString();
		Model.JiangChengDate=this.txtJiangChengDate.Text.ToString();
		Model.JiangChengMingMu=this.txtJiangChengMingMu.Text.ToString();
		Model.JiangChengYuanYin=this.txtJiangChengYuanYin.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.UserName=SDLX.Common.PublicMethod.GetSessionValue("UserName");
		Model.TimeStr=DateTime.Now;
		
		Model.Add();
		
		//дϵͳ��־
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "�û���ӽ��ͼ�¼��Ϣ(" + this.txtJCUser.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "���ͼ�¼��Ϣ��ӳɹ���", "JiangCheng.aspx");
	}
}
