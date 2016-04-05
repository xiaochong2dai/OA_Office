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

public partial class HRNew_KaoHeAdd : System.Web.UI.Page
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
		SDLX.BLL.ERPKaoHe Model = new SDLX.BLL.ERPKaoHe();
		
		Model.KaoHeTitle=this.txtKaoHeTitle.Text.ToString();
		Model.KaoHeUser=this.txtKaoHeUser.Text.ToString();
		Model.KaoHeType=this.txtKaoHeType.Text.ToString();
		Model.KaoHeDate=this.txtKaoHeDate.Text.ToString();
		Model.XiangMuFen=this.txtXiangMuFen.Text.ToString();
		Model.RenWuFen=this.txtRenWuFen.Text.ToString();
		Model.KaoHeJieLun=this.txtKaoHeJieLun.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		Model.UserName=SDLX.Common.PublicMethod.GetSessionValue("UserName");
		Model.TimeStr=DateTime.Now;
		
		Model.Add();
		
		//дϵͳ��־
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "�û���ӿ��˹�����Ϣ(" + this.txtKaoHeTitle.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "���˹�����Ϣ��ӳɹ���", "KaoHe.aspx");
	}
}
