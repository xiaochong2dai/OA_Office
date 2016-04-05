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

public partial class TalkRoom_SettingConfig : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.BLL.ERPTalkSetting MyModel = new SDLX.BLL.ERPTalkSetting();
            MyModel.GetModel();
            TextBox1.Text = MyModel.TalkName;

            //设定按钮权限
            ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|056m|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SDLX.BLL.ERPTalkSetting MyModel = new SDLX.BLL.ERPTalkSetting();
        MyModel.TalkName =TextBox1.Text.Trim();
        MyModel.Update();
        SDLX.Common.MessageBox.Show(this, "修改聊天室参数成功！");

        //写系统日志
        SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
        MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户设置聊天室参数";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();
    }
}