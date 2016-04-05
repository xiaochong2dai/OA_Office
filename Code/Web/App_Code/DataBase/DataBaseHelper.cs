using System;
using System.Configuration;
using System.Collections.Generic; 
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common; 
using Utility.Common;
using Utility.Common.Helpers;
using Microsoft.ApplicationBlocks.Data;
namespace Utility.DataBase
{
    public class DataBaseHelper
    {
        public static readonly string connectionstring = ConfigurationManager.AppSettings["SQLConnectionString"];
        static DataBaseHelper()
        {
        } 
        public static DataSet GetDataSet(string sql)
        {
            return SqlHelper.ExecuteDataset(connectionstring, CommandType.Text, sql);
        }
        public static DataTable GetDataTable(string sql)
        {
            DataSet ds = GetDataSet(sql);
            if (ds.Tables.Count == 0) return null;
            return ds.Tables[0];
        }
        public static int ExecuteNonQuery(string sql)
        {
            return SqlHelper.ExecuteNonQuery(connectionstring, CommandType.Text, sql);
        }
        public static bool Has(string sql)
        { 
            object obj = SqlHelper.ExecuteScalar(connectionstring, CommandType.Text, sql);
            if (obj == null || Convert.IsDBNull(obj)) return false;
            if (CommonHelper.ObjToInt(obj) == 0) return false;
            return true;
        }
    }
}
