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

public partial class Sell_ContractChanPinView : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPContractChanPin Model = new SDLX.BLL.ERPContractChanPin();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.lblHeTongName.Text=Model.HeTongName.ToString();
			this.lblChanPinName.Text=Model.ChanPinName.ToString();
			this.lblDanJia.Text=Model.DanJia.ToString();
			this.lblShuLiang.Text=Model.ShuLiang.ToString();
			this.lblZongJia.Text=Model.ZongJia.ToString();
			this.lblYiFuKuan.Text=Model.YiFuKuan.ToString();
			this.lblQianKuanShu.Text=Model.QianKuanShu.ToString();
			this.lblIFJiaoFu.Text=Model.IFJiaoFu.ToString();
			this.lblUserName.Text=Model.UserName.ToString();
			this.lblTimeStr.Text=Model.TimeStr.ToString();
			this.lblBackInfo.Text=Model.BackInfo.ToString();
			
			//дϵͳ��־
			SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
			MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "�û��鿴������Ʒ��Ϣ(" + this.lblHeTongName.Text + ")";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
			
		}
	}
}
