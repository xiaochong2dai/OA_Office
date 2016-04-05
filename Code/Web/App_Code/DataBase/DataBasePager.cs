using System;
using System.Collections.Generic; 
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common; 
using Utility.Common;
using Utility.View;
using Microsoft.ApplicationBlocks.Data;
using Utility.Common.Helpers;
namespace Utility.DataBase
{
    public abstract class DataBasePager
    {
        private IList<ViewInfo> _views = new List<ViewInfo>();
        public virtual IList<ViewInfo> Views
        {
            get
            {
                return _views;
            }
        }
        public string GetKeyName(string ViewName)
        {
            if (Views == null) return null;
            foreach (ViewInfo view in Views)
            {
                if (view.ViewName.Equals(ViewName))
                    return view.KeyName;
            }
            return null;
        } 
        /// <summary>
        /// 获取全部数据
        /// </summary>
        /// <param name="gridViewName"></param>
        /// <returns></returns>
        public DataTable GetGridView(string gridViewName)
        {
            string sql = "select * from " + gridViewName;
            DataTable dt =  DataBaseHelper.GetDataTable(sql); 
            return dt;
        }
        /// <summary>
        /// 简单查询
        /// </summary>
        /// <param name="gridViewName"></param>
        /// <returns></returns>
        public DataTable GetGridView(string gridViewName,string whereStr)
        {
            string sql = "select * from " + gridViewName + " where " + whereStr;
            DataTable dt = DataBaseHelper.GetDataTable(sql);
            return dt;
        }
        /// <summary>
        /// 简单查询(包含排序)
        /// </summary>
        /// <param name="gridViewName"></param>
        /// <param name="whereStr"></param>
        /// <param name="orderStr"></param>
        /// <returns></returns>
        public DataTable GetGridView(string gridViewName, string whereStr,string orderStr)
        {
            string sql = "select * from " + gridViewName + " where " + whereStr + " " + orderStr;
            DataTable dt = DataBaseHelper.GetDataTable(sql);
            return dt;
        }
        /// <summary>
        /// 简单的分页
        /// </summary>
        /// <param name="gridViewName"></param>
        /// <param name="pageNo"></param>
        /// <param name="pageSize"></param>
        /// <param name="recordTotal"></param>
        /// <returns></returns>
        public DataTable GetGridView(string gridViewName, int pageNo, int pageSize, ref int recordTotal)
        {
            string keyname = GetKeyName(gridViewName);
            if (string.IsNullOrEmpty(keyname)) return null;
            return GetGridView(gridViewName, "*", keyname, pageNo, pageSize, "order by " + keyname, "1=1", ref recordTotal);
        }
        /// <summary>
        /// 带排序的分页
        /// </summary>
        /// <param name="gridViewName"></param>
        /// <param name="pageNo"></param>
        /// <param name="pageSize"></param>
        /// <param name="orderStr"></param>
        /// <param name="recordTotal"></param>
        /// <returns></returns>
        public DataTable GetGridView(string gridViewName, int pageNo, int pageSize, string orderStr, ref int recordTotal)
        {
            string keyname = GetKeyName(gridViewName);
            if (string.IsNullOrEmpty(keyname)) return null;
            return GetGridView(gridViewName, "*", keyname, pageNo, pageSize, orderStr, "1=1", ref recordTotal);
        }
        /// <summary>
        /// 带排序和查询的分页
        /// </summary>
        /// <param name="gridViewName"></param>
        /// <param name="pageNo"></param>
        /// <param name="pageSize"></param>
        /// <param name="orderStr"></param>
        /// <param name="whereStr"></param>
        /// <param name="recordTotal"></param>
        /// <returns></returns>
        public DataTable GetGridView(string gridViewName, int pageNo, int pageSize, string orderStr, string whereStr, ref int recordTotal)
        {
            string keyname = GetKeyName(gridViewName);
            if (string.IsNullOrEmpty(keyname)) return null;
            return GetGridView(gridViewName, "*", keyname, pageNo, pageSize, orderStr, whereStr, ref recordTotal);
        }
         


        public DataTable GetGridView(string gridViewName, string fieldName, string gridKeyName, int pageNo, int pageSize, ref int recordTotal)
        {
            return GetGridView(gridViewName, fieldName, gridKeyName, pageNo, pageSize, "order by " + gridKeyName, ref recordTotal);
        }

        public DataTable GetGridView(string gridViewName, string fieldName, string gridKeyName, int pageNo, int pageSize, string orderStr, ref int recordTotal)
        {
            return GetGridView(gridViewName, fieldName, gridKeyName, pageNo, pageSize, orderStr, ref recordTotal);
        }


        public DataTable GetGridView(string gridViewName, string fieldName, string gridKeyName, int pageNo, int pageSize, string orderStr, string whereStr, ref int recordTotal)
        { 
            string sqlCommad = "P_GridViewPager"; 
            SqlParameter[] parms = new SqlParameter[]{
                new SqlParameter("viewName",SqlDbType.VarChar,50),
                new SqlParameter("fieldName",SqlDbType.VarChar,50),
                new SqlParameter("keyName",SqlDbType.VarChar,50),
                new SqlParameter("pageNo",SqlDbType.Int),
                new SqlParameter("pageSize",SqlDbType.Int),
                new SqlParameter("orderString",SqlDbType.VarChar,50),
                new SqlParameter("whereString",SqlDbType.VarChar,300),
                new SqlParameter("recordTotal",SqlDbType.VarChar,50)
            };
            parms[0].Value = gridViewName;
            parms[1].Value = fieldName;
            parms[2].Value = gridKeyName;
            parms[3].Value = pageNo;
            parms[4].Value = pageSize;
            parms[5].Value = orderStr;
            parms[6].Value = whereStr;
            parms[7].Direction = ParameterDirection.Output; 
            DataTable dt = SqlHelper.ExecuteDataset(DataBaseHelper.connectionstring, CommandType.StoredProcedure, sqlCommad, parms).Tables[0];
            recordTotal = CommonHelper.ObjToInt(parms[7].Value);
            return dt;
        }
    }


   
}
