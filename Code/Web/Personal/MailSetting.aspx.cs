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

public partial class Personal_MailSetting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
            SDLX.BLL.ERPPOPAndSMTP MyModel = new SDLX.BLL.ERPPOPAndSMTP();
            MyModel.GetModel(int.Parse(SDLX.Common.PublicMethod.GetSessionValue("UserID")));
            this.TextBox1.Text = MyModel.POP3UserName;
            this.TextBox2.Text = MyModel.POP3UserPwd;
            this.TextBox3.Text = MyModel.POP3Server;
            this.TextBox4.Text = MyModel.POP3Port;
            this.TextBox5.Text = MyModel.SMTPUserName;
            this.TextBox6.Text = MyModel.SMTPUserPwd;
            this.TextBox7.Text = MyModel.SMTPServer;
            this.TextBox8.Text = MyModel.SMTPFromEmail;

            //设定按钮权限            
            ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|023m|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SDLX.BLL.ERPPOPAndSMTP MyModel = new SDLX.BLL.ERPPOPAndSMTP();
        MyModel.ID = int.Parse(SDLX.Common.PublicMethod.GetSessionValue("UserID"));
        MyModel.POP3UserName = this.TextBox1.Text;
        MyModel.POP3UserPwd = this.TextBox2.Text;
        MyModel.POP3Server = this.TextBox3.Text;
        MyModel.POP3Port = this.TextBox4.Text;
        MyModel.SMTPUserName = this.TextBox5.Text;
        MyModel.SMTPUserPwd = this.TextBox6.Text;
        MyModel.SMTPServer = this.TextBox7.Text;
        MyModel.SMTPFromEmail = this.TextBox8.Text;
        MyModel.Update();
        SDLX.Common.MessageBox.Show(this, "修改邮件参数成功！");

        //写系统日志
        SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
        MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户设置邮件参数";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();
    }
}