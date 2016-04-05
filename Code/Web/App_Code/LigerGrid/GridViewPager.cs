using System;
using System.Collections.Generic; 
using System.Text;
using System.Data;
using System.Data.Common;
using Utility.Common.Helpers;
using Utility.View;
using Utility.DataBase;
using Utility.JSON;
using Newtonsoft.Json;

namespace Utility.LigerGrid
{
    public class GridViewPager : DataBasePager
    {
        static IList<ViewInfo> _views = new List<ViewInfo>();
        static GridViewPager()
        {
            _views.Add(new ViewInfo("ERPLanEmail", "ID"));
            _views.Add(new ViewInfo("ERPNetEmail", "ID"));
            _views.Add(new ViewInfo("ERPGongGao", "ID"));
            _views.Add(new ViewInfo("ERPMobile", "ID"));
            _views.Add(new ViewInfo("ERPNetEmail", "ID"));
            _views.Add(new ViewInfo("ERPPeiXun", "ID"));
            _views.Add(new ViewInfo("ERPTongXunLu", "ID"));
            _views.Add(new ViewInfo("ERPUserDesk", "ID"));
            _views.Add(new ViewInfo("ERPVote", "ID"));
            _views.Add(new ViewInfo("ERPYinZhang", "ID"));
            _views.Add(new ViewInfo("ERPYinZhangLog", "ID"));
            _views.Add(new ViewInfo("ERPBBSBanKuai", "ID"));
            _views.Add(new ViewInfo("ERPBBSTieZi", "ID"));
            _views.Add(new ViewInfo("ERPBook", "ID"));
            _views.Add(new ViewInfo("ERPWorkRiZhi", "ID"));

        }
        public override IList<ViewInfo> Views
        {
            get
            {
                return _views;
            } 
        }
         
        /// <summary>
        /// 统一处理方法
        /// </summary>
        /// <returns></returns>
        public string GetDataJSON()
        {
            System.Web.HttpContext ctx = System.Web.HttpContext.Current;

            int pageno = CommonHelper.ObjToInt(ctx.Request.Params["page"]);
            int pagesize = CommonHelper.ObjToInt(ctx.Request.Params["pagesize"]);
            string sortname = CommonHelper.ObjToStr(ctx.Request.Params["sortname"]);
            string sortorder = CommonHelper.ObjToStr(ctx.Request.Params["sortorder"]);
            string gridviewname = CommonHelper.ObjToStr(ctx.Request.Params["gridviewname"]);
            string gridsearch = System.Web.HttpUtility.UrlDecode(CommonHelper.ObjToStr(ctx.Request.Params["gridsearch"]));
            if (string.IsNullOrEmpty(gridviewname))
                throw new ArgumentNullException("Grid视图名[gridsearch]不能为空"); 
            if (pageno == 0 || pagesize == 0)
            {
                if (string.IsNullOrEmpty(sortorder) && string.IsNullOrEmpty(gridsearch))
                {
                    return GetDataJSON(gridviewname);
                }
                if(string.IsNullOrEmpty(sortorder))
                    return GetDataJSON(gridviewname, gridsearch);
                if (string.IsNullOrEmpty(gridsearch))
                    return GetDataJSONUseSQL(string.Format("select * from {0} order by {1} {2}", gridviewname, sortname, sortorder.ToLower() == "asc" ? "asc" : "desc"));
                return GetDataJSON(gridviewname, gridsearch, string.Format("order by {0} {1}", sortname, sortorder));
            }
            if (string.IsNullOrEmpty(gridsearch) && string.IsNullOrEmpty(sortname))
            {
                return GetDataJSON(gridviewname, pageno, pagesize);
            }
            if (string.IsNullOrEmpty(gridsearch) && !string.IsNullOrEmpty(sortname))
            {
                return GetDataJSON(gridviewname, pageno, pagesize, sortname, sortorder);
            }
            if (!string.IsNullOrEmpty(gridsearch) && string.IsNullOrEmpty(sortname))
            {
                return GetDataJSON(gridviewname, pageno, pagesize, gridsearch);
            }
            if (!string.IsNullOrEmpty(gridsearch) && !string.IsNullOrEmpty(sortname))
            {
                return GetDataJSON(gridviewname, pageno, pagesize, sortname, sortorder, gridsearch);
            }
            return @"{""Rows"":[],""Total"":""0""}";
        }

