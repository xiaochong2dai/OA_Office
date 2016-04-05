using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using SDLX.DBUtility;//�����������
namespace SDLX.BLL
{
	/// <summary>
	/// ��ERPProduct��
	/// </summary>
	public class ERPProduct
	{
		public ERPProduct()
		{}
		#region Model
		private int _id;
		private string _productname;
		private string _productserils;
		private string _gongyingshang;
		private string _producttype;
		private string _xinghao;
		private string _danwei;
		private string _chengben;
		private string _chushou;
		private decimal? _rukusum;
		private decimal? _chukusum;
		private decimal? _nowkucun;
		private decimal? _kucunbaojing;
		private string _cunchuweizhi;
		private string _chanpinmiaoshu;
		private string _backinfo;
		/// <summary>
		/// 
		/// </summary>
		public int ID
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// ��Ʒ����
		/// </summary>
		public string ProductName
		{
			set{ _productname=value;}
			get{return _productname;}
		}
		/// <summary>
		/// ��Ʒ����
		/// </summary>
		public string ProductSerils
		{
			set{ _productserils=value;}
			get{return _productserils;}
		}
		/// <summary>
		/// ��Ʒ��Ӧ��
		/// </summary>
		public string GongYingShang
		{
			set{ _gongyingshang=value;}
			get{return _gongyingshang;}
		}
		/// <summary>
		/// ��Ʒ���
		/// </summary>
		public string ProductType
		{
			set{ _producttype=value;}
			get{return _producttype;}
		}
		/// <summary>
		/// ��Ʒ�ͺ�
		/// </summary>
		public string XingHao
		{
			set{ _xinghao=value;}
			get{return _xinghao;}
		}
		/// <summary>
		/// ������λ
		/// </summary>
		public string DanWei
		{
			set{ _danwei=value;}
			get{return _danwei;}
		}
		/// <summary>
		/// �ɱ���
		/// </summary>
		public string ChengBen
		{
			set{ _chengben=value;}
			get{return _chengben;}
		}
		/// <summary>
		/// ���ۼ�
		/// </summary>
		public string ChuShou
		{
			set{ _chushou=value;}
			get{return _chushou;}
		}
		/// <summary>
		/// �������
		/// </summary>
		public decimal? RuKuSum
		{
			set{ _rukusum=value;}
			get{return _rukusum;}
		}
		/// <summary>
		/// ��������
		/// </summary>
		public decimal? ChuKuSum
		{
			set{ _chukusum=value;}
			get{return _chukusum;}
		}
		/// <summary>
		/// ��ǰ���
		/// </summary>
		public decimal? NowKuCun
		{
			set{ _nowkucun=value;}
			get{return _nowkucun;}
		}
		/// <summary>
		/// ��汨����
		/// </summary>
		public decimal? KuCunBaoJing
		{
			set{ _kucunbaojing=value;}
			get{return _kucunbaojing;}
		}
		/// <summary>
		/// �洢λ��
		/// </summary>
		public string CunChuWeiZhi
		{
			set{ _cunchuweizhi=value;}
			get{return _cunchuweizhi;}
		}
		/// <summary>
		/// ��Ʒ����
		/// </summary>
		public string ChanPinMiaoShu
		{
			set{ _chanpinmiaoshu=value;}
			get{return _chanpinmiaoshu;}
		}
		/// <summary>
		/// ��ע��Ϣ
		/// </summary>
		public string BackInfo
		{
			set{ _backinfo=value;}
			get{return _backinfo;}
		}
		#endregion Model


