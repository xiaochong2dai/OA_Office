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

public partial class Supply_BuyChanPinAdd : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
            this.txtOrderName.Text = Request.QueryString["OrderName"].ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPBuyChanPin Model = new SDLX.BLL.ERPBuyChanPin();
		
		Model.OrderName=this.txtOrderName.Text.ToString();
		Model.ProductName=this.txtProductName.Text.ToString();
		Model.ProductSerils=this.txtProductSerils.Text.ToString();
		Model.GongYingShang=this.txtGongYingShang.Text.ToString();
		Model.ProductType=this.txtProductType.Text.ToString();
		Model.XingHao=this.txtXingHao.Text.ToString();
		Model.DanWei=this.txtDanWei.Text.ToString();
		Model.DanJia=decimal.Parse(this.txtDanJia.Text);
		Model.ShuLiang=decimal.Parse(this.txtShuLiang.Text);
		Model.ZongJia=decimal.Parse(this.txtZongJia.Text);
		Model.YiFuKuan=decimal.Parse(this.txtYiFuKuan.Text);
		Model.QianKuanShu=decimal.Parse(this.txtQianKuanShu.Text);
        Model.IFJiaoFu = this.RadioButtonList1.SelectedItem.Text;
		Model.ChanPinMiaoShu=this.txtChanPinMiaoShu.Text.ToString();
        Model.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName"); ;
		Model.TimeStr=DateTime.Now;
		Model.BackInfo=this.txtBackInfo.Text.ToString();

        if (this.RadioButtonList1.SelectedItem.Text == "�ѽ���")
        {
            //�Ӳ�Ʒ����м���
            string TempSqlStr = "update ERPProduct set  RuKuSum=RuKuSum+" + this.txtShuLiang.Text + ",NowKuCun=NowKuCun+" + this.txtShuLiang.Text + " where ProductName='" + this.txtProductName.Text.ToString() + "'";
            SDLX.DBUtility.DbHelperSQL.ExecuteSQL(TempSqlStr);
        }

		Model.Add();
		
		//дϵͳ��־
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
		MyRiZhi.DoSomething = "�û���Ӳɹ�������Ʒ��Ϣ(" + this.txtOrderName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "�ɹ�������Ʒ��Ϣ��ӳɹ���", "BuyLog.aspx?OrderName=" + Request.QueryString["OrderName"].ToString());
	}
}
