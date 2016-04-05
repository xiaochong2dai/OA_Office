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

public partial class Project_PinShenAdd : System.Web.UI.Page
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
        SDLX.BLL.ERPPinShen model = new SDLX.BLL.ERPPinShen();
        model.ProjectName = this.txtProjectName.Text;
        model.ProjectSerils = this.txtProjectSerils.Text;
        model.PingShenTime = this.txtPingShenTime.Text;
        model.PingShenJieGuo = this.txtPingShenJieGuo.Text;        
        model.BachInfo = this.txtBachInfo.Text;
        model.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        model.TimeStr = DateTime.Now;        
        model.Add();

        //写系统日志
        SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
        MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户添加评审信息(" + this.txtProjectName.Text + ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();
        SDLX.Common.MessageBox.ShowAndRedirect(this, "评审信息添加成功！", "PingShen.aspx?ProjectName="+Request.QueryString["ProjectName"].ToString());
    }
}