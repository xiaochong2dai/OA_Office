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

public partial class Sell_ProductView : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPProduct Model = new SDLX.BLL.ERPProduct();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.lblProductName.Text=Model.ProductName.ToString();
			this.lblProductSerils.Text=Model.ProductSerils.ToString();
			this.lblGongYingShang.Text=Model.GongYingShang.ToString();
			this.lblProductType.Text=Model.ProductType.ToString();
			this.lblXingHao.Text=Model.XingHao.ToString();
			this.lblDanWei.Text=Model.DanWei.ToString();
			this.lblChengBen.Text=Model.ChengBen.ToString();
			this.lblChuShou.Text=Model.ChuShou.ToString();
			this.lblRuKuSum.Text=Model.RuKuSum.ToString();
			this.lblChuKuSum.Text=Model.ChuKuSum.ToString();
			this.lblNowKuCun.Text=Model.NowKuCun.ToString();
			this.lblKuCunBaoJing.Text=Model.KuCunBaoJing.ToString();
			this.lblCunChuWeiZhi.Text=Model.CunChuWeiZhi.ToString();
			this.lblChanPinMiaoShu.Text=Model.ChanPinMiaoShu.ToString();
			this.lblBackInfo.Text=Model.BackInfo.ToString();
			
			//дϵͳ��־
			SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
			MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
			MyRiZhi.DoSomething = "�û��鿴��Ʒ��Ϣ(" + this.lblProductName.Text + ")";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
			
		}
	}
}
