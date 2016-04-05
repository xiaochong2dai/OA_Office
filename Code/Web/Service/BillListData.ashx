<%@ WebHandler Language="C#" Class="BillListData" %>

using System;
using System.Web;
using Utility.Common;
using Utility.LigerGrid;
public class BillListData : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        try
        {
            TryGetGridViewData();
        }
        catch (Exception err)
        {
            context.Response.Write("null");
        }
        context.Response.End();
    }

    public void TryGetGridViewData()
    {
        System.Web.HttpContext context = System.Web.HttpContext.Current;
        GridViewPager pager = new GridViewPager();
        string datajson = pager.GetDataJSON();
        context.Response.Write(datajson);
    }
    
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}