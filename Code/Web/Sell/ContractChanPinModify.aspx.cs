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

public partial class Sell_ContractChanPinModify : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			SDLX.Common.PublicMethod.CheckSession();
			SDLX.BLL.ERPContractChanPin Model = new SDLX.BLL.ERPContractChanPin();
			Model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
			this.txtHeTongName.Text=Model.HeTongName.ToString();
			this.txtChanPinName.Text=Model.ChanPinName.ToString();
			this.txtDanJia.Text=Model.DanJia.ToString();
			this.txtShuLiang.Text=Model.ShuLiang.ToString();
            this.Label1.Text = Model.ShuLiang.ToString();
			this.txtZongJia.Text=Model.ZongJia.ToString();
			this.txtYiFuKuan.Text=Model.YiFuKuan.ToString();
			this.txtQianKuanShu.Text=Model.QianKuanShu.ToString();
			this.RadioButtonList1.SelectedValue=Model.IFJiaoFu.ToString();
			this.Label2.Text=Model.UserName.ToString();
			this.Label3.Text=Model.TimeStr.ToString();
			this.txtBackInfo.Text=Model.BackInfo.ToString();
            this.Label4.Text = Model.IFJiaoFu.ToString();
		}
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		SDLX.BLL.ERPContractChanPin Model = new SDLX.BLL.ERPContractChanPin();
		
		Model.ID = int.Parse(Request.QueryString["ID"].ToString());
		Model.HeTongName=this.txtHeTongName.Text.ToString();
		Model.ChanPinName=this.txtChanPinName.Text.ToString();
		Model.DanJia=decimal.Parse(this.txtDanJia.Text);
		Model.ShuLiang=decimal.Parse(this.txtShuLiang.Text);
		Model.ZongJia=decimal.Parse(this.txtZongJia.Text);
		Model.YiFuKuan=decimal.Parse(this.txtYiFuKuan.Text);
		Model.QianKuanShu=decimal.Parse(this.txtQianKuanShu.Text);
        Model.IFJiaoFu = this.RadioButtonList1.SelectedItem.Text;
        Model.UserName = this.Label2.Text.ToString();
        Model.TimeStr = DateTime.Parse(this.Label3.Text);
		Model.BackInfo=this.txtBackInfo.Text.ToString();

        if (this.RadioButtonList1.SelectedItem.Text == this.Label4.Text)
        {
            if (this.Label4.Text == "�ѽ���")
            {
                //�Ӳ�Ʒ����м�ȥ
                string TempSqlStr = "update ERPProduct set ChuKuSum=ChuKuSum-" + this.Label1.Text + "+" + this.txtShuLiang.Text + ",NowKuCun=NowKuCun+" + this.Label1.Text + "-" + this.txtShuLiang.Text + " where ProductName='" + this.txtChanPinName.Text.ToString() + "'";
                SDLX.DBUtility.DbHelperSQL.ExecuteSQL(TempSqlStr);
            }
        }
        else
        {
            if (this.Label4.Text == "�ѽ���")
            {
                //�Ӳ�Ʒ������˻�ԭʼ״̬
                string TempSqlStr = "update ERPProduct set ChuKuSum=ChuKuSum-" + this.Label1.Text + ",NowKuCun=NowKuCun+" + this.Label1.Text + " where ProductName='" + this.txtChanPinName.Text.ToString() + "'";
                SDLX.DBUtility.DbHelperSQL.ExecuteSQL(TempSqlStr);
            }
            else
            {
                //�Ӳ�Ʒ����м�ȥ
                string TempSqlStr = "update ERPProduct set ChuKuSum=ChuKuSum+" + this.txtShuLiang.Text + ",NowKuCun=NowKuCun-" + this.txtShuLiang.Text + " where ProductName='" + this.txtChanPinName.Text.ToString() + "'";
                SDLX.DBUtility.DbHelperSQL.ExecuteSQL(TempSqlStr);
            }
        }
		
		Model.Update();
		
		//дϵͳ��־
		SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
		MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
		MyRiZhi.DoSomething = "�û��޸Ķ�����Ʒ��Ϣ(" + this.txtHeTongName.Text + ")";
		MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
		MyRiZhi.Add();

        SDLX.Common.MessageBox.ShowAndRedirect(this, "������Ʒ��Ϣ�޸ĳɹ���", "SellLog.aspx?HeTongName=" + Request.QueryString["HeTongName"].ToString());
	}
}
