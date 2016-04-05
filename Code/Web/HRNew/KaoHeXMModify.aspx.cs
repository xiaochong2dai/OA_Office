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

public partial class HRNew_KaoHeXMModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPKaoHeXM Model = new SDLX.BLL.ERPKaoHeXM();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtXiangMuName.Text=Model.XiangMuName.ToString();
			this.txtFenZhi.Text=Model.FenZhi.ToString();
			this.txtKaoHeYiJu.Text=Model.KaoHeYiJu.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPKaoHeXM Model = new SDLX.BLL.ERPKaoHeXM();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.XiangMuName=this.txtXiangMuName.Text.ToString();
		Model.FenZhi=this.txtFenZhi.Text.ToString();
		Model.KaoHeYiJu=this.txtKaoHeYiJu.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//дϵͳ��־
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "�û��޸Ŀ�����Ŀ��Ϣ(" + this.txtXiangMuName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "������Ŀ��Ϣ�޸ĳɹ���", "KaoHeXM.aspx");
	}
}
