﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CRM_CustomAdd : System.Web.UI.Page
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
        if (SDLX.Common.PublicMethod.IFExists("CustomName", "ERPCustomInfo", 0, this.txtCustomName.Text) == true)
        {
            string CustomName = this.txtCustomName.Text;
            string CustomSerils = this.txtCustomSerils.Text;
            string ChargeMan = this.txtChargeMan.Text;
            string Address = this.txtAddress.Text;
            string UrlLink = this.txtUrlLink.Text;
            string YouBian = this.txtYouBian.Text;
            string TelStr = this.txtTelStr.Text;
            string XingZhi = this.txtXingZhi.Text;
            string LaiYuan = this.txtLaiYuan.Text;
            string QuYu = this.txtQuYu.Text;
            string ZhuangTai = this.txtZhuangTai.Text;
            string RenShu = this.txtRenShu.Text;
            string BanGongMianJi = this.txtBanGongMianJi.Text;
            string LeiBie = this.txtLeiBie.Text;
            string JiBie = this.txtJiBie.Text;
            string YeWuFanWei = this.txtYeWuFanWei.Text;
            string HangYe = this.txtHangYe.Text;
            string MuQianWenTi = this.txtMuQianWenTi.Text;
            string YuJiDingDanDate = this.txtYuJiDingDanDate.Text;
            string BackInfoA = this.txtBackInfoA.Text;
            string BackInfoB = this.txtBackInfoB.Text;
            string BackInfoC = this.txtBackInfoC.Text;
            string BackInfoD = this.txtBackInfoD.Text;

            SDLX.BLL.ERPCustomInfo model = new SDLX.BLL.ERPCustomInfo();
            model.CustomName = CustomName;
            model.CustomSerils = CustomSerils;
            model.ChargeMan = ChargeMan;
            model.Address = Address;
            model.UrlLink = UrlLink;
            model.YouBian = YouBian;
            model.TelStr = TelStr;
            model.XingZhi = XingZhi;
            model.LaiYuan = LaiYuan;
            model.QuYu = QuYu;
            model.ZhuangTai = ZhuangTai;
            model.RenShu = RenShu;
            model.BanGongMianJi = BanGongMianJi;
            model.LeiBie = LeiBie;
            model.JiBie = JiBie;
            model.YeWuFanWei = YeWuFanWei;
            model.HangYe = HangYe;
            model.MuQianWenTi = MuQianWenTi;
            model.YuJiDingDanDate = YuJiDingDanDate;
            model.BackInfoA = BackInfoA;
            model.BackInfoB = BackInfoB;
            model.BackInfoC = BackInfoC;
            model.BackInfoD = BackInfoD;
            model.TimeStr = DateTime.Now;
            model.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            model.DingDanCount = this.txtDingDanCount.Text;
            model.YuJiTiXing = this.txtYuJiTiXing.Text;
            model.IFShare = this.txtIFShare.Text;
            model.CusBakA = this.txtCusBakA.Text;
            model.CusBakB = this.txtCusBakB.Text;
            model.CusBakC = this.txtCusBakC.Text;
            model.CusBakD = this.txtCusBakD.Text;
            model.CusBakE = this.txtCusBakE.Text;
            model.Add();

            //写系统日志
            SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
            MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户添加客户信息(" + this.txtCustomName.Text + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            SDLX.Common.MessageBox.ShowAndRedirect(this, "客户信息添加成功！", "MyCustom.aspx");
        }
        else
        {
            SDLX.Common.MessageBox.Show(this, "该客户名称已经存在，请查证后再输入！");
        }
    }
}