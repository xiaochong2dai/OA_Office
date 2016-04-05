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

public partial class Office_OfficethingModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPOfficething Model = new SDLX.BLL.ERPOfficething();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtShenQingThing.Text=Model.ShenQingThing.ToString();
			this.txtTypeStr.Text=Model.TypeStr.ToString();
			this.txtShengQingNum.Text=Model.ShengQingNum.ToString();
			this.txtNowState.Text=Model.NowState.ToString();
			this.txtUserName.Text=Model.UserName.ToString();
			this.txtTimeStr.Text=Model.TimeStr.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPOfficething Model = new SDLX.BLL.ERPOfficething();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.ShenQingThing=this.txtShenQingThing.Text.ToString();
		Model.TypeStr=this.txtTypeStr.Text.ToString();
		Model.ShengQingNum=this.txtShengQingNum.Text.ToString();
		Model.NowState=this.txtNowState.Text.ToString();
		Model.UserName=this.txtUserName.Text.ToString();
		Model.TimeStr=DateTime.Parse(this.txtTimeStr.Text);
		
		Model.Update();
		
		//дϵͳ��־
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "�û��޸İ칫��Ʒ��Ϣ(" + this.txtShenQingThing.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "�칫��Ʒ��Ϣ�޸ĳɹ���", "OfficeShengQing.aspx");
	}
}
