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

public partial class HR_ShenPi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
            DataBindToGridview();

            //设定按钮权限
            if (Request.QueryString["TypeName"].ToString().Trim() == "WaiChu")
            {
                ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|035p|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = SDLX.Common.PublicMethod.StrIFIn("|035n|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = SDLX.Common.PublicMethod.StrIFIn("|035e|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else if (Request.QueryString["TypeName"].ToString().Trim() == "ChuChai")
            {
                ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|036p|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = SDLX.Common.PublicMethod.StrIFIn("|036n|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = SDLX.Common.PublicMethod.StrIFIn("|036e|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else if (Request.QueryString["TypeName"].ToString().Trim() == "JiaBan")
            {
                ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|037p|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = SDLX.Common.PublicMethod.StrIFIn("|037n|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = SDLX.Common.PublicMethod.StrIFIn("|037e|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else if (Request.QueryString["TypeName"].ToString().Trim() == "BingJia")
            {
                ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|038p|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = SDLX.Common.PublicMethod.StrIFIn("|038n|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = SDLX.Common.PublicMethod.StrIFIn("|038e|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
            else
            {
                ImageButton1.Visible = SDLX.Common.PublicMethod.StrIFIn("|039p|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton3.Visible = SDLX.Common.PublicMethod.StrIFIn("|039n|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
                ImageButton2.Visible = SDLX.Common.PublicMethod.StrIFIn("|039e|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            }
        }
    }
    public void DataBindToGridview()
    {
        SDLX.BLL.ERPDengJi MyModel = new SDLX.BLL.ERPDengJi();
        GVData.DataSource = MyModel.GetList("BackInfo Like '%" + this.TextBox1.Text + "%' and ShenPiRen='" + SDLX.Common.PublicMethod.GetSessionValue("UserName") + "' and TypeName='" + Request.QueryString["TypeName"].ToString() + "' order by ID desc");
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
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        DataBindToGridview();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //通过审批
        string IDlist = SDLX.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (SDLX.DBUtility.DbHelperSQL.ExecuteSQL("update ERPDengJi set StateNow='通过'  where  ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('审批选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
            MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户通过考勤登记审批";
            MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            MyRiZhi.Add();
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        //拒绝审批
        string IDlist = SDLX.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
        if (SDLX.DBUtility.DbHelperSQL.ExecuteSQL("update ERPDengJi set StateNow='未通过'  where  ID in (" + IDlist + ")") == -1)
        {
            Response.Write("<script>alert('审批选中记录时发生错误！请重新登陆后重试！');</script>");
        }
        else
        {
            DataBindToGridview();
            //写系统日志
            SDLX.BLL.ERPRiZhi MyRiZhi = new SDLX.BLL.ERPRiZhi();
            MyRiZhi.UserName = SDLX.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "用户考勤登记审批未通过";
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
        MyTable.Add("UserName", "申请人");
        MyTable.Add("ShenPiRen", "审批人");
        MyTable.Add("ShenQingTime", "申请时间");
        MyTable.Add("BackInfo", "申请原因");
        MyTable.Add("StartTime", "开始时间");
        MyTable.Add("EndTime", "结束时间");
        MyTable.Add("StateNow", "当前状态");
        MyTable.Add("TypeName", "登记类型");
        SDLX.Common.DataToExcel.GridViewToExcel(SDLX.DBUtility.DbHelperSQL.GetDataSet("select UserName,ShenPiRen,ShenQingTime,BackInfo,StartTime,EndTime,StateNow,TypeName from ERPDengJi where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel报表");
    }
}