		#region  ��Ա����

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public ERPProduct(int ID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ID,ProductName,ProductSerils,GongYingShang,ProductType,XingHao,DanWei,ChengBen,ChuShou,RuKuSum,ChuKuSum,NowKuCun,KuCunBaoJing,CunChuWeiZhi,ChanPinMiaoShu,BackInfo ");
			strSql.Append(" FROM ERPProduct ");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = ID;

			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["ID"].ToString()!="")
				{
					ID=int.Parse(ds.Tables[0].Rows[0]["ID"].ToString());
				}
				ProductName=ds.Tables[0].Rows[0]["ProductName"].ToString();
				ProductSerils=ds.Tables[0].Rows[0]["ProductSerils"].ToString();
				GongYingShang=ds.Tables[0].Rows[0]["GongYingShang"].ToString();
				ProductType=ds.Tables[0].Rows[0]["ProductType"].ToString();
				XingHao=ds.Tables[0].Rows[0]["XingHao"].ToString();
				DanWei=ds.Tables[0].Rows[0]["DanWei"].ToString();
				ChengBen=ds.Tables[0].Rows[0]["ChengBen"].ToString();
				ChuShou=ds.Tables[0].Rows[0]["ChuShou"].ToString();
				if(ds.Tables[0].Rows[0]["RuKuSum"].ToString()!="")
				{
					RuKuSum=decimal.Parse(ds.Tables[0].Rows[0]["RuKuSum"].ToString());
				}
				if(ds.Tables[0].Rows[0]["ChuKuSum"].ToString()!="")
				{
					ChuKuSum=decimal.Parse(ds.Tables[0].Rows[0]["ChuKuSum"].ToString());
				}
				if(ds.Tables[0].Rows[0]["NowKuCun"].ToString()!="")
				{
					NowKuCun=decimal.Parse(ds.Tables[0].Rows[0]["NowKuCun"].ToString());
				}
				if(ds.Tables[0].Rows[0]["KuCunBaoJing"].ToString()!="")
				{
					KuCunBaoJing=decimal.Parse(ds.Tables[0].Rows[0]["KuCunBaoJing"].ToString());
				}
				CunChuWeiZhi=ds.Tables[0].Rows[0]["CunChuWeiZhi"].ToString();
				ChanPinMiaoShu=ds.Tables[0].Rows[0]["ChanPinMiaoShu"].ToString();
				BackInfo=ds.Tables[0].Rows[0]["BackInfo"].ToString();
			}
		}

		/// <summary>
		/// �õ����ID
		/// </summary>
		public int GetMaxId()
		{

		return DbHelperSQL.GetMaxID("ID", "ERPProduct"); 
		}

		/// <summary>
		/// �Ƿ���ڸü�¼
		/// </summary>
		public bool Exists(int ID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ERPProduct");
			strSql.Append(" where ID=@ID ");

			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = ID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// ����һ������
		/// </summary>
		public int Add()
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ERPProduct(");
			strSql.Append("ProductName,ProductSerils,GongYingShang,ProductType,XingHao,DanWei,ChengBen,ChuShou,RuKuSum,ChuKuSum,NowKuCun,KuCunBaoJing,CunChuWeiZhi,ChanPinMiaoShu,BackInfo)");
			strSql.Append(" values (");
			strSql.Append("@ProductName,@ProductSerils,@GongYingShang,@ProductType,@XingHao,@DanWei,@ChengBen,@ChuShou,@RuKuSum,@ChuKuSum,@NowKuCun,@KuCunBaoJing,@CunChuWeiZhi,@ChanPinMiaoShu,@BackInfo)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@ProductName", SqlDbType.VarChar,50),
					new SqlParameter("@ProductSerils", SqlDbType.VarChar,50),
					new SqlParameter("@GongYingShang", SqlDbType.VarChar,50),
					new SqlParameter("@ProductType", SqlDbType.VarChar,50),
					new SqlParameter("@XingHao", SqlDbType.VarChar,50),
					new SqlParameter("@DanWei", SqlDbType.VarChar,50),
					new SqlParameter("@ChengBen", SqlDbType.VarChar,50),
					new SqlParameter("@ChuShou", SqlDbType.VarChar,50),
					new SqlParameter("@RuKuSum", SqlDbType.Decimal,9),
					new SqlParameter("@ChuKuSum", SqlDbType.Decimal,9),
					new SqlParameter("@NowKuCun", SqlDbType.Decimal,9),
					new SqlParameter("@KuCunBaoJing", SqlDbType.Decimal,9),
					new SqlParameter("@CunChuWeiZhi", SqlDbType.VarChar,50),
					new SqlParameter("@ChanPinMiaoShu", SqlDbType.VarChar,5000),
					new SqlParameter("@BackInfo", SqlDbType.VarChar,5000)};
			parameters[0].Value = ProductName;
			parameters[1].Value = ProductSerils;
			parameters[2].Value = GongYingShang;
			parameters[3].Value = ProductType;
			parameters[4].Value = XingHao;
			parameters[5].Value = DanWei;
			parameters[6].Value = ChengBen;
			parameters[7].Value = ChuShou;
			parameters[8].Value = RuKuSum;
			parameters[9].Value = ChuKuSum;
			parameters[10].Value = NowKuCun;
			parameters[11].Value = KuCunBaoJing;
			parameters[12].Value = CunChuWeiZhi;
			parameters[13].Value = ChanPinMiaoShu;
			parameters[14].Value = BackInfo;

			object obj = DbHelperSQL.GetSingle(strSql.ToString(),parameters);
			if (obj == null)
			{
				return 1;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update()
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ERPProduct set ");
			strSql.Append("ProductName=@ProductName,");
			strSql.Append("ProductSerils=@ProductSerils,");
			strSql.Append("GongYingShang=@GongYingShang,");
			strSql.Append("ProductType=@ProductType,");
			strSql.Append("XingHao=@XingHao,");
			strSql.Append("DanWei=@DanWei,");
			strSql.Append("ChengBen=@ChengBen,");
			strSql.Append("ChuShou=@ChuShou,");
			strSql.Append("RuKuSum=@RuKuSum,");
			strSql.Append("ChuKuSum=@ChuKuSum,");
			strSql.Append("NowKuCun=@NowKuCun,");
			strSql.Append("KuCunBaoJing=@KuCunBaoJing,");
			strSql.Append("CunChuWeiZhi=@CunChuWeiZhi,");
			strSql.Append("ChanPinMiaoShu=@ChanPinMiaoShu,");
			strSql.Append("BackInfo=@BackInfo");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4),
					new SqlParameter("@ProductName", SqlDbType.VarChar,50),
					new SqlParameter("@ProductSerils", SqlDbType.VarChar,50),
					new SqlParameter("@GongYingShang", SqlDbType.VarChar,50),
					new SqlParameter("@ProductType", SqlDbType.VarChar,50),
					new SqlParameter("@XingHao", SqlDbType.VarChar,50),
					new SqlParameter("@DanWei", SqlDbType.VarChar,50),
					new SqlParameter("@ChengBen", SqlDbType.VarChar,50),
					new SqlParameter("@ChuShou", SqlDbType.VarChar,50),
					new SqlParameter("@RuKuSum", SqlDbType.Decimal,9),
					new SqlParameter("@ChuKuSum", SqlDbType.Decimal,9),
					new SqlParameter("@NowKuCun", SqlDbType.Decimal,9),
					new SqlParameter("@KuCunBaoJing", SqlDbType.Decimal,9),
					new SqlParameter("@CunChuWeiZhi", SqlDbType.VarChar,50),
					new SqlParameter("@ChanPinMiaoShu", SqlDbType.VarChar,5000),
					new SqlParameter("@BackInfo", SqlDbType.VarChar,5000)};
			parameters[0].Value = ID;
			parameters[1].Value = ProductName;
			parameters[2].Value = ProductSerils;
			parameters[3].Value = GongYingShang;
			parameters[4].Value = ProductType;
			parameters[5].Value = XingHao;
			parameters[6].Value = DanWei;
			parameters[7].Value = ChengBen;
			parameters[8].Value = ChuShou;
			parameters[9].Value = RuKuSum;
			parameters[10].Value = ChuKuSum;
			parameters[11].Value = NowKuCun;
			parameters[12].Value = KuCunBaoJing;
			parameters[13].Value = CunChuWeiZhi;
			parameters[14].Value = ChanPinMiaoShu;
			parameters[15].Value = BackInfo;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int ID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ERPProduct ");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = ID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public void GetModel(int ID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 ID,ProductName,ProductSerils,GongYingShang,ProductType,XingHao,DanWei,ChengBen,ChuShou,RuKuSum,ChuKuSum,NowKuCun,KuCunBaoJing,CunChuWeiZhi,ChanPinMiaoShu,BackInfo ");
			strSql.Append(" FROM ERPProduct ");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = ID;

			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["ID"].ToString()!="")
				{
					ID=int.Parse(ds.Tables[0].Rows[0]["ID"].ToString());
				}
				ProductName=ds.Tables[0].Rows[0]["ProductName"].ToString();
				ProductSerils=ds.Tables[0].Rows[0]["ProductSerils"].ToString();
				GongYingShang=ds.Tables[0].Rows[0]["GongYingShang"].ToString();
				ProductType=ds.Tables[0].Rows[0]["ProductType"].ToString();
				XingHao=ds.Tables[0].Rows[0]["XingHao"].ToString();
				DanWei=ds.Tables[0].Rows[0]["DanWei"].ToString();
				ChengBen=ds.Tables[0].Rows[0]["ChengBen"].ToString();
				ChuShou=ds.Tables[0].Rows[0]["ChuShou"].ToString();
				if(ds.Tables[0].Rows[0]["RuKuSum"].ToString()!="")
				{
					RuKuSum=decimal.Parse(ds.Tables[0].Rows[0]["RuKuSum"].ToString());
				}
				if(ds.Tables[0].Rows[0]["ChuKuSum"].ToString()!="")
				{
					ChuKuSum=decimal.Parse(ds.Tables[0].Rows[0]["ChuKuSum"].ToString());
				}
				if(ds.Tables[0].Rows[0]["NowKuCun"].ToString()!="")
				{
					NowKuCun=decimal.Parse(ds.Tables[0].Rows[0]["NowKuCun"].ToString());
				}
				if(ds.Tables[0].Rows[0]["KuCunBaoJing"].ToString()!="")
				{
					KuCunBaoJing=decimal.Parse(ds.Tables[0].Rows[0]["KuCunBaoJing"].ToString());
				}
				CunChuWeiZhi=ds.Tables[0].Rows[0]["CunChuWeiZhi"].ToString();
				ChanPinMiaoShu=ds.Tables[0].Rows[0]["ChanPinMiaoShu"].ToString();
				BackInfo=ds.Tables[0].Rows[0]["BackInfo"].ToString();
			}
		}

		/// <summary>
		/// ��������б�
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select * ");
			strSql.Append(" FROM ERPProduct ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		#endregion  ��Ա����
	}
}

