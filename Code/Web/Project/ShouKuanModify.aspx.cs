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

public partial class Project_ShouKuanModify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
            SDLX.BLL.ERPShouKuan model = new SDLX.BLL.ERPShouKuan();
            model.GetModel(int.Parse(Request.QueryString["ID"].ToString()));            
            this.txtProjectName.Text = model.ProjectName;
            this.txtProjectSerils.Text = model.ProjectSerils;
            this.txtJieDuanName.Text = model.JieDuanName;
            this.txtShouKuanE.Text = model.ShouKuanE;
            this.txtFaPiaoHao.Text = model.FaPiaoHao;
            this.txtShouKuanDate.Text = model.ShouKuanDate;
            this.txtDaoKuanDate.Text = model.DaoKuanDate;
            this.txtShengYuE.Text = model.ShengYuE;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SDLX.BLL.ERPShouKuan model = new SDLX.BLL.ERPShouKuan();
        model.ID = int.Parse(Request.QueryString["ID"].ToString());
        model.ProjectName = this.txtProjectName.Text;
        model.ProjectSerils = this.txtProjectSerils.Text;
        model.JieDuanName = this.txtJieDuanName.Text;
        model.ShouKuanE = this.txtShouKuanE.Text;
        model.FaPiaoHao = this.txtFaPiaoHao.Text;
        model.ShouKuanDate = this.txtShouKuanDate.Text;
        model.DaoKuanDate = this.txtDaoKuanDate.Text;
        model.ShengYuE = this.txtShengYuE.Text;
        model.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        model.TimeStr = DateTime.Now;
        model.Update();

        //写系统日志
        SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
        MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户修改收款信息(" + this.txtProjectName.Text + ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();
        SDLX.Common.MessageBox.ShowAndRedirect(this, "收款信息修改成功！", "ShouKuan.aspx?ProjectName=" + Request.QueryString["ProjectName"].ToString());
    }
}