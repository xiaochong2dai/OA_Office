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
using System.IO;

public partial class DocCenter_DocCenter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
            DataBindToGridview();
            GetDaoHang(int.Parse(Request.QueryString["DirID"].ToString()));
        }
    }
    public void GetDaoHang(int DirID)
    {
        if (DirID == 0)
        {
            if (this.Label1.Text.Trim() == "")
            {
                this.Label1.Text = "<a href=\"DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=0\" >" + Request.QueryString["Type"].ToString() + "</a>";
            }
            else
            {
                this.Label1.Text = "<a href=\"DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=0\" >" + Request.QueryString["Type"].ToString() + "</a>" + "\\" + this.Label1.Text;
            }
        }
        else
        {
            if (this.Label1.Text.Trim() == "")
            {
                this.Label1.Text = "<a href=\"DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + DirID.ToString() + "\" >" + SDLX.DBUtility.DbHelperSQL.GetSHSL("select FileName from ERPFileList where ID=" + DirID.ToString()) + "</a>";
            }
            else
            {
                this.Label1.Text = "<a href=\"DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + DirID.ToString() + "\" >" + SDLX.DBUtility.DbHelperSQL.GetSHSL("select FileName from ERPFileList where ID=" + DirID.ToString()) + "</a>" + "\\" + this.Label1.Text;
            }
            int FatherID = int.Parse(SDLX.DBUtility.DbHelperSQL.GetSHSLInt("select DirID from ERPFileList where ID=" + DirID.ToString()));
            if (FatherID == 0)
            {
                this.Label1.Text = this.Label1.Text = "<a href=\"DocCenter.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=0\" >" + Request.QueryString["Type"].ToString() + "</a>" + "\\" + this.Label1.Text;
            }
            else
            {
                GetDaoHang(FatherID);
            }
        }
    }
    public void DataBindToGridview()
    {
        string DirID = "0";
        try
        {
            DirID = Request.QueryString["DirID"].ToString();
        }
        catch { }

        SDLX.BLL.ERPFileList MyModel = new SDLX.BLL.ERPFileList();
        if (Request.QueryString["Type"].ToString().Trim() == "个人文件")
        {
            //设定按钮权限            
            ImageButton6.Visible = SDLX.Common.PublicMethod.StrIFIn("|046n|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|046a|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = SDLX.Common.PublicMethod.StrIFIn("|046m|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = SDLX.Common.PublicMethod.StrIFIn("|046d|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = SDLX.Common.PublicMethod.StrIFIn("|046e|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));

            GVData.DataSource = MyModel.GetList("DirID=" + DirID + " and TypeName='" + Request.QueryString["Type"].ToString().Trim() + "' and IFDel='否' and UserName='" + SDLX.Common.PublicMethod.GetSessionValue("UserName") + "' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
        }
        else if (Request.QueryString["Type"].ToString().Trim() == "电子刊物")
        {
            //设定按钮权限            
            ImageButton6.Visible = SDLX.Common.PublicMethod.StrIFIn("|047n|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|047a|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = SDLX.Common.PublicMethod.StrIFIn("|047m|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = SDLX.Common.PublicMethod.StrIFIn("|047d|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = SDLX.Common.PublicMethod.StrIFIn("|047e|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));

            GVData.DataSource = MyModel.GetList("DirID=" + DirID + " and TypeName='" + Request.QueryString["Type"].ToString().Trim() + "' and IFDel='否' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
        }
        else if (Request.QueryString["Type"].ToString().Trim() == "单位文件")
        {
            //设定按钮权限            
            ImageButton6.Visible = SDLX.Common.PublicMethod.StrIFIn("|048n|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|048a|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = SDLX.Common.PublicMethod.StrIFIn("|048m|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = SDLX.Common.PublicMethod.StrIFIn("|048d|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = SDLX.Common.PublicMethod.StrIFIn("|048e|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            GVData.DataSource = MyModel.GetList("DirID=" + DirID + " and TypeName='" + Request.QueryString["Type"].ToString().Trim() + "' and IFDel='否' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
        }
        else if (Request.QueryString["Type"].ToString().Trim() == "共享文件")
        {
            if (DirID == "0")
            {
                GVData.DataSource = MyModel.GetList("TypeName='个人文件' and IFDel='否' and IfShare='是' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
            }
            else
            {
                GVData.DataSource = MyModel.GetList("DirID=" + DirID + " and TypeName='个人文件' and IFDel='否' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
            }
            //隐藏添加、修改、删除
            this.ImageButton1.Visible = false;
            this.ImageButton2.Visible = false;
            this.ImageButton3.Visible = false;
            this.ImageButton5.Visible = false;
            this.ImageButton6.Visible = false;
        }
        else if (Request.QueryString["Type"].ToString().Trim() == "我的硬盘")
        {
            //设定按钮权限            
            ImageButton6.Visible = SDLX.Common.PublicMethod.StrIFIn("|050n|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|050a|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = SDLX.Common.PublicMethod.StrIFIn("|050m|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = SDLX.Common.PublicMethod.StrIFIn("|050d|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = SDLX.Common.PublicMethod.StrIFIn("|050e|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            GVData.DataSource = MyModel.GetList("DirID=" + DirID + " and TypeName='" + Request.QueryString["Type"].ToString().Trim() + "' and IFDel='否' and UserName='" + SDLX.Common.PublicMethod.GetSessionValue("UserName") + "' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
        }
        else if (Request.QueryString["Type"].ToString().Trim() == "共享硬盘")
        {
            if (DirID == "0")
            {
                GVData.DataSource = MyModel.GetList("TypeName='我的硬盘' and IFDel='否' and IfShare='是' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
            }
            else
            {
                GVData.DataSource = MyModel.GetList("DirID=" + DirID + " and TypeName='我的硬盘' and IFDel='否' and FileName Like '%" + this.TextBox1.Text + "%' order by DirOrFile desc,ID desc");
            }
            //隐藏添加、修改、删除
            this.ImageButton1.Visible = false;
            this.ImageButton2.Visible = false;
            this.ImageButton3.Visible = false;
            this.ImageButton5.Visible = false;
            this.ImageButton6.Visible = false;
        }
        GVData.DataBind();
        LabPageSum.Text = Convert.ToString(GVData.PageCount);
        LabCurrentPage.Text = Convert.ToString(((int)GVData.PageIndex + 1));
        this.GoPage.Text = LabCurrentPage.Text.ToString();
    }
    #region  分页方法
    protected void ButtonGo_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (GoPage.Text.Trim().ToString() == "")
            {
                Response.Write("<script language='javascript'>alert('页码不可以为空!');</script>");
            }
            else if (GoPage.Text.Trim().ToString() == "0" || Convert.ToInt32(GoPage.Text.Trim().ToString()) > GVData.PageCount)
            {
                Response.Write("<script language='javascript'>alert('页码不是一个有效值!');</script>");
            }
            else if (GoPage.Text.Trim() != "")
            {
                int PageI = Int32.Parse(GoPage.Text.Trim()) - 1;
                if (PageI >= 0 && PageI < (GVData.PageCount))
                {
                    GVData.PageIndex = PageI;
                }
            }

            if (TxtPageSize.Text.Trim().ToString() == "")
            {
                Response.Write("<script language='javascript'>alert('每页显示行数不可以为空!');</script>");
            }
            else if (TxtPageSize.Text.Trim().ToString() == "0")
            {
                Response.Write("<script language='javascript'>alert('每页显示行数不是一个有效值!');</script>");
            }
            else if (TxtPageSize.Text.Trim() != "")
            {
                try
                {
                    int MyPageSize = int.Parse(TxtPageSize.Text.ToString().Trim());
                    this.GVData.PageSize = MyPageSize;
                }
                catch
                {
                    Response.Write("<script language='javascript'>alert('每页显示行数不是一个有效值!');</script>");
                }
            }

            DataBindToGridview();
        }
        catch
        {
            DataBindToGridview();
            Response.Write("<script language='javascript'>alert('请输入有效数字！');</script>");
        }
    }
    protected void PagerButtonClick(object sender, ImageClickEventArgs e)
    {
        //获得Button的参数值
        string arg = ((ImageButton)sender).CommandName.ToString();
        switch (arg)
        {
            case ("Next"):
                if (this.GVData.PageIndex < (GVData.PageCount - 1))
                    GVData.PageIndex++;
                break;
            case ("Pre"):
                if (GVData.PageIndex > 0)
                    GVData.PageIndex--;
                break;
            case ("Last"):
                try
                {
                    GVData.PageIndex = (GVData.PageCount - 1);
                }
                catch
                {
                    GVData.PageIndex = 0;
                }

                break;
            default:
                //本页值
                GVData.PageIndex = 0;
                break;
        }
        DataBindToGridview();
    }
    #endregion
    protected void GVData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        SDLX.Common.PublicMethod.GridViewRowDataBound(e);
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label MyLab = (Label)e.Row.FindControl("LabVisible");
            HyperLink MyHyp = (HyperLink)e.Row.FindControl("HyperLink1");
            Image MyImage = (Image)e.Row.FindControl("Image1");
            string ImagePath = "../images/filetype/" + SDLX.DBUtility.DbHelperSQL.GetSHSL("select FileType from ERPFileList where ID=" + MyLab.Text.Trim()) + ".gif";
            if (File.Exists(Server.MapPath(ImagePath)) == true)
            {
                MyImage.ImageUrl = ImagePath;
                //共享文件夹
                if (SDLX.DBUtility.DbHelperSQL.GetSHSL("select FileType from ERPFileList where ID=" + MyLab.Text.Trim()) == "dir")
                {
                    //设置点击后进入相应文件夹
                    MyHyp.NavigateUrl = "DocCenter.aspx?DirID=" + MyLab.Text.Trim() + "&Type=" + Request.QueryString["Type"].ToString();
                    MyHyp.Text=SDLX.DBUtility.DbHelperSQL.GetSHSL("select FileName from ERPFileList where ID=" + MyLab.Text.Trim());
                    if (SDLX.DBUtility.DbHelperSQL.GetSHSL("select IfShare from ERPFileList where ID=" + MyLab.Text.Trim()) == "是")
                    {
                        MyImage.ImageUrl = "../images/filetype/sharedir.gif";
                    }
                }
            }
            else
            {
                MyImage.ImageUrl = "../images/filetype/unknown.gif";
            }
        }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        DataBindToGridview();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("DocAdd.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string IDlist = SDLX.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (SDLX.DBUtility.DbHelperSQL.ExecuteSQL("update ERPFileList set IFDel='是' where ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('删除选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
            MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户删除文档信息";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string IDList = "0";
        for (int i = 0; i < GVData.Rows.Count; i++)
        {
            Label LabVis = (Label)GVData.Rows[i].FindControl("LabVisible");
            IDList = IDList + "," + LabVis.Text.ToString();
        }
        Hashtable MyTable = new Hashtable();
        MyTable.Add("FileName", "文件名");
        MyTable.Add("BianHao", "文档编号");
        MyTable.Add("DaXiao", "大小(KB)");
        MyTable.Add("ShangChuanTime", "上传时间");
        MyTable.Add("UserName", "上传人");
        MyTable.Add("IfShare", "是否共享");

        SDLX.Common.DataToExcel.GridViewToExcel(SDLX.DBUtility.DbHelperSQL.GetDataSet("select FileName,BianHao,DaXiao,ShangChuanTime,UserName,IfShare from ERPFileList where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        string CheckStr = SDLX.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        string[] CheckStrArray = CheckStr.Split(',');
        if (SDLX.DBUtility.DbHelperSQL.GetSHSL("select FileType from ERPFileList where ID=" + CheckStrArray[0].ToString()) == "dir")
        {
            Response.Redirect("DirModify.aspx?Type=" + Request.QueryString["Type"].ToString() + "&ID=" + CheckStrArray[0].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
        }
        else
        {
            Response.Redirect("DocModify.aspx?Type=" + Request.QueryString["Type"].ToString() + "&ID=" + CheckStrArray[0].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
        }
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("DocDirAdd.aspx?Type=" + Request.QueryString["Type"].ToString() + "&DirID=" + Request.QueryString["DirID"].ToString());
    }
}