        public string GetDataJSONUseSQL(string sql)
        {
            DataTable dt = DataBaseHelper.GetDataTable(sql);
            int recordCount = dt.Rows.Count;
            return GetJSONFromDataTable(dt, recordCount);
        }
        /// <summary>
        /// 不分页
        /// </summary>
        /// <param name="GridViewName"></param>
        /// <returns></returns>
        public string GetDataJSON(string GridViewName)
        { 
            DataTable dt = GetGridView(GridViewName);
            int recordCount = dt.Rows.Count;      
            return GetJSONFromDataTable(dt, recordCount);
        }
        /// <summary>
        /// 不分页，带查询
        /// </summary>
        /// <param name="GridViewName"></param>
        /// <param name="whereStr"></param>
        /// <returns></returns>
        public string GetDataJSON(string GridViewName, string whereStr)
        {
            DataTable dt = GetGridView(GridViewName, whereStr);
            int recordCount = dt.Rows.Count;
            return GetJSONFromDataTable(dt, recordCount);
        }
        /// <summary>
        /// 不分页，带查询和排序
        /// </summary>
        /// <param name="GridViewName"></param>
        /// <param name="whereStr"></param>
        /// <returns></returns>
        public string GetDataJSON(string GridViewName, string whereStr,string orderStr)
        {
            DataTable dt = GetGridView(GridViewName, whereStr, orderStr);
            int recordCount = dt.Rows.Count;
            return GetJSONFromDataTable(dt, recordCount);
        }
        /// <summary>
        /// 简单分页
        /// </summary>
        /// <param name="GridViewName"></param>
        /// <param name="pageNo"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public string GetDataJSON(string GridViewName, int pageNo, int pageSize)
        {
            int recordCount = 0;
            DataTable dt = GetGridView(GridViewName, pageNo, pageSize, ref recordCount);
            return GetJSONFromDataTable(dt, recordCount);
        }
        /// <summary>
        /// 带查询的分页
        /// </summary>
        /// <param name="GridViewName"></param>
        /// <param name="pageNo"></param>
        /// <param name="pageSize"></param>
        /// <param name="whereStr"></param>
        /// <returns></returns>
        public string GetDataJSON(string GridViewName, int pageNo, int pageSize, string whereStr)
        {
            int recordCount = 0;
            string keyname = GetKeyName(GridViewName);
            string orderStr = "order by " + keyname;
            DataTable dt = GetGridView(GridViewName, pageNo, pageSize, orderStr, whereStr, ref recordCount);
            return GetJSONFromDataTable(dt, recordCount);
        }
        /// <summary>
        /// 带排序的分页
        /// </summary>
        /// <param name="GridViewName"></param>
        /// <param name="pageNo"></param>
        /// <param name="pageSize"></param>
        /// <param name="sortname"></param>
        /// <param name="sortorder"></param>
        /// <returns></returns>
        public string GetDataJSON(string GridViewName, int pageNo, int pageSize, string sortname, string sortorder)
        {
            int recordCount = 0;
            sortorder = sortorder.ToLower() == "asc" ? "Asc" : "Desc";
            string orderStr = "order by " + sortname + " " + sortorder;
            DataTable dt = GetGridView(GridViewName, pageNo, pageSize, orderStr, ref recordCount);
            return GetJSONFromDataTable(dt, recordCount);
        }
        /// <summary>
        /// 带排序和查询的分页
        /// </summary>
        /// <param name="GridViewName"></param>
        /// <param name="pageNo"></param>
        /// <param name="pageSize"></param>
        /// <param name="sortname"></param>
        /// <param name="sortorder"></param>
        /// <param name="whereStr"></param>
        /// <returns></returns>
        public string GetDataJSON(string GridViewName, int pageNo, int pageSize, string sortname, string sortorder,string whereStr)
        {
            int recordCount = 0;
            sortorder = sortorder.ToLower() == "asc" ? "Asc" : "Desc";
            string orderStr = "order by " + sortname + " " + sortorder;
            DataTable dt = GetGridView(GridViewName, pageNo, pageSize, orderStr, whereStr, ref recordCount);
            return GetJSONFromDataTable(dt, recordCount);
        }

        public string GetJSONFromDataTable(DataTable dt,int recordCount)
        {
            try
            {
                string rowsjson = JsonConvert.SerializeObject(dt, new DataTableConverter());
                string json = @"{""Rows"":" + rowsjson + @",""Total"":""" + recordCount + @"""}";
                return json;
            }
            catch (Exception err)
            {
                return @"{""Rows"":[],""Total"":""0""}";
            }
        }
    }
}
