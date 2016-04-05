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

public partial class DocCenter_DocModify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();

            SDLX.BLL.ERPFileList MyModel = new SDLX.BLL.ERPFileList();
            MyModel.GetModel(int.Parse(Request.QueryString["ID"].ToString()));
            this.HyperLink1.Text = MyModel.FileName;
            this.HyperLink1.NavigateUrl = "../UploadFile/" + MyModel.FilePath;

            this.TextBox1.Text = MyModel.BianHao;
            this.TxtContent.Text = MyModel.BackInfo;

            this.Label1.Text = MyModel.DaXiao.ToString();
            this.Label2.Text = MyModel.FileType;
            this.Label3.Text = MyModel.FilePath;

            this.HyperLink2.NavigateUrl = "../DsoFramer/ReadFile.aspx?FilePath=" + this.Label3.Text;
            this.HyperLink3.NavigateUrl = "../DsoFramer/EditFile.aspx?FilePath=" + this.Label3.Text;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (this.FileUpload1.FileName.Trim().Length > 0)
        {
            string FileNameStr = SDLX.Common.PublicMethod.UploadFileIntoDir(this.FileUpload1, DateTime.Now.Ticks.ToString() + System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName));
            if (FileNameStr.Trim().Length > 0)
            {
                SDLX.BLL.ERPFileList MyModel = new SDLX.BLL.ERPFileList();
                MyModel.FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                MyModel.ID = int.Parse(Request.QueryString["ID"].ToString());
                MyModel.BianHao = this.TextBox1.Text;
                MyModel.BackInfo = this.TxtContent.Text;
                MyModel.DaXiao = (this.FileUpload1.PostedFile.ContentLength / 1024) + 1;
                try
                {
                    MyModel.FileType = this.FileUpload1.FileName.Remove(0, this.FileUpload1.FileName.LastIndexOf('.') + 1);
                }
                catch
                { }
                MyModel.DirID = int.Parse(Request.QueryString["DirID"].ToString());
                MyModel.ShangChuanTime = DateTime.Now;
                MyModel.FilePath = FileNameStr;
                MyModel.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
                MyModel.IFDel = "否";
                MyModel.TypeName = Request.QueryString["Type"].ToString();
                MyModel.IfShare = "否";
                MyModel.DirOrFile = 0;
                MyModel.Update();

                //写系统日志
                SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
                MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
                MyRiZhi.DoSomething = "用户修改文件信息(" + System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName) + ")";
                MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
                MyRiZhi.Add();

                SDLX.Common.MessageBox.ShowAndRedirect(this, "文件修改成功！", "DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
            }
        }
        else
        {
            SDLX.BLL.ERPFileList MyModel = new SDLX.BLL.ERPFileList();
            MyModel.FileName = this.HyperLink1.Text;
            MyModel.ID = int.Parse(Request.QueryString["ID"].ToString());
            MyModel.BianHao = this.TextBox1.Text;
            MyModel.BackInfo = this.TxtContent.Text;
            MyModel.DaXiao = int.Parse(this.Label1.Text);
            try
            {
                MyModel.FileType = this.Label2.Text;
            }
            catch
            { }
            MyModel.DirID = int.Parse(Request.QueryString["DirID"].ToString());
            MyModel.ShangChuanTime = DateTime.Now;
            MyModel.FilePath = this.Label3.Text;
            MyModel.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyModel.IFDel = "否";
            MyModel.TypeName = Request.QueryString["Type"].ToString();
            MyModel.IfShare = "否";
            MyModel.DirOrFile = 0;
            MyModel.Update();

            //写系统日志
            SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
            MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户修改文件信息(" + System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName) + ")";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();

            SDLX.Common.MessageBox.ShowAndRedirect(this, "文件修改成功！", "DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
        }
    }
}