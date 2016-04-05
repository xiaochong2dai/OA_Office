<%@ WebHandler Language="C#" Class="SystemData" %>

using System;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Linq;
using Newtonsoft.Json;
using System.Web.SessionState;
public class SystemData : IHttpHandler, IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        try
        {
            if (context.Request.Params["Action"] == "GetButton")
                GetButton();
        }
        catch (Exception err)
        {
            var message = err.Message;
            if (err.InnerException != null && err.InnerException.Message != null)
                message += "<BR>" + err.InnerException.Message;
            var a = new { Type = "Error", Message = message };
            var json = Newtonsoft.Json.JsonConvert.SerializeObject(a);
            context.Response.Write(json);
        }
        context.Response.End();
    }




    void GetButton()
    {
        var context = System.Web.HttpContext.Current;
        string MenuNo = context.Request.Params["MenuNo"];
        string[] param = MenuNo.Split(',');
        List<SDLX.BLL.ERPButton> list = new List<SDLX.BLL.ERPButton>();
        SDLX.BLL.ERPButton erpbutton = null;
        for (int i = 0; i < param.Length; i++)
        {
            erpbutton = new SDLX.BLL.ERPButton();
            if (param[i] != "")
            {
                if (SDLX.Common.PublicMethod.StrIFIn(param[i], SDLX.Common.PublicMethod.GetSessionValue("QuanXian")))
                {
                    if (param[i].Contains("a"))
                    {
                        erpbutton._id = "add";
                        erpbutton._icon = "add";
                        erpbutton._name = "增加";
                    }
                    else if (param[i].Contains("m"))
                    {
                        erpbutton._id = "modify";
                        erpbutton._icon = "modify";
                        erpbutton._name = "修改";
                    }
                    else if (param[i].Contains("d"))
                    {
                        erpbutton._id = "delete";
                        erpbutton._icon = "delete";
                        erpbutton._name = "删除";
                    }
                    else if (param[i].Contains("e"))
                    {
                        erpbutton._id = "export";
                        erpbutton._icon = "database";
                        erpbutton._name = "导出";
                    }
                    else if (param[i].Contains("s"))
                    {
                        erpbutton._id = "send";
                        erpbutton._icon = "save";
                        erpbutton._name = "发送";
                    }
                    else if (param[i].Contains("r"))
                    {
                        erpbutton._id = "settings";
                        erpbutton._icon = "settings";
                        erpbutton._name = "恢复";
                    }
                    list.Add(erpbutton);
                }
            }
        }
        var jsonlist = (from a in list
                        select new
                        {
                            id = a._id,
                            icon = a._icon,
                            name = a._name
                        }
                       ).ToArray();

        context.Response.Write(JsonConvert.SerializeObject(jsonlist));
    }


    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}