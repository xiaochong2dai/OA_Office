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

public partial class CRM_CustomSum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SDLX.Common.PublicMethod.CheckSession();
            DataBindToGridview();
            this.Label1.Text = SDLX.DBUtility.DbHelperSQL.GetSHSLInt("select count(*) from ERPCustomInfo");
        }
    }
    public void DataBindToGridview()
    {
        GVData.DataSource = SDLX.DBUtility.DbHelperSQL.GetDataTable("select '" + DropDownList1.SelectedValue.ToString() + "' as DropStr," + DropDownList1.SelectedValue.ToString() + " as TongJiFenLei,count(*) as TongJiShuLiang from ERPCustomInfo group by " + DropDownList1.SelectedValue.ToString());
        GVData.DataBind();        
    }
    protected void GVData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        SDLX.Common.PublicMethod.GridViewRowDataBound(e);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataBindToGridview();
    }
}