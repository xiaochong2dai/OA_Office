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

public partial class Sell_ProductAdd : System.Web.UI.Page
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
		SDLX.BLL.ERPProduct Model = new SDLX.BLL.ERPProduct();
		
		Model.ProductName=this.txtProductName.Text.ToString();
		Model.ProductSerils=this.txtProductSerils.Text.ToString();
		Model.GongYingShang=this.txtGongYingShang.Text.ToString();
		Model.ProductType=this.txtProductType.Text.ToString();
		Model.XingHao=this.txtXingHao.Text.ToString();
		Model.DanWei=this.txtDanWei.Text.ToString();
		Model.ChengBen=this.txtChengBen.Text.ToString();
		Model.ChuShou=this.txtChuShou.Text.ToString();
		Model.RuKuSum=decimal.Parse(this.txtRuKuSum.Text);
		Model.ChuKuSum=decimal.Parse(this.txtChuKuSum.Text);
		Model.NowKuCun=decimal.Parse(this.txtNowKuCun.Text);
		Model.KuCunBaoJing=decimal.Parse(this.txtKuCunBaoJing.Text);
		Model.CunChuWeiZhi=this.txtCunChuWeiZhi.Text.ToString();
		Model.ChanPinMiaoShu=this.txtChanPinMiaoShu.Text.ToString();
		Model.BackInfo=this.txtBackInfo.Text.ToString();
		
		Model.Add();
		
		//дϵͳ��־
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
		MyRiZhi.DoSomething = "�û���Ӳ�Ʒ��Ϣ(" + this.txtProductName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();
		
		SDLX.Common.MessageBox.ShowAndRedirect(this, "��Ʒ��Ϣ��ӳɹ���", "Product.aspx");
	}
}
