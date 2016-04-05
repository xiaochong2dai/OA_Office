if exists (select * from sysobjects where id = OBJECT_ID('[ERPAnPai]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPAnPai]

CREATE TABLE [ERPAnPai] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TitleStr] [varchar]  (500) NULL,
[ContentStr] [text]  NULL,
[TimeStart] [datetime]  NULL,
[TimeEnd] [datetime]  NULL,
[TimeTiXing] [datetime]  NULL,
[TypeStr] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPAnPai] WITH NOCHECK ADD  CONSTRAINT [PK_ERPAnPai] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPAnPai] ON

INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr]) VALUES ( 5,'admin','�������Ƶ�μ�2009��ȰٶȻ���','<P>�������Ƶ�μ�2009��ȰٶȻ���</P><P>��ϵ�绰��13696432490&nbsp;&nbsp; 023-67466469</P>','2009-3-24 12:00:00','2009-3-25 12:00:00','2009-3-24 10:00:00','��������','2009-3-22 10:56:22')
INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr]) VALUES ( 6,'admin','�μӹ�˾��֯�����˽ڻ','<P>�μӹ�˾��֯�����˽ڻ</P><P>�ҵĵ绰��023-67466469</P>','2009-4-1 10:00:00','2009-4-1 22:00:00','2009-4-1 9:00:00','��λ����','2009-3-22 10:57:32')
INSERT [ERPAnPai] ([ID],[UserName],[TitleStr],[ContentStr],[TimeStart],[TimeEnd],[TimeTiXing],[TypeStr],[TimeStr]) VALUES ( 7,'admin','�μ��°汾������','<P>�μ��°汾������</P><P>׼�����°汾����������Ҫ�ĸ�����Ʒ��</P>','2009-4-5 11:00:00','2009-4-5 15:00:00','2009-4-5 10:00:00','��������','2009-3-22 10:58:37')

SET IDENTITY_INSERT [ERPAnPai] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBBSBanKuai]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBBSBanKuai]

CREATE TABLE [ERPBBSBanKuai] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BanKuaiName] [varchar]  (500) NULL,
[BanZhuList] [varchar]  (500) NULL,
[BanKuaiMiaoShu] [varchar]  (8000) NULL,
[BanKuaiImg] [varchar]  (200) NULL,
[JiaoSeXianZhiList] [varchar]  (8000) NULL,
[BuMenXianZhi] [varchar]  (8000) NULL,
[UserXianZhi] [varchar]  (8000) NULL)

ALTER TABLE [ERPBBSBanKuai] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBBSBanKuai] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBBSBanKuai] ON

INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 1,'��������','admin','Ա���������������������ԣ�����','BanKuai.gif','���н�ɫ','���в���','�����û�')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 2,'��ˮ��԰','������','Ӣ��Ī�ʳ�������ˮ��ѯԵ�ɡ����ࡹ��һ����...','BanKuai.gif','���н�ɫ','���в���','�����û�')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 3,'��ѧ���','�Ÿ���','��������õģ�����ǲ԰׵ģ���������ʵ�ģ��������ϵ���������֮�ʣ���д�Լ�����˵Ĺ��¡�','BanKuai.gif','���н�ɫ','���в���','�����û�')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 4,'��ͼר��','������','���� | ���� | ���� | ��Ա���� | ������ͼ | ͼ������ | ��Ц | ����...ͼ�Ĳ�ï��չʾ��ķ�ɡ�','BanKuai.gif','���н�ɫ','���в���','�����û�')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 5,'ʱ������','admin','ÿһ�죬��Ҫ����µľ��ʣ�������ĸ�����ʱ���о�������...','BanKuai.gif','���н�ɫ','���в���','�����û�')
INSERT [ERPBBSBanKuai] ([ID],[BanKuaiName],[BanZhuList],[BanKuaiMiaoShu],[BanKuaiImg],[JiaoSeXianZhiList],[BuMenXianZhi],[UserXianZhi]) VALUES ( 6,'�����ǿ�','admin,������,�Ÿ���','�������ֵ����ã��������õ����硣','BanKuai.gif','���н�ɫ','���в���','�����û�')

SET IDENTITY_INSERT [ERPBBSBanKuai] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBBSTieZi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBBSTieZi]

CREATE TABLE [ERPBBSTieZi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BanKuaiID] [int]  NULL,
[TitleStr] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[ContentStr] [text]  NULL,
[ZuiHouUser] [varchar]  (50) NULL,
[ZuiHouTime] [datetime]  NULL DEFAULT (getdate()),
[PaiXu] [int]  NULL DEFAULT (0),
[HuiFuContent] [text]  NULL)

ALTER TABLE [ERPBBSTieZi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBBSTieZi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBBSTieZi] ON

INSERT [ERPBBSTieZi] ([ID],[BanKuaiID],[TitleStr],[UserName],[TimeStr],[ContentStr],[ZuiHouUser],[ZuiHouTime],[PaiXu],[HuiFuContent]) VALUES ( 1,6,'����8��25�ռ�����Ӱ�������������','admin','2008-10-12 15:22:00','<DIV class=cnt><P>�ٶȾ�����������һ�ְ�Ч�����ѵ������ƹ㷽ʽ����������Ͷ��Ϳ��Ը���ҵ��������Ǳ�ڿͻ�����Ч������ҵ���۶��Ʒ��֪���ȡ�</P><P>ÿ���г��������˴��ڰٶȲ�����Ϣ����ҵ�ڰٶ�ע�����Ʒ��صĹؼ��ʺ󣬾ͻᱻ������Щ��Ʒ��Ǳ�ڿͻ��ҵ���</P><P>�����������ո���ҵ������Ǳ�ڿͻ����������Ʒѣ���ҵ���������������ƹ�Ͷ�룬������ر���<BR><IMG src="/Web/eWebEditor/sysimage/file/doc.gif" border=0><A href="/Web/WebEditorFile/2008-10-12-15-21-47.doc" target=_blank>/Web/WebEditorFile/2008-10-12-15-21-47.doc</A></P></DIV><SCRIPT language=javascript type=text/javascript>writeFoot();</SCRIPT><STYLE>#ft{clear:both;margin:0;line-height:24px;border-top:1px solid #D78E6A;text-align:center}#ft,#ft *{color:#77C;font-size:12px;font-family:Arial;white-space:nowrap}</STYLE>','admin','2008-10-12 16:23:01',0,'<table><tr><td></td></tr></table><table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1"><tr><td align="center" valign="top" style="width: 170px; height: 25px; background-color: #ffffff"><br><img src="../images/Button/Man.gif" align="absMiddle" /><font color="#0000C0" style=" font-weight:bold">admin</font><br></td><td style="padding-left: 5px; background-color: #ffffff" rowspan="2" valign="top">�ڸ�ʲô����</td></tr><tr><td align="center" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff"><br>2008-10-12 16:20:08<br></td></tr></table><table><tr><td></td></tr></table><table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1"><tr><td align="center" valign="top" style="width: 170px; height: 25px; background-color: #ffffff"><br><img src="../images/Button/Man.gif" align="absMiddle" /><font color="#0000C0" style=" font-weight:bold">admin</font><br></td><td style="padding-left: 5px; background-color: #ffffff" rowspan="2" valign="top">���ʴ����ʲô�뷨��</td></tr><tr><td align="center" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff"><br>2008-10-12 16:21:34<br></td></tr></table><table><tr><td></td></tr></table><table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1"><tr><td align="center" valign="top" style="width: 170px; height: 25px; background-color: #ffffff"><br><img src="../images/Button/Man.gif" align="absMiddle" /><font color="#0000C0" style=" font-weight:bold">admin</font><br></td><td style="padding-left: 5px; background-color: #ffffff" rowspan="2" valign="top"><P>�ٶȾ�����������һ�ְ�Ч�����ѵ������ƹ㷽ʽ����������Ͷ��Ϳ��Ը���ҵ��������Ǳ�ڿͻ�����Ч������ҵ���۶��Ʒ��֪���ȡ�</P><P>ÿ���г��������˴��ڰٶȲ�����Ϣ����ҵ�ڰٶ�ע�����Ʒ��صĹؼ��ʺ󣬾ͻᱻ������Щ��Ʒ��Ǳ�ڿͻ��ҵ���</P><P>�����������ո���ҵ������Ǳ�ڿͻ����������Ʒѣ���ҵ���������������ƹ�Ͷ�룬������ر���<BR></P><P>�ٶȾ�����������һ�ְ�Ч�����ѵ������ƹ㷽ʽ����������Ͷ��Ϳ��Ը���ҵ��������Ǳ�ڿͻ�����Ч������ҵ���۶��Ʒ��֪���ȡ�</P><P>ÿ���г��������˴��ڰٶȲ�����Ϣ����ҵ�ڰٶ�ע�����Ʒ��صĹؼ��ʺ󣬾ͻᱻ������Щ��Ʒ��Ǳ�ڿͻ��ҵ���</P><P>�����������ո���ҵ������Ǳ�ڿͻ����������Ʒѣ���ҵ���������������ƹ�Ͷ�룬������ر���<BR></P></td></tr><tr><td align="center" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff"><br>2008-10-12 16:23:01<br></td></tr></table>')
INSERT [ERPBBSTieZi] ([ID],[BanKuaiID],[TitleStr],[UserName],[TimeStr],[ContentStr],[ZuiHouUser],[ZuiHouTime],[PaiXu]) VALUES ( 2,5,'ʱ��������ĺ�','admin','2008-10-12 16:24:05','<P>ʱ��������ĺ�</P><P>ʱ��������ĺ�</P><P>ʱ��������ĺ�</P>','admin','2008-10-12 16:24:05',1)
INSERT [ERPBBSTieZi] ([ID],[BanKuaiID],[TitleStr],[UserName],[TimeStr],[ContentStr],[ZuiHouUser],[ZuiHouTime],[PaiXu]) VALUES ( 3,5,'¹������ʲô����Ĳ�Ʒ��','admin','2008-10-12 16:26:14','<P>¹������ʲô����Ĳ�Ʒ��</P><P>¹������ʲô����Ĳ�Ʒ��</P><P>¹������ʲô����Ĳ�Ʒ��</P>','admin','2008-10-12 16:26:14',0)

SET IDENTITY_INSERT [ERPBBSTieZi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPBuMen]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPBuMen]

CREATE TABLE [ERPBuMen] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[BuMenName] [varchar]  (50) NULL,
[ChargeMan] [varchar]  (50) NULL,
[TelStr] [varchar]  (50) NULL,
[ChuanZhen] [varchar]  (50) NULL,
[BackInfo] [varchar]  (8000) NULL,
[DirID] [int]  NULL)

ALTER TABLE [ERPBuMen] WITH NOCHECK ADD  CONSTRAINT [PK_ERPBuMen] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPBuMen] ON

INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[BackInfo],[DirID]) VALUES ( 1,'������','�Ÿ���','13696432490','023-67466469','�����������ŵĿ�������',0)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[BackInfo],[DirID]) VALUES ( 2,'���۲�','��С��','13696432491','023-67466468','���۲�ר�ܼ��ŵ����۹���',0)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[BackInfo],[DirID]) VALUES ( 4,'��Ϣ��','����','13986532480','023-67466469','������Ϣ�ɼ��ʹ���',0)
INSERT [ERPBuMen] ([ID],[BuMenName],[ChargeMan],[TelStr],[ChuanZhen],[BackInfo],[DirID]) VALUES ( 10,'����','������','023-67466469','023-67466469','���Ų�����Ϣ',0)

SET IDENTITY_INSERT [ERPBuMen] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPDanWeiInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPDanWeiInfo]

CREATE TABLE [ERPDanWeiInfo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[DanWeiName] [varchar]  (100) NULL,
[Tel] [varchar]  (100) NULL,
[Fax] [varchar]  (100) NULL,
[YouBian] [varchar]  (50) NULL,
[Address] [varchar]  (500) NULL,
[WebUrl] [varchar]  (200) NULL,
[Email] [varchar]  (100) NULL,
[KaiHuHang] [varchar]  (100) NULL,
[ZhangHao] [varchar]  (100) NULL)

ALTER TABLE [ERPDanWeiInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPDanWeiInfo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPDanWeiInfo] ON

INSERT [ERPDanWeiInfo] ([ID],[DanWeiName],[Tel],[Fax],[YouBian],[Address],[WebUrl],[Email],[KaiHuHang],[ZhangHao]) VALUES ( 1,'��ʾ��˾','13696432490','023-67466469','400000','������Office AnyWhere','http://www.xxxxxxxxxx.com','zwl168918@126.com','��������','000000000000000000000')

SET IDENTITY_INSERT [ERPDanWeiInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPDengJi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPDengJi]

CREATE TABLE [ERPDengJi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[ShenPiRen] [varchar]  (50) NULL,
[ShenQingTime] [datetime]  NULL DEFAULT (getdate()),
[BackInfo] [varchar]  (8000) NULL,
[StartTime] [datetime]  NULL,
[EndTime] [datetime]  NULL,
[StateNow] [varchar]  (50) NULL,
[TypeName] [varchar]  (50) NULL)

ALTER TABLE [ERPDengJi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPDengJi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPDengJi] ON

INSERT [ERPDengJi] ([ID],[UserName],[ShenPiRen],[ShenQingTime],[BackInfo],[StartTime],[EndTime],[StateNow],[TypeName]) VALUES ( 1,'admin','admin','2009-2-15 13:35:36','�����������','2009-2-15 14:00:00','2009-2-15 15:00:00','ͨ��','WaiChu')
INSERT [ERPDengJi] ([ID],[UserName],[ShenPiRen],[ShenQingTime],[BackInfo],[StartTime],[EndTime],[StateNow],[TypeName]) VALUES ( 3,'admin','������','2009-2-15 13:49:32','Ҫ��ȥ','2009-2-25 15:00:00','2009-2-25 17:00:00','����','WaiChu')

SET IDENTITY_INSERT [ERPDengJi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPFileList]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPFileList]

CREATE TABLE [ERPFileList] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FileName] [varchar]  (50) NULL,
[BianHao] [varchar]  (50) NULL,
[BackInfo] [text]  NULL,
[DaXiao] [int]  NULL,
[FileType] [varchar]  (50) NULL,
[DirID] [int]  NULL,
[ShangChuanTime] [datetime]  NULL DEFAULT (getdate()),
[FilePath] [varchar]  (200) NULL,
[UserName] [varchar]  (50) NULL,
[IFDel] [varchar]  (50) NULL,
[TypeName] [varchar]  (50) NULL,
[IfShare] [varchar]  (50) NULL,
[DirOrFile] [int]  NULL DEFAULT (0))

ALTER TABLE [ERPFileList] WITH NOCHECK ADD  CONSTRAINT [PK_ERPFileList] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPFileList] ON

INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 98,'���뿨.JPG','BH025','<P>//д��־</P>',35,'JPG',0,'2009-3-22 11:36:27','633539661413294284.JPG','admin','��','�����ļ�','��',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 99,'�ҵĹ����ļ�','GW00289',0,'dir',0,'2008-8-10 12:38:17','admin','��','�����ļ�','��',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 100,'�ҵĹ���','GX085',0,'dir',0,'2008-8-10 11:10:36','admin','��','�����ļ�','��',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 101,'��վЧ��ͼ.rar','HLWeb01','��վЧ��ͼ',633,'rar',100,'2009-3-22 11:37:56','633539635013919284.rar','admin','��','�����ļ�','��',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 102,'����վЧ��','New238',0,'dir',100,'2008-8-10 11:12:23','admin','��','�����ļ�','��',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 103,'��վ�ļ�','JJ03258',0,'dir',99,'2008-8-10 11:12:57','admin','��','�����ļ�','��',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 104,'��ҳ����.doc','LH036','��վ��Ʒ���',153,'doc',103,'2008-8-10 16:18:13','633539818935794284.doc','admin','��','�����ļ�','��',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 105,'�����ļ�','001',0,'dir',0,'2008-9-3 15:16:17','admin','��','�ҵ�Ӳ��','��',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 106,'���ӱ��.xls','XLS001','���ӱ�����ݲ���',14,'xls',105,'2008-9-3 14:53:14','633560503945781250.xls','admin','��','�ҵ�Ӳ��','��',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 107,'�õ�Ƭ.ppt','PPT001','�õ�Ƭ����',9,'ppt',105,'2008-9-3 14:53:35','633560504155468750.ppt','admin','��','�ҵ�Ӳ��','��',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 108,'���ݿ�.mdb','MDB001','���ݿ����',93,'mdb',105,'2008-9-3 14:54:14','633560504549218750.mdb','admin','��','�ҵ�Ӳ��','��',0)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[DaXiao],[FileType],[DirID],[ShangChuanTime],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 109,'�����ļ�','0325',0,'dir',0,'2008-9-3 15:16:39','admin','��','�ҵ�Ӳ��','��',1)
INSERT [ERPFileList] ([ID],[FileName],[BianHao],[BackInfo],[DaXiao],[FileType],[DirID],[ShangChuanTime],[FilePath],[UserName],[IFDel],[TypeName],[IfShare],[DirOrFile]) VALUES ( 110,'�½� Microsoft Word �ĵ� (2).doc','sdf','f',20,'doc',0,'2009-3-20 16:18:27','633731627072031250.doc','admin','��','�����ļ�','��',0)

SET IDENTITY_INSERT [ERPFileList] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPForm]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPForm]

CREATE TABLE [ERPForm] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FormName] [varchar]  (50) NULL,
[FormType] [varchar]  (50) NULL,
[ShiYongUserList] [varchar]  (8000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[TiaoJianList] [varchar]  (8000) NULL,
[ContentStr] [text]  NULL)

ALTER TABLE [ERPForm] WITH NOCHECK ADD  CONSTRAINT [PK_ERPForm] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPForm] ON

INSERT [ERPForm] ([ID],[FormName],[FormType],[TimeStr],[UserName],[ContentStr]) VALUES ( 6,'���ĵǼ�','���Ĺ���','2009-3-22 10:26:47','admin','<TABLE title="" cellSpacing=0 cellPadding=0 width=600 align=center border=0><TBODY><TR height=35><TD style="FONT-SIZE: 12px" vAlign=center align=middle width="100%" height=50><FONT color=#ff0000><H3><BR>���ĵǼǱ�</H3></FONT></TD></TR><TR height=35><TD style="FONT-SIZE: 12px" vAlign=center width="100%"><TABLE title="" cellSpacing=0 borderColorDark=#ffffff cellPadding=5 width="100%" align=center borderColorLight=#ff0000 border=1><TBODY><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;����</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 508px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" size=46 name=14814></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;��������</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="21%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 210px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=6519></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;�ĺ�</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="22%"><SPAN id=sWenHao width="100%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 206px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=11004></SPAN><!--<INPUT type="text" id=WenHao name=WenHao value="" style="width:100%;" maxlength=100 >--></TD></TR><SCRIPT language=vbscript>     '���ҵ�ǰѡ�е������ĺ��Ƿ������޸�     function LeiXingChange()      if formData.LeiXing.value<>"" then       mystatus.style.display = ""       sWenHao.style.display ="none"       frmWH.action="WenHao.asp"       frmWH.target ="FTongJi"       frmWH.LeiXing.value =formData.LeiXing.value       frmWH.submit()      end if     end function     LeiXingChange    </SCRIPT><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;�ܼ�</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="22%"><SELECT name=""> <OPTION value=�� selected>��</OPTION> <OPTION value=��>��</OPTION> <OPTION value=��>��</OPTION></SELECT></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;�����̶�</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="21%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 204px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=17141></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;����ʱ��</TD><TD style="FONT-SIZE: 12px" vAlign=center><INPUT id=0.7730247343370162 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 205px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" onclick=setday(this) size=21 name=16799></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;ǩ����</TD><TD style="FONT-SIZE: 12px" vAlign=center><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 200px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly value=��ؼ�-�û����� name=15172></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;�а���</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="40%"><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 203px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly value=��ؼ�-�û����� name=766></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;�а쵥λ</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="40%"><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 198px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly size=22 value=��ؼ�-�û����� name=1212></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;��������</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3 height=50><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 504px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 38px" name=1287 rows=1 cols=24></TEXTAREA></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;��ע</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3 height=50><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 503px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 43px" name=5864 cols=23></TEXTAREA></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>')
INSERT [ERPForm] ([ID],[FormName],[FormType],[TimeStr],[UserName],[ContentStr]) VALUES ( 7,'���ĵǼ�','��������','2009-3-22 10:26:40','admin','<P align=center><FONT style="LETTER-SPACING: 5px" color=#ff0000 size=5><B><BR>�ֹ�˾���ĵ�</B></FONT></P><TABLE cellSpacing=0 borderColorDark=#ffffff cellPadding=6 width=730 align=center bgColor=#ffffff borderColorLight=#ff0000 border=1><TBODY><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>������� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 119px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=7 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=5 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT name=""> <OPTION value=�� selected>��</OPTION> <OPTION value=��>��</OPTION> <OPTION value=��>��</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>�������� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 121px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=12 name=2008416165222640></SPAN></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData('text'))" id=Text1 ondragenter="return false" style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; IME-MODE: disabled; BORDER-LEFT: 0px; WIDTH: 115px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" size=10 name=19076></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT name=""> <OPTION value=�� selected>��</OPTION> <OPTION value=��>��</OPTION> <OPTION value=��>��</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: #000000 1px solid" name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly size=11 value=��ؼ�-�û����� name=15160></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 549px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=51 name=2008416165222640></SPAN></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 547px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=49 name=2008416165222640></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 562px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 35px" name=2008416165222640 cols=25></TEXTAREA></TD></TR></TBODY></TABLE>')

SET IDENTITY_INSERT [ERPForm] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPFormType]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPFormType]

CREATE TABLE [ERPFormType] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FormTypeList] [varchar]  (2000) NULL)

ALTER TABLE [ERPFormType] WITH NOCHECK ADD  CONSTRAINT [PK_ERPFormType] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPFormType] ON

INSERT [ERPFormType] ([ID],[FormTypeList]) VALUES ( 1,'��������|���Ĺ���|��λ����|���ڹ���')

SET IDENTITY_INSERT [ERPFormType] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPGongGao]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPGongGao]

CREATE TABLE [ERPGongGao] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[UserBuMen] [varchar]  (50) NULL,
[FuJian] [varchar]  (2000) NULL,
[ContentStr] [text]  NULL,
[TypeStr] [varchar]  (50) NULL)

ALTER TABLE [ERPGongGao] WITH NOCHECK ADD  CONSTRAINT [PK_ERPGongGao] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPGongGao] ON

INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[UserBuMen],[FuJian],[ContentStr],[TypeStr]) VALUES ( 1,'���Ų��������Ѿ����ģ����λ����鿴','2008-7-21 15:15:43','admin','������','633522500735312500.jpg|633522500845000000.jpg|','���Ų��������Ѿ����ģ����λ����鿴��������Ҫ�����Լ��˿�Ĳ����Ѿ��ƽ�������һ������ǰ��һ������','��λ')
INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[UserBuMen],[FuJian],[ContentStr],[TypeStr]) VALUES ( 2,'������8�·ݹ�������','2008-7-21 15:36:27','admin','������','633522514097968750.jpg','<P>1��������������ϵͳ</P><P>2������������Դģ��</P><P>3�������ͻ�������ϵͳ</P>','����')
INSERT [ERPGongGao] ([ID],[TitleStr],[TimeStr],[UserName],[UserBuMen],[FuJian],[ContentStr],[TypeStr]) VALUES ( 3,'���ſ����ƶȸ���','2008-9-3 16:28:18','admin','������','633560560123906250.jpg|633560560459375000.doc','���ſ����ƶ��Ѿ��޸ģ����λԱ��ע�⡣','��λ')

SET IDENTITY_INSERT [ERPGongGao] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPJiaoSe]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPJiaoSe]

CREATE TABLE [ERPJiaoSe] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[JiaoSeName] [varchar]  (50) NULL,
[BackInfo] [varchar]  (1000) NULL,
[QuanXian] [varchar]  (8000) NULL)

ALTER TABLE [ERPJiaoSe] WITH NOCHECK ADD  CONSTRAINT [PK_ERPJiaoSe] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPJiaoSe] ON

INSERT [ERPJiaoSe] ([ID],[JiaoSeName],[BackInfo],[QuanXian]) VALUES ( 3,'��������Ա','��������Ա��ɫ','|001||001a||001d||001e||||||||||002||002a||002s||002m||002e||||||||003||003e||||||||||||||004||004a||004r||004d||004e||||||||005||005a||005d||005e||||||||||006||006a||006s||006m||006e||||||||007||007d||007e||||||||||||008||008a||008r||008d||008e||||||||009||009a||009s||009d||009e||||||||010||010a||010m||010d||010e||||||||011||011a||011m||011d||011e||||||||012||012a||012m||012d||012e||||||||013||013a||013m||013d||013e||||||||014||014a||014m||014d||014e||||||||015||015a||015m||015d||015e||||||||016||016e||||||||||||||017||017a||017m||017d||017e||||||||018||018e||||||||||||||019||019a||019m||019d||019e||||||||020||||||||||||||||021||021m||||||||||||||022||||||||||||||023||023m||||||||||||||024||024a||024m||024d||024e||||||||025||025a||025m||025d||025e||||||||026||||||||||||||||074||074a||074d||074e||||||||||075||075e||||||||||||||076||076e||||||||||||||077||077d||077e||||||||||||078||078d||078e||||||||||||079||079a||079m||079d||079e||||||||080||080m||||||||||||||081||081a||081m||081d||081e||||||||082||082a||082m||082d||082e||||||||083||083a||083m||083d||083e||||||||084||084d||084e||||||||||||085||085d||085e||||||||||||027||027a||027m||027d||027e||||||||028||028e||||||||||||||029||||||||||||||||030||030a||030d||030e||||||||||031||031a||031d||031e||||||||||032||032a||032d||032e||||||||||033||033a||033d||033e||||||||||034||034a||034d||034e||||||||||035||035p||035n||035e||||||||||036||036p||036n||036e||||||||||037||037p||037n||037e||||||||||038||038p||038n||038e||||||||||039||039p||039n||039e||||||||||040||040m||||||||||||||041||041e||||||||||||||042||042e||||||||||||||043||||||||||||||||044||||||||||||||||045||||||||||||||||046||046n||046a||046m||046d||046e||||||047||047n||047a||047m||047d||047e||||||048||048n||048a||048m||048d||048e||||||049||||||||||||||||050||050n||050a||050m||050d||050e||||||051||||||||||||||||052||052d||052r||052e||||||||||053||||||||||||||||054||054a||054m||054d||054e||||||||055||||||||||||||||056||056m||||||||||||||057||057e||||||||||||||058||058a||058d||058e||||||||||059||||||||||||||||060||||||||||||||||061||||||||||||||||062||||||||||||||||063||||||||||||||||064||||||||||||||||065||||||||||||||||066||||||||||||||||067||||||||||||||||068||068m||||||||||||||069||069a||069m||069d||069e||||||||070||070a||070m||070d||070e||||||||071||071a||071m||071d||071e||||||||086||086a||086m||086d||086e||||||||072||072d||072e||||||||||||073|||||||||||||')
INSERT [ERPJiaoSe] ([ID],[JiaoSeName],[BackInfo],[QuanXian]) VALUES ( 4,'һ�����Ա','һ������ߣ�Ȩ�����ñȽϰ�ȫ','|001||001a||||||||||002||||||||003||||||||||||||004||||||||005||||||||||006||||||||007||||||||||||008||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||035||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||053||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||065|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||')
INSERT [ERPJiaoSe] ([ID],[JiaoSeName],[BackInfo],[QuanXian]) VALUES ( 8,'���Խ�ɫ','����ר�ý�ɫ','|001||001a||001d||001e||||||||||002||002a||002s||002m||002e||||||||003||003e||||||||||||||004||004a||004r||004d||004e||||||||005||005a||005d||005e||||||||||006||006a||006s||006m||006e||||||||007||007d||007e||||||||||||008||008a||008r||008d||008e||||||||009||009a||009s||009d||009e||||||||010||010a||010m||010d||010e||||||||011||011a||011m||011d||011e||||||||012||012a||012m||012d||012e||||||||013||013a||013m||013d||013e||||||||014||014a||014m||014d||014e||||||||015||015a||015m||015d||015e||||||||016||016e||||||||||||||017||017a||017m||017d||017e||||||||018||018e||||||||||||||019||019a||019m||019d||019e||||||||020||||||||||||||||021||021m||||||||||||||022||022m||||||||||||||023||023m||||||||||||||024||024a||024m||024d||024e||||||||025||025a||025m||025d||025e||||||||026||||||||||||||||027||027a||027m||027d||027e||||||||028||028e||||||||||||||029||||||||||||||||030||030a||030d||030e||||||||||031||031a||031d||031e||||||||||032||032a||032d||032e||||||||||033||033a||033d||033e||||||||||034||034a||034d||034e||||||||||035||035p||035n||035e||||||||||036||036p||036n||036e||||||||||037||037p||037n||037e||||||||||038||038p||038n||038e||||||||||039||039p||039n||039e||||||||||040||040m||||||||||||||041||041e||||||||||||||042||042e||||||||||||||043||||||||||||||||044||||||||||||||||045||||||||||||||||046||046n||046a||046m||046d||046e||||||047||047n||047a||047m||047d||047e||||||048||048n||048a||048m||048d||048e||||||049||||||||||||||||050||050n||050a||050m||050d||050e||||||051||||||||||||||||052||052d||052r||052e||||||||||053||||||||||||||||054||054a||054m||054d||054e||||||||055||||||||||||||||056||056m||||||||||||||057||057e||||||||||||||058||058a||058d||058e||||||||||059||||||||||||||||060||||||||||||||||061||||||||||||||||062||||||||||||||||063||||||||||||||||064||||||||||||||||065||||||||||||||||066||||||||||||||||067||||||||||||||||068||068m||||||||||||||069||069a||069m||069d||069e||||||||070||070a||070m||070d||070e||||||||071||071a||071m||071d||071e||||||||072||072d||072e||||||||||||073||073m|||||||||||||')

SET IDENTITY_INSERT [ERPJiaoSe] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPKaoQin]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPKaoQin]

CREATE TABLE [ERPKaoQin] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[GuiDingTime1] [datetime]  NULL,
[DengJiTime1] [datetime]  NULL,
[GuiDingTime2] [datetime]  NULL,
[DengJiTime2] [datetime]  NULL,
[GuiDingTime3] [datetime]  NULL,
[DengJiTime3] [datetime]  NULL,
[GuiDingTime4] [datetime]  NULL,
[DengJiTime4] [datetime]  NULL,
[GuiDingTime5] [datetime]  NULL,
[DengJiTime5] [datetime]  NULL,
[GuiDingTime6] [datetime]  NULL,
[DengJiTime6] [datetime]  NULL,
[KaoQinRiQi] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPKaoQin] WITH NOCHECK ADD  CONSTRAINT [PK_ERPKaoQin] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPKaoQin] ON

INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[DengJiTime2],[GuiDingTime3],[DengJiTime3],[GuiDingTime4],[DengJiTime4],[GuiDingTime5],[GuiDingTime6],[KaoQinRiQi]) VALUES ( 3,'admin','2009-2-15 9:10:00','2009-2-15 11:41:01','2009-2-15 11:50:00','2009-2-15 11:41:05','2009-2-15 13:10:00','2009-2-15 12:15:18','2009-2-15 17:20:00','2009-2-15 12:15:22','2009-2-15 18:40:00','2009-2-15 21:50:00','2009-2-15 11:40:00')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[DengJiTime2],[GuiDingTime3],[DengJiTime3],[GuiDingTime4],[KaoQinRiQi]) VALUES ( 4,'������','2009-2-15 9:10:00','2009-2-15 12:20:35','2009-2-15 11:50:00','2009-2-15 12:20:40','2009-2-15 13:10:00','2009-2-15 12:20:42','2009-2-15 17:20:00','2009-2-15 12:20:34')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[KaoQinRiQi]) VALUES ( 5,'admin','2009-2-16 9:10:00','2009-2-16 9:58:58','2009-2-16 11:50:00','2009-2-16 13:10:00','2009-2-16 17:20:00','2009-2-16 9:58:51')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[KaoQinRiQi]) VALUES ( 6,'admin','2009-3-20 9:10:00','2009-3-20 11:50:00','2009-3-20 13:10:00','2009-3-20 17:20:00','2009-3-20 18:37:37')
INSERT [ERPKaoQin] ([ID],[UserName],[GuiDingTime1],[DengJiTime1],[GuiDingTime2],[DengJiTime2],[GuiDingTime3],[DengJiTime3],[GuiDingTime4],[DengJiTime4],[KaoQinRiQi]) VALUES ( 7,'admin','2009-3-22 9:10:00','2009-3-22 11:34:38','2009-3-22 11:50:00','2009-3-22 11:34:44','2009-3-22 13:10:00','2009-3-22 11:34:41','2009-3-22 17:20:00','2009-3-22 11:34:47','2009-3-22 11:34:36')

SET IDENTITY_INSERT [ERPKaoQin] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPKaoQinSetting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPKaoQinSetting]

CREATE TABLE [ERPKaoQinSetting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[GuiDingTime1] [varchar]  (50) NULL,
[GuiDingTime2] [varchar]  (50) NULL,
[GuiDingTime3] [varchar]  (50) NULL,
[GuiDingTime4] [varchar]  (50) NULL,
[GuiDingTime5] [varchar]  (50) NULL,
[GuiDingTime6] [varchar]  (50) NULL)

ALTER TABLE [ERPKaoQinSetting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPKaoQinSetting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPKaoQinSetting] ON

INSERT [ERPKaoQinSetting] ([ID],[GuiDingTime1],[GuiDingTime2],[GuiDingTime3],[GuiDingTime4],[GuiDingTime5],[GuiDingTime6]) VALUES ( 1,'09:10:00','11:50:00','13:10:00','17:20:00','δ����:δ����:00','δ����:δ����:00')

SET IDENTITY_INSERT [ERPKaoQinSetting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPLanEmail]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPLanEmail]

CREATE TABLE [ERPLanEmail] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[EmailTitle] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[EmailContent] [text]  NULL,
[FuJian] [varchar]  (2000) NULL,
[FromUser] [varchar]  (50) NULL,
[ToUser] [varchar]  (50) NULL,
[EmailState] [varchar]  (50) NULL DEFAULT ('δ��'))

ALTER TABLE [ERPLanEmail] WITH NOCHECK ADD  CONSTRAINT [PK_ERPLanEmail] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPLanEmail] ON

INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 23,'����9-25����֯Ա��ǰ���¼���ѧϰ','2008-6-2 15:36:40','����9-25����֯Ա��ǰ���¼���ѧϰ�����λ����Ҫ��Ա������ǰ�����Ų�������������д�ǼǱ�񣬹��ڲ��лл��','633519211898437500.jpg||633519212427812500.doc','admin','admin','�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 24,'����9-25����֯Ա��ǰ���¼���ѧϰ','2008-6-2 15:36:40','����9-25����֯Ա��ǰ���¼���ѧϰ�����λ����Ҫ��Ա������ǰ�����Ų�������������д�ǼǱ�񣬹��ڲ��лл��','633519211898437500.jpg||633519212427812500.doc','admin','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 25,'���񲿽���֪ͨ��������ע�⣡','2008-6-2 15:36:40','���񲿴�8��1�տ�ʼ�����ٶһ�2007��ı�����Ʊ�������ݣ����λԱ������ת�','633519214789218750.doc','admin','admin','�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 26,'���񲿽���֪ͨ��������ע�⣡','2008-6-2 15:36:40','���񲿴�8��1�տ�ʼ�����ٶһ�2007��ı�����Ʊ�������ݣ����λԱ������ת�','633519214789218750.doc','admin','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 36,'�����ƶ����ճ̰�������ʱ�䵽��(7��28���ҵ��ճ̰��ţ��μӻ)','2009-3-20 17:14:13','�����ƶ����ճ̰�������ʱ�䵽��(7��28���ҵ��ճ̰��ţ��μӻ)','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 37,'�����ƶ����ճ̰�������ʱ�䵽��(7��28���ҵ��ճ̰��ţ��μӻ)','2009-3-20 17:15:13','�����ƶ����ճ̰�������ʱ�䵽��(7��28���ҵ��ճ̰��ţ��μӻ)','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 38,'�����ƶ����ճ̰�������ʱ�䵽��(7��28���ҵ��ճ̰��ţ��μӻ)','2009-3-20 17:15:35','�����ƶ����ճ̰�������ʱ�䵽��(7��28���ҵ��ճ̰��ţ��μӻ)','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 41,'�����µĻ�����Ҫ�μӣ�(���ŵ����ο������������ۻ�)','2009-3-20 18:13:09','�����µĻ�����Ҫ�μӣ�(���ŵ����ο������������ۻ�)','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 42,'�����µĻ�����Ҫ�μӣ�(���ŵ����ο������������ۻ�)','2009-3-20 18:13:09','�����µĻ�����Ҫ�μӣ�(���ŵ����ο������������ۻ�)','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 43,'�����µĻ�����Ҫ�μӣ�(���ŵ����ο������������ۻ�)','2009-3-20 18:13:09','�����µĻ�����Ҫ�μӣ�(���ŵ����ο������������ۻ�)','ϵͳ��Ϣ','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 45,'�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','2009-3-20 18:29:33','�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 46,'�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','2009-3-20 18:29:34','�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 47,'�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','2009-3-20 18:29:34','�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','ϵͳ��Ϣ','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 48,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:29:56','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 49,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:29:56','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 50,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:29:56','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 51,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:30:34','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 52,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:30:34','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 53,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:30:34','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 54,'���Ĺ����Ѿ�����������(admin--��������(2009-3-20))','2009-3-20 18:31:13','���Ĺ����Ѿ�����������(admin--��������(2009-3-20))','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 55,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:32:22','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 56,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:32:22','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 57,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:32:22','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 58,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:34:37','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 59,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:34:37','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 60,'�����µĹ�����Ҫ����(admin--��������(2009-3-20))','2009-3-20 18:34:37','�����µĹ�����Ҫ����(admin--��������(2009-3-20))','ϵͳ��Ϣ','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 61,'�����µ��ļ���Ҫ���գ�(����)','2009-3-20 18:35:42','�����µ��ļ���Ҫ���գ�(����)','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 62,'�����µ��ļ���Ҫ���գ�(����)','2009-3-20 18:35:42','�����µ��ļ���Ҫ���գ�(����)','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 63,'�����µ��ļ���Ҫ���գ�(����)','2009-3-20 18:35:42','�����µ��ļ���Ҫ���գ�(����)','ϵͳ��Ϣ','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[EmailState]) VALUES ( 64,'�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','2009-3-22 10:01:41','�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','ϵͳ��Ϣ','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 65,'���Ĺ����Ѿ�����������(admin--��������(2009-3-20))','2009-3-22 10:03:17','���Ĺ����Ѿ�����������(admin--��������(2009-3-20))','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 67,'�����µĹ�����Ҫ����(admin--��������(2009-3-22))','2009-3-22 10:25:17','�����µĹ�����Ҫ����(admin--��������(2009-3-22))','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 68,'�����µĹ�����Ҫ����(admin--��������(2009-3-22))','2009-3-22 10:25:17','�����µĹ�����Ҫ����(admin--��������(2009-3-22))','ϵͳ��Ϣ','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 70,'�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','2009-3-22 10:34:59','�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 71,'�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','2009-3-22 10:34:59','�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-20))','ϵͳ��Ϣ','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 72,'�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-22))','2009-3-22 10:42:52','�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-22))','ϵͳ��Ϣ','admin','ɾ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 73,'�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-22))','2009-3-22 10:42:52','�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-22))','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 74,'�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-22))','2009-3-22 10:42:52','�����µĹ�����Ҫ����(admin--���ĵǼ�(2009-3-22))','ϵͳ��Ϣ','�Ÿ���','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 75,'�����µĻ�����Ҫ�μӣ�(��˾����������)','2009-3-22 11:01:00','�����µĻ�����Ҫ�μӣ�(��˾����������)','ϵͳ��Ϣ','admin','�Ѷ�')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 76,'�����µĻ�����Ҫ�μӣ�(��˾����������)','2009-3-22 11:01:00','�����µĻ�����Ҫ�μӣ�(��˾����������)','ϵͳ��Ϣ','������','δ��')
INSERT [ERPLanEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 77,'�����µĻ�����Ҫ�μӣ�(��˾����������)','2009-3-22 11:01:00','�����µĻ�����Ҫ�μӣ�(��˾����������)','ϵͳ��Ϣ','�Ÿ���','δ��')

SET IDENTITY_INSERT [ERPLanEmail] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPMeeting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPMeeting]

CREATE TABLE [ERPMeeting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[MeetingTitle] [varchar]  (500) NULL,
[MeetingZhuTi] [varchar]  (5000) NULL,
[MiaoShu] [varchar]  (5000) NULL,
[ChuXiRen] [varchar]  (8000) NULL,
[WangLuoHuiYiShiIP] [varchar]  (50) NULL,
[HuiYiZhuChi] [varchar]  (50) NULL,
[KaiShiTime] [datetime]  NULL DEFAULT (getdate()),
[JieShuTime] [datetime]  NULL DEFAULT (getdate()),
[HuiYiJiYao] [text]  NULL,
[ZhuanXieRen] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[CurentOnline] [varchar]  (8000) NULL)

ALTER TABLE [ERPMeeting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPMeeting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPMeeting] ON

INSERT [ERPMeeting] ([ID],[MeetingTitle],[MeetingZhuTi],[MiaoShu],[ChuXiRen],[WangLuoHuiYiShiIP],[HuiYiZhuChi],[KaiShiTime],[JieShuTime],[HuiYiJiYao],[ZhuanXieRen],[TimeStr]) VALUES ( 1,'���ŵ����β������','��Ҫ�о����µĲ���������ƶ���һ��Ԥ��','��Ҫ���飬ϣ����ʱ�μ�','������,admin,�Ÿ���','192.168.1.11','������','2008-9-14 14:20:00','2008-9-14 15:30:00','�����Ҫ��δд�롣','admin','2008-9-13 9:27:27')
INSERT [ERPMeeting] ([ID],[MeetingTitle],[MeetingZhuTi],[MiaoShu],[ChuXiRen],[WangLuoHuiYiShiIP],[HuiYiZhuChi],[KaiShiTime],[JieShuTime],[ZhuanXieRen],[TimeStr]) VALUES ( 4,'���ŵ����ο������������ۻ�','��̸�����������','��̸����������򣬿�������ת��','admin,������,�Ÿ���','192.168.1.11','admin','2009-3-20 18:00:00','2009-3-20 19:00:00','admin','2009-3-20 18:13:09')
INSERT [ERPMeeting] ([ID],[MeetingTitle],[MeetingZhuTi],[MiaoShu],[ChuXiRen],[WangLuoHuiYiShiIP],[HuiYiZhuChi],[KaiShiTime],[JieShuTime],[HuiYiJiYao],[ZhuanXieRen],[TimeStr]) VALUES ( 5,'��˾����������','��������˾����ȷ����ĸ�������','��������˾����ȷ����ĸ�������','admin,������,�Ÿ���','192.168.1.1','admin','2009-3-22 10:00:00','2010-4-1 12:00:00','��������˾����ȷ����ĸ�������&nbsp;&nbsp; һֱҪ��һ�ꡣ����������������','admin','2009-3-22 11:01:00')

SET IDENTITY_INSERT [ERPMeeting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPMoBan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPMoBan]

CREATE TABLE [ERPMoBan] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[ContentStr] [text]  NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[IFShare] [varchar]  (50) NULL)

ALTER TABLE [ERPMoBan] WITH NOCHECK ADD  CONSTRAINT [PK_ERPMoBan] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPMoBan] ON

INSERT [ERPMoBan] ([ID],[TitleStr],[ContentStr],[TimeStr],[UserName],[IFShare]) VALUES ( 1,'�����ڲ�֪ͨͨ��ģ��(8��10��ǰʹ��)','<P align=center><FONT color=#ff0033><STRONG><BR>20080910�ž���--ʹ�ö���������������Ϣ������<BR><HR></STRONG></FONT></P>�ٶȣ�2000��1�´����ڱ����йش壬��ȫ������������վ�����������������档 <P>2000��1��1�գ���˾��ʼ������ꡢ���´�������Ȼع��������˰ٶȡ�����֮�����ٶȱ㽫�������Ǹ���ݵػ�ȡ��Ϣ����Ϊ�Լ���ʹ������Ϊ��ʼ����һ����и��Ŭ���ܶ���</P><P>2000��5�£��ٶ��״�Ϊ�Ż���վ������ȶ����ṩ������������֮��Ѹ��ռ���й����������г�����Ϊ����Ҫ�����������ṩ�̡�2001��8�£�����Baidu.com��������Beta�棬�Ӻ�̨�����ṩ��תΪ�����ڶ����ṩ�������񣬲������й��״��˾���������ҵģʽ��2001��10��22����ʽ����Baidu�������档</P><P>2003��12�£������Ե��Ƴ����ɣ�������������֮�Ⱥӡ�</P><P>2005��8��5�գ��ٶ���������˹������У���Ϊ2005��ȫ���ʱ��г�����Ϊ����עĿ�����й�˾��</P><P>2008��1��23�գ��ٶ��ձ���˾��ʽ��Ӫ���ٶ�ȫ���������ʻ�ս�ԡ� </P><P>�ٶȼ��ţ������Ǹ���ݵػ�ȡ��Ϣ����������ǻ��໥��ͨ�뽻�ڣ��������������ǻ۵ķ�չ��Ҳ�����ڴٽ����ǵ�ƽ�ȣ��ƶ����Ľ�����</P><P align=right>�������ŷ���---��Ϣ����</P><P align=right>2008-9-20</P>','2008-7-28 17:55:34','admin','��')
INSERT [ERPMoBan] ([ID],[TitleStr],[ContentStr],[TimeStr],[UserName],[IFShare]) VALUES ( 2,'�ٶ�--ȫ������������վ������������������','�ٶȣ�2000��1�´����ڱ����йش壬��ȫ������������վ�����������������档&nbsp; <P>2000��1��1�գ���˾��ʼ������ꡢ���´�������Ȼع��������˰ٶȡ�����֮�����ٶȱ㽫�������Ǹ���ݵػ�ȡ��Ϣ����Ϊ�Լ���ʹ������Ϊ��ʼ����һ����и��Ŭ���ܶ���</P><P>2000��5�£��ٶ��״�Ϊ�Ż���վ������ȶ����ṩ������������֮��Ѹ��ռ���й����������г�����Ϊ����Ҫ�����������ṩ�̡�2001��8�£�����Baidu.com��������Beta�棬�Ӻ�̨�����ṩ��תΪ�����ڶ����ṩ�������񣬲������й��״��˾���������ҵģʽ��2001��10��22����ʽ����Baidu�������档</P><P>2003��12�£������Ե��Ƴ����ɣ�������������֮�Ⱥӡ�</P><P>2005��8��5�գ��ٶ���������˹������У���Ϊ2005��ȫ���ʱ��г�����Ϊ����עĿ�����й�˾��</P><P>2008��1��23�գ��ٶ��ձ���˾��ʽ��Ӫ���ٶ�ȫ���������ʻ�ս�ԡ� </P><P>�ٶȼ��ţ������Ǹ���ݵػ�ȡ��Ϣ����������ǻ��໥��ͨ�뽻�ڣ��������������ǻ۵ķ�չ��Ҳ�����ڴٽ����ǵ�ƽ�ȣ��ƶ����Ľ�����</P><P align=right>������Ϣ�����貿---��Ϣ����</P>','2008-7-28 17:59:11','admin','��')

SET IDENTITY_INSERT [ERPMoBan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPMobile]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPMobile]

CREATE TABLE [ERPMobile] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FaSongUser] [varchar]  (50) NULL,
[ToUserList] [varchar]  (8000) NULL,
[ContentStr] [varchar]  (8000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPMobile] WITH NOCHECK ADD  CONSTRAINT [PK_ERPMobile] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPMobile] ON

INSERT [ERPMobile] ([ID],[FaSongUser],[ToUserList],[ContentStr],[TimeStr]) VALUES ( 1,'admin','13696432490','�뷢������������кŸ��ң�лл��','2008-7-21 12:51:34')

SET IDENTITY_INSERT [ERPMobile] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPNetEmail]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPNetEmail]

CREATE TABLE [ERPNetEmail] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[EmailTitle] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[EmailContent] [text]  NULL,
[FuJian] [varchar]  (2000) NULL,
[FromUser] [varchar]  (50) NULL,
[ToUser] [varchar]  (50) NULL,
[EmailState] [varchar]  (50) NULL DEFAULT ('δ��'))

ALTER TABLE [ERPNetEmail] WITH NOCHECK ADD  CONSTRAINT [PK_ERPNetEmail] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPNetEmail] ON

INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 40,'������֯�����ݹ�˾�Ľ���','2008-7-19 8:49:08','������֯�����ݹ�˾�Ľ��飬�ܺã���Ҫ���������Ļ�����','admin','zwl168918@126.com','�ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 41,'��ϲ�������������ѵ���������ʽ��ͨ','2008-7-19 1:03:05','�𾴵�myerpsystem@sina.com?


��ӭʹ��������Ϊ���ṩ����ѵ����ʼ�ϵͳ?
������Ϊ���ṩ����ѵ������䣺myerpsystem@sina.com���Ѿ���ͨ�����������̿�ʼ��������������ͻ���յ����ʼ�?

���ݡ���������������ʹ��Э�顷�����ǻ������90��δͨ���κ���ʽ��WEB/POP����¼������������ȡ���ᴦ��?
���䱻����������е����ʼ���ͨѶ¼���������ö�������գ��Ҳ��ɻָ��������ڼ䣨?��δ��¼����ĵ�91�졫?80�죩�����͵���������ʼ������˻���������?
һ������������䱻���ᣬ����ͨ��WEB��¼��ͻ���POP���ŵķ�ʽ�������䣬���������䵱���ָ�����ʹ�á���ע�⣬������������޷�ͨ���ͻ���SMTP���ŵķ�ʽ����?
�������180��δ��¼���䣬�����ʺŽ���ɾ�������Ա�������ע��ʹ��?
�ڴˣ�����������ʾ����������?0���¼һ������������䣬�Ա�ʹ�䴦������ʹ��״̬?


�����ʹ��Outlook��Foxmail�ȿͻ�����������ʼ�����ע�����µ��ʼ�����������?
���ţ�pop3����������pop.sina.com 
���ţ�smtp����������smtp.sina.com 
��ѡ��smtp������Ҫ�������֤ѡ��?



����������书��?
     
����ռ䡢����?

�����������Ϊ���ṩ�˸�?G?000�ף�����ѿռ䣬�����Է�?5�״󸽼�?
         
�ʼ�?

ϵͳ�Ѿ������ṩ�������ʼ��У�δ���ʼ����У����ռ��С��ѷ����ʼ����У����ݸ�С���ɾ���ʼ����У��������ʼ����У����������Ը�����Ҫ�����µ��ʼ��У�����Ϊ�˽��ض����ߵ��������������ż��ֿ��������Խ���һ�����������ߡ����ʼ���?
         
�ʼ����� 

�����Զ��յ����ʼ������Զ�ɸѡ�����������ʼ����˵���Ϊ������ʼ�ָ��һ���ʼ��С����磺�����з��ŵ�ַ������sina.com�������Ŷ��Զ���ŵ����������ѡ��ʼ����С�������ͨ����������ġ����á����ӣ��ٵ�ѡ�����ౣ�桱�������������͡���������ѡ������ʼ����?        
  
�Զ��ظ� 

������������������ԭ���޷���ʱ�������䣬�����ϣ������ʽ����֮ǰ��֪ͨ�Է�������Ϥ������Ը��ݾ����������дһ���Զ��ظ����ż��������������������յ�һ���ʼ�ʱ�����Զ���������׼���õ��ż��������˻����ӳ������ܴ�������ᡣ����ͨ����������ġ����á����ӣ��ٵ�ѡ���Զ��ظ���ѡ������ʼ����?
         
�ʼ����� 

�����һʱ���ڶ���ʼ����Ҳ������ض����ʼ���ֻҪ��żǵüļ��˵�ַ���ʼ�������ʼ�����������һЩ�֣��Ϳ���ͨ���ʼ���ѯ����������������ʼ�?
         
ͨѶ?

�������������ϵ�������ʼ���ַ�����ͨѶ¼���Ժ�Ϳ��Է���������Ƿ����ʼ������������ʼ���ַ�����⣬��ͨѶ¼�ﻹ�з��鹦�ܣ�����Ϊ����ͬ�����Ե����ѽ���һ��С�顣���磬���Խ����е�ͬ�¹���һ��������ͬ�¡���С�飬����һ����Ҫ��ͬ���ǹ����֮����ʱ������ֱ�������С�鷢�ţ��������ظ��������鷳?
         
��ʼд�ʼ� 
        ���ڣ����������ġ�д�š���ť����ʼ׫д���������ĵ�һ����������ʼ��ɣ�֧��html�ʼ��༭Ŷ�� 
         
������VIP���ĵ����ʼ���������ѡ������VIP����?

        ����VIP������Ϊ�������Ƶĳ�ǿ�����ʼ�ϵͳ����ʹ�ö����������и��ٿ�ݣ�ǿ�������ɱ���ͷ������ʼ����ܱ�֤���ĵ���ͨ�Ż�����ȫ�ȶ�?

        �ܷ�?0M���󸽼�������G���洢�ռ䣬�������ʼ��շ��������˳��?

        ��������˫�����ʼ����ݣ��������ʼ�������ʧ��

        ���еļ��ܵ�¼ϵͳ�����������ʼ����ݺ���������ڿ���ȡ?

        ���ṩǿ���ͨѶ¼���ܡ��ʼ���ɱ�������������ѡ��ʼ����ˣ��ʼ�ת������๦������Ŀ��Ͼ��?

        ��Ҫ��ԥ������˴������������飺http://vip.sina.com.cn/register/reg_vipmail.php 
        
        ���˽����VIP������Ϣ�������˴�?http://vip.sina.com.cn/
     
��������κ����ʣ��������������������� http://mail.sina.com.cn/help2/serverstage.html
     
��л������������֧��?



-------------------------------------------------------------------
SINA.com.cn ��������?                           You are the One
http://www.sina.com.cn/������������������  һ�����㿪?','��sinamail@sina.com��','admin','�Ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 42,'�ʼ�������','2008-7-19 9:17:52','����ʲô���Ǻõ��ʼ��������أ�','633520558498906250.jpg','admin','myerpsystem@sina.com','�ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 43,'��ѷ������������Ϣ','2008-7-19 11:06:42','��ã�������� http://www.softmama.com ����ƹ�ƽ̨���Ϊ���ṩ��������ҵ����Ѷ����ѷ������������Ϣ����ѷ��������Ʒ��
 
 
���д��ţ�����£�','����ǿ��zowadada@126.com��','admin','�Ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 44,'�����²���֪ͨ�����񲿲�������','2008-7-21 12:11:49','�����²���֪ͨ�����񲿲������Σ������Ҫ����������ǰ�������롣','admin','zwl168918@126.com','�ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 45,'�����²���֪ͨ�����񲿲�������','2008-7-21 12:11:49','�����²���֪ͨ�����񲿲������Σ������Ҫ����������ǰ�������롣2008-7-21 12:11:49','MailAttachments/633519217371718750.doc','zwl168918@126.com��zwl168918@126.com��','admin','�Ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[FuJian],[FromUser],[ToUser],[EmailState]) VALUES ( 46,'�г�������d�ڴ���������!','2008-7-31 15:31:39','MailAttachments/633531183362500000��ʽ8.jpg','sijfshfshu��otyc@chinaip.tv��','admin','�Ѷ�')
INSERT [ERPNetEmail] ([ID],[EmailTitle],[TimeStr],[EmailContent],[FromUser],[ToUser],[EmailState]) VALUES ( 63,'zwl168918��ã����Ǹ���׼����','2008-9-3 1:56:08','zwl168918��ã��������ǷѾ��Ļ��ҵ���һ����Ҳ����Ҳ�������ǡ������������ǵ�Ŀ����Ǵ����һ�����������������õ���վ(��Ҫ��֣����Ƕ�����֪һ��������Ҫ�ҵľ�����Ʒ��Ȥ����~)���죬����������û���������롣����һ�������ֱ���һ���ִ�����������ܴ������������Ѻã���һ�£���ᰮ������(�����Ѿ��кܶ�����˼�����ˣ���Ҷ��ڵ���~~)





&raquo;�����������






����������Ӳ��ɵ㣬�븴�����е�ַ���������

http://www.mpspaces.cn/index2.html


��õĵ������� http://www.126.com','liyanwang15303��liyanwang15303@tom.com��','admin','�Ѷ�')

SET IDENTITY_INSERT [ERPNetEmail] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPRedHead]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPRedHead]

CREATE TABLE [ERPRedHead] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FileName] [varchar]  (200) NULL,
[FilePath] [varchar]  (100) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPRedHead] WITH NOCHECK ADD  CONSTRAINT [PK_ERPRedHead] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPRedHead] ON

INSERT [ERPRedHead] ([ID],[FileName],[FilePath],[UserName],[TimeStr]) VALUES ( 5,'����������ģ��','633733195766250000.doc','admin','2009-3-22 11:52:56')
INSERT [ERPRedHead] ([ID],[FileName],[FilePath],[UserName],[TimeStr]) VALUES ( 6,'��������ģ��','633733195885937500.doc','admin','2009-3-22 11:53:08')

SET IDENTITY_INSERT [ERPRedHead] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPRiZhi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPRiZhi]

CREATE TABLE [ERPRiZhi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[DoSomething] [varchar]  (1000) NULL,
[IpStr] [varchar]  (50) NULL)

ALTER TABLE [ERPRiZhi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPRiZhi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPRiZhi] ON

INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1304,'admin','2009-3-22 11:44:16','�û�ɾ����ͷ�ļ�','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1305,'admin','2009-3-22 11:52:56','�û���Ӻ�ͷ�ļ�(����������ģ��)','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1306,'admin','2009-3-22 11:53:08','�û���Ӻ�ͷ�ļ�(��������ģ��)','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1307,'admin','2009-3-22 11:54:49','�鿴�ļ���Ϣ(���뿨.JPG)','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1308,'admin','2009-3-22 12:22:27','�û���½ϵͳ','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1309,'admin','2009-3-22 12:25:11','�û��޸Ľ�ɫ��Ϣ(��������Ա)','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1310,'admin','2009-3-22 12:25:18','�û���½ϵͳ','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1311,'admin','2009-3-22 12:35:55','�û���½ϵͳ','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1312,'admin','2009-3-22 12:38:17','�û���½ϵͳ','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1313,'admin','2009-3-22 12:38:23','�û���½ϵͳ','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1314,'admin','2009-3-22 12:45:20','�û���½ϵͳ','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1315,'admin','2009-3-22 12:51:15','�û���½ϵͳ','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1316,'admin','2009-3-22 12:52:06','�û���½ϵͳ','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1317,'admin','2009-3-22 16:19:21','�û���½ϵͳ','127.0.0.1')
INSERT [ERPRiZhi] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr]) VALUES ( 1318,'admin','2009-3-22 16:19:44','�û���½ϵͳ','127.0.0.1')

SET IDENTITY_INSERT [ERPRiZhi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSerils]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSerils]

CREATE TABLE [ERPSerils] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[SerilsStr] [varchar]  (200) NULL,
[DateStr] [varchar]  (200) NULL)

ALTER TABLE [ERPSerils] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSerils] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSerils] ON

INSERT [ERPSerils] ([ID],[SerilsStr],[DateStr]) VALUES ( 1,'6C41160D8DA54C25F056B4048F834BD29A9C29503DD8003E','90333ED94DDE2C4A3ACF4BC21571AD1E')

SET IDENTITY_INSERT [ERPSerils] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPShenPi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPShenPi]

CREATE TABLE [ERPShenPi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[ContentStr] [varchar]  (5000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL)

ALTER TABLE [ERPShenPi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPShenPi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPShenPi] ON

INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 1,'ͬ����ļ���д����','2008-7-28 18:11:19','admin')
INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 2,'��ͬ�⣬���᰸����ȡ��������������','2008-7-28 18:12:13','admin')
INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 3,'��ת�����񲿴��������ġ�','2008-7-28 18:12:45','admin')
INSERT [ERPShenPi] ([ID],[ContentStr],[TimeStr],[UserName]) VALUES ( 4,'��ת����Ϣ���������ת�ش���','2008-7-28 18:14:28','admin')

SET IDENTITY_INSERT [ERPShenPi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPSystemSetting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPSystemSetting]

CREATE TABLE [ERPSystemSetting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[FileType] [varchar]  (8000) NULL)

ALTER TABLE [ERPSystemSetting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPSystemSetting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPSystemSetting] ON

INSERT [ERPSystemSetting] ([ID],[FileType]) VALUES ( 1,'|doc||jpg||xls||cad||rar||zip||wps||wps||ppt||txt||gif||mdb|')

SET IDENTITY_INSERT [ERPSystemSetting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTalkInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTalkInfo]

CREATE TABLE [ERPTalkInfo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TalkRoomName] [varchar]  (500) NULL,
[UserName] [varchar]  (50) NULL,
[ToUser] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[ContentStr] [varchar]  (8000) NULL)

ALTER TABLE [ERPTalkInfo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTalkInfo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTalkInfo] ON

INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 1,'��͹���','admin','������','2008-9-12 11:41:59','��Һð���')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 2,'��͹���','admin','������','2008-9-12 11:42:23','��Ҫ�ʺ�')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 3,'��͹���','admin','������','2008-9-12 11:43:33','��ô�˰�')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 4,'��͹���','admin','admin','2008-9-12 11:44:25','ʲôʱ�򰡣�')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 5,'��͹���','admin','������','2008-9-12 11:44:54','�������µ�')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 6,'��͹���','admin','������','2008-9-12 11:45:31','����һ�°�')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 7,'��͹���','admin','������','2008-9-12 12:00:53','����ʲôʱ�����أ�')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 8,'��͹���','admin','admin','2008-9-12 12:01:04','���ڵ�ʱ��������')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 9,'��͹���','admin','������','2008-9-12 12:03:28','��ɶ��')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 10,'��͹���','������','admin','2008-9-12 12:03:45','����ɶ����ˬ��')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 11,'��͹���','admin','������','2008-9-12 12:04:00','��Һ�')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 12,'��͹���','������','������','2008-9-12 12:04:26','No')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 13,'��͹���','������','������','2008-9-12 12:04:53','�Լ����Լ�˵')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[ToUser],[TimeStr],[ContentStr]) VALUES ( 14,'���ѽ��','admin','������','2008-9-13 11:15:45','��Һð������������ġ������ա�')
INSERT [ERPTalkInfo] ([ID],[TalkRoomName],[UserName],[TimeStr],[ContentStr]) VALUES ( 15,'���ѽ��','admin','2009-2-10 9:19:02','�����ˣ���Һð�')

SET IDENTITY_INSERT [ERPTalkInfo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTalkOnlineUser]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTalkOnlineUser]

CREATE TABLE [ERPTalkOnlineUser] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TalkRoomName] [varchar]  (500) NULL,
[LoginUser] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPTalkOnlineUser] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTalkOnlineUser] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTalkOnlineUser] ON

INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 1,'��͹���','admin','2009-3-22 11:40:31')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 2,'��������','admin','2009-2-13 9:03:44')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 3,'������','������','2008-9-12 12:02:42')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 4,'��͹���','������','2008-9-12 12:06:06')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 5,'���й�ͨ','admin','2008-9-12 12:06:49')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 6,'���۶��鹵ͨ','admin','2008-9-12 12:07:52')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 7,'�������','admin','2009-3-22 11:40:28')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 8,'�쵼Э��','admin','2009-3-22 11:40:18')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 9,'���ѽ��','admin','2009-3-22 11:40:22')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 10,'������','admin','2009-3-22 11:40:25')
INSERT [ERPTalkOnlineUser] ([ID],[TalkRoomName],[LoginUser],[TimeStr]) VALUES ( 11,'��������ͨ','admin','2009-2-13 9:03:41')

SET IDENTITY_INSERT [ERPTalkOnlineUser] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTalkSetting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTalkSetting]

CREATE TABLE [ERPTalkSetting] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TalkName] [varchar]  (5000) NULL)

ALTER TABLE [ERPTalkSetting] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTalkSetting] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTalkSetting] ON

INSERT [ERPTalkSetting] ([ID],[TalkName]) VALUES ( 1,'���ѽ��|������|�������|��͹���|���й�ͨ|��������|�����ˮ|��������ͨ|����һ�鹵ͨ|���۶��鹵ͨ|������Ա��ͨ|�쵼Э��')

SET IDENTITY_INSERT [ERPTalkSetting] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTelFile]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTelFile]

CREATE TABLE [ERPTelFile] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[FromUser] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[FileType] [varchar]  (50) NULL,
[ToUser] [varchar]  (8000) NULL,
[YiJieShouRen] [varchar]  (8000) NULL,
[ContentStr] [text]  NULL,
[FuJianStr] [varchar]  (1000) NULL,
[ChuanYueYiJian] [text]  NULL)

ALTER TABLE [ERPTelFile] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTelFile] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTelFile] ON

INSERT [ERPTelFile] ([ID],[TitleStr],[FromUser],[TimeStr],[FileType],[ToUser],[YiJieShouRen],[ContentStr],[FuJianStr],[ChuanYueYiJian]) VALUES ( 1,'�����ڲ���������','admin','2008-9-10 15:14:37','��������','������,�Ÿ���,admin','������,admin','�ٶȣ�2000��1�´����ڱ����йش壬��ȫ������������վ�����������������档 <P>2000��1��1�գ���˾��ʼ������ꡢ���´�������Ȼع��������˰ٶȡ�����֮�����ٶȱ㽫�������Ǹ���ݵػ�ȡ��Ϣ����Ϊ�Լ���ʹ������Ϊ��ʼ����һ����и��Ŭ���ܶ���</P><P>2000��5�£��ٶ��״�Ϊ�Ż���վ������ȶ����ṩ������������֮��Ѹ��ռ���й����������г�����Ϊ����Ҫ�����������ṩ�̡�2001��8�£�����Baidu.com��������Beta�棬�Ӻ�̨�����ṩ��תΪ�����ڶ����ṩ�������񣬲������й��״��˾���������ҵģʽ��2001��10��22����ʽ����Baidu�������档</P><P>2003��12�£������Ե��Ƴ����ɣ�������������֮�Ⱥӡ�</P><P>2005��8��5�գ��ٶ���������˹������У���Ϊ2005��ȫ���ʱ��г�����Ϊ����עĿ�����й�˾��</P><P>2008��1��23�գ��ٶ��ձ���˾��ʽ��Ӫ���ٶ�ȫ���������ʻ�ս�ԡ� </P><P>�ٶȼ��ţ������Ǹ���ݵػ�ȡ��Ϣ����������ǻ��໥��ͨ�뽻�ڣ��������������ǻ۵ķ�չ��Ҳ�����ڴٽ����ǵ�ƽ�ȣ��ƶ����Ľ�����</P>','633566563715781250.doc|633566563787343750.doc|','<font color=#001EFF>admin(2008-9-10 15:40:13)��</font>���²�����Ҫ��������<hr height=1px><font color=#001EFF>admin(2008-9-10 15:40:32)��</font>��������ǩ�յ��������<hr height=1px><font color=#001EFF>������(2008-9-10 15:47:11)��</font>�ܺã���ǿ��<hr height=1px>')

SET IDENTITY_INSERT [ERPTelFile] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPTongXunLu]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPTongXunLu]

CREATE TABLE [ERPTongXunLu] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[IfShare] [varchar]  (50) NULL,
[TypeStr] [varchar]  (50) NULL,
[FenZu] [varchar]  (50) NULL,
[NameStr] [varchar]  (50) NULL,
[Sex] [varchar]  (50) NULL,
[BirthDay] [varchar]  (50) NULL,
[NiCheng] [varchar]  (50) NULL,
[ZhiWu] [varchar]  (50) NULL,
[PeiOu] [varchar]  (500) NULL,
[ZiNv] [varchar]  (500) NULL,
[DanWeiMingCheng] [varchar]  (500) NULL,
[DanWeiDiZhi] [varchar]  (500) NULL,
[DanWeiYouBian] [varchar]  (50) NULL,
[DanWieDianHua] [varchar]  (50) NULL,
[DanWeiChuanZhen] [varchar]  (50) NULL,
[JiaTingZhuZhi] [varchar]  (500) NULL,
[JiaTingYouBian] [varchar]  (50) NULL,
[JiaTingDianHua] [varchar]  (50) NULL,
[ShouJi] [varchar]  (50) NULL,
[XiaoLingTong] [varchar]  (50) NULL,
[Email] [varchar]  (50) NULL,
[QQ] [varchar]  (50) NULL,
[Msn] [varchar]  (50) NULL,
[BackInfo] [text]  NULL)

ALTER TABLE [ERPTongXunLu] WITH NOCHECK ADD  CONSTRAINT [PK_ERPTongXunLu] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPTongXunLu] ON

INSERT [ERPTongXunLu] ([ID],[UserName],[IfShare],[TypeStr],[FenZu],[NameStr],[Sex],[BirthDay],[NiCheng],[ZhiWu],[PeiOu],[ZiNv],[DanWeiMingCheng],[DanWeiDiZhi],[DanWeiYouBian],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingZhuZhi],[JiaTingYouBian],[JiaTingDianHua],[ShouJi],[XiaoLingTong],[Email],[QQ],[Msn],[BackInfo]) VALUES ( 1,'admin','��','����ͨѶ��','�ͻ�','��˼ǿ','��','1980-7-2','Сǿ','�ܾ���','����ɯ��','��������','�й�����','�����山���𿪴��1133��','400000','023-67466469','023-67466469-8088','�����山���𿪴��1135��','400001','023-67466468','13696432490','023-67466467','zwl168918@126.com','9618195','zhangsansa@hotmail.com','���˺ܺú�ǿ��')
INSERT [ERPTongXunLu] ([ID],[UserName],[IfShare],[TypeStr],[FenZu],[NameStr],[Sex],[BirthDay],[NiCheng],[ZhiWu],[PeiOu],[ZiNv],[DanWeiMingCheng],[DanWeiDiZhi],[DanWeiYouBian],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingZhuZhi],[JiaTingYouBian],[JiaTingDianHua],[ShouJi],[XiaoLingTong],[Email],[QQ],[Msn],[BackInfo]) VALUES ( 2,'admin','��','����ͨѶ��','ͬѧ','������','Ů','1972-3-6','����','�ܲ�','������','��ս��','�������й�Ͷ�ʹ�˾','����·��������������','400008','023-88881888','023-88881886','����·������������������','400007','023-88888688','13696432490','023-67466469','zwl168918@126.com','9618195','zwl168918@hotmail.com','�����˼��ڴ˴������Ĳ������ס�')
INSERT [ERPTongXunLu] ([ID],[UserName],[IfShare],[TypeStr],[FenZu],[NameStr],[Sex],[BirthDay],[NiCheng],[ZhiWu],[PeiOu],[ZiNv],[DanWeiMingCheng],[DanWeiDiZhi],[DanWeiYouBian],[DanWieDianHua],[DanWeiChuanZhen],[JiaTingZhuZhi],[JiaTingYouBian],[JiaTingDianHua],[ShouJi],[XiaoLingTong],[Email],[QQ],[Msn],[BackInfo]) VALUES ( 3,'admin','��','����ͨѶ��','ս��','����','��','1970-3-26','����','�ܾ���','������','��ս��','�������й�Ͷ�ʹ�˾','����·��������������','400008','023-88881888','023-88881886','����·������������������','400007','023-88888688','13696432490','023-67466469','zwl168918@126.com','9618195','zwl168918@hotmail.com','�����˼��ڴ˴������Ĳ������ס�')

SET IDENTITY_INSERT [ERPTongXunLu] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPUser]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPUser]

CREATE TABLE [ERPUser] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[UserPwd] [varchar]  (200) NULL,
[TrueName] [varchar]  (50) NULL,
[Serils] [varchar]  (50) NULL,
[Department] [varchar]  (50) NULL,
[JiaoSe] [varchar]  (50) NULL,
[ActiveTime] [datetime]  NULL,
[ZhiWei] [varchar]  (50) NULL,
[ZaiGang] [varchar]  (50) NULL,
[EmailStr] [varchar]  (50) NULL,
[IfLogin] [varchar]  (50) NULL,
[Sex] [varchar]  (50) NULL,
[BackInfo] [varchar]  (8000) NULL,
[BirthDay] [varchar]  (50) NULL,
[MingZu] [varchar]  (50) NULL,
[SFZSerils] [varchar]  (50) NULL,
[HunYing] [varchar]  (50) NULL,
[ZhengZhiMianMao] [varchar]  (50) NULL,
[JiGuan] [varchar]  (50) NULL,
[HuKou] [varchar]  (500) NULL,
[XueLi] [varchar]  (50) NULL,
[ZhiCheng] [varchar]  (50) NULL,
[BiYeYuanXiao] [varchar]  (50) NULL,
[ZhuanYe] [varchar]  (50) NULL,
[CanJiaGongZuoTime] [varchar]  (50) NULL,
[JiaRuBenDanWeiTime] [varchar]  (50) NULL,
[JiaTingDianHua] [varchar]  (50) NULL,
[JiaTingAddress] [varchar]  (500) NULL,
[GangWeiBianDong] [text]  NULL,
[JiaoYueBeiJing] [text]  NULL,
[GongZuoJianLi] [text]  NULL,
[SheHuiGuanXi] [text]  NULL,
[JiangChengJiLu] [text]  NULL,
[ZhiWuQingKuang] [text]  NULL,
[PeiXunJiLu] [text]  NULL,
[DanBaoJiLu] [text]  NULL,
[NaoDongHeTong] [text]  NULL,
[SheBaoJiaoNa] [text]  NULL,
[TiJianJiLu] [text]  NULL,
[BeiZhuStr] [text]  NULL,
[FuJian] [varchar]  (5000) NULL,
[POP3UserName] [varchar]  (50) NULL,
[POP3UserPwd] [varchar]  (50) NULL,
[POP3Server] [varchar]  (50) NULL,
[POP3Port] [varchar]  (50) NULL,
[SMTPUserName] [varchar]  (50) NULL,
[SMTPUserPwd] [varchar]  (50) NULL,
[SMTPServer] [varchar]  (50) NULL,
[SMTPFromEmail] [varchar]  (50) NULL,
[TiXingTime] [varchar]  (50) NULL DEFAULT (30),
[IfTiXing] [varchar]  (50) NULL DEFAULT ('��'))

ALTER TABLE [ERPUser] WITH NOCHECK ADD  CONSTRAINT [PK_ERPUser] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPUser] ON

INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[EmailStr],[IfLogin],[Sex],[POP3UserName],[POP3UserPwd],[POP3Server],[POP3Port],[SMTPUserName],[SMTPUserPwd],[SMTPServer],[SMTPFromEmail],[TiXingTime],[IfTiXing]) VALUES ( 1,'admin','B5C32B00080A8967','��С��','KF008','������','��������Ա','2009-3-22 16:27:47','����','��','zwl168918@126.com','��','��','zwl168918','test','pop3.126.com','110','zwl168918','test','smtp.126.com','zwl168918@126.com','60','��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[EmailStr],[IfLogin],[Sex],[BackInfo],[BirthDay],[MingZu],[SFZSerils],[HunYing],[ZhengZhiMianMao],[JiGuan],[HuKou],[XueLi],[ZhiCheng],[BiYeYuanXiao],[ZhuanYe],[CanJiaGongZuoTime],[JiaRuBenDanWeiTime],[JiaTingDianHua],[JiaTingAddress],[GangWeiBianDong],[JiaoYueBeiJing],[GongZuoJianLi],[SheHuiGuanXi],[JiangChengJiLu],[ZhiWuQingKuang],[PeiXunJiLu],[DanBaoJiLu],[NaoDongHeTong],[SheBaoJiaoNa],[TiJianJiLu],[BeiZhuStr],[FuJian],[TiXingTime],[IfTiXing]) VALUES ( 2,'�Ÿ���','F3F4DAC321F39044','�Ÿ���','KF001','������','��������Ա,һ�����Ա','2009-3-20 10:49:14','����','��','zhangfugui@126.com','��','��','��������ܺã�������ȥ����','1980-7-24','��','342401198025648560','δ��','��Ա','��������','�������Ǵ�Ƶ��ۺϻ���','��ʿ','�ܹ���ʦ','�����ѧ','�������ѧ�뼼��','2005-6-29','2008-7-1','023-64676469','��ͥ��ϸסַ','��λ�䶯���','��������','��������','����ϵ','���ͼ�¼','ְ�����','��ѵ��¼','������¼','�Ͷ���ͬǩ�����','�籣�������','����¼','�� ע','633518025940937500.jpg|633518025940937500.jpg|','30','��')
INSERT [ERPUser] ([ID],[UserName],[UserPwd],[TrueName],[Serils],[Department],[JiaoSe],[ActiveTime],[ZhiWei],[ZaiGang],[EmailStr],[IfLogin],[Sex],[FuJian],[TiXingTime],[IfTiXing]) VALUES ( 18,'������','F3F4DAC321F39044','������','0023','����','һ�����Ա','2009-3-20 11:01:13','����','��','wang@126.com','��','Ů','633560539256718750.jpg|633560539482968750.doc','30','��')

SET IDENTITY_INSERT [ERPUser] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPUserDesk]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPUserDesk]

CREATE TABLE [ERPUserDesk] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[ModelName] [varchar]  (50) NULL,
[LookNum] [int]  NULL DEFAULT (5))

ALTER TABLE [ERPUserDesk] WITH NOCHECK ADD  CONSTRAINT [PK_ERPUserDesk] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPUserDesk] ON

INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 103,'������','�ڲ��ʼ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 104,'������','Internet�ʼ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 105,'������','�ֻ�����',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 106,'������','��λ����֪ͨ',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 107,'������','���Ź���֪ͨ',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 108,'������','ͶƱ',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 109,'������','�ճ̰���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 110,'������','������־',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 111,'������','����ͨѶ��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 112,'������','����ͨѶ��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 113,'������','����ͨѶ��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 114,'������','�ҵĻ���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 115,'������','�ҵļƻ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 116,'������','�����ļ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 117,'������','�����ļ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 118,'������','�ҵ�Ӳ��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 119,'������','����Ӳ��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 120,'������','�����ļ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 128,'admin','���칤��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 129,'admin','�ҵĹ���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 130,'admin','�ڲ��ʼ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 131,'admin','��λ����֪ͨ',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 132,'admin','���Ź���֪ͨ',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 133,'admin','�ճ̰���',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 135,'admin','�ֻ�����',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 136,'admin','ͶƱ',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 137,'admin','������־',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 138,'admin','����ͨѶ��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 139,'admin','����ͨѶ��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 140,'admin','����ͨѶ��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 142,'admin','�ҵļƻ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 143,'admin','�����ļ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 144,'admin','�����ļ�',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 145,'admin','�ҵ�Ӳ��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 146,'admin','����Ӳ��',5)
INSERT [ERPUserDesk] ([ID],[UserName],[ModelName],[LookNum]) VALUES ( 147,'admin','�����ļ�',5)

SET IDENTITY_INSERT [ERPUserDesk] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPVote]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPVote]

CREATE TABLE [ERPVote] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[UserName] [varchar]  (50) NULL,
[ContentStr] [varchar]  (8000) NULL,
[ScoreStr] [varchar]  (800) NULL,
[TouPiaoRenList] [varchar]  (8000) NULL DEFAULT (''))

ALTER TABLE [ERPVote] WITH NOCHECK ADD  CONSTRAINT [PK_ERPVote] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPVote] ON

INSERT [ERPVote] ([ID],[TitleStr],[TimeStr],[UserName],[ContentStr],[ScoreStr]) VALUES ( 1,'����ڵ�ʲô�ط�ȥ�����أ����ҷ������','2008-7-21 16:18:47','admin','����|����|��ɽ|�������|����|����','3|2|3|4|5|7')

SET IDENTITY_INSERT [ERPVote] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkFlow]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkFlow]

CREATE TABLE [ERPWorkFlow] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkFlowName] [varchar]  (50) NULL,
[FormName] [varchar]  (50) NULL,
[UserList] [varchar]  (8000) NULL,
[GuiDangType] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[JianJie] [varchar]  (2000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPWorkFlow] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkFlow] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkFlow] ON

INSERT [ERPWorkFlow] ([ID],[WorkFlowName],[FormName],[GuiDangType],[UserName],[JianJie],[TimeStr]) VALUES ( 7,'��������','���ĵǼ�','���Ĺ���','admin','���ĵǼ�ʱ���ô����̡�','2009-3-22 10:27:47')
INSERT [ERPWorkFlow] ([ID],[WorkFlowName],[FormName],[GuiDangType],[UserName],[JianJie],[TimeStr]) VALUES ( 8,'���ĵǼ�','���ĵǼ�','���Ĺ���','admin','���ĵǼ�ʱ���ô����̡�','2009-3-22 10:27:42')

SET IDENTITY_INSERT [ERPWorkFlow] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkFlowJieDian]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkFlowJieDian]

CREATE TABLE [ERPWorkFlowJieDian] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkFlowID] [int]  NULL,
[JieDianSerils] [varchar]  (50) NULL,
[JieDianName] [varchar]  (50) NULL,
[JieDianAddr] [varchar]  (50) NULL,
[NextJieDianSerils] [varchar]  (50) NULL,
[PingShenMoShi] [varchar]  (500) NULL,
[ShengPiUserSetting] [varchar]  (50) NULL,
[JieShuHours] [int]  NULL,
[IFEditFile] [varchar]  (50) NULL,
[IFDelFile] [varchar]  (50) NULL,
[TiaoJianTiaoZhuan] [varchar]  (8000) NULL,
[JingBanRenYuanList] [varchar]  (8000) NULL)

ALTER TABLE [ERPWorkFlowJieDian] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkFlowJieDian] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkFlowJieDian] ON

INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[TiaoJianTiaoZhuan],[JingBanRenYuanList]) VALUES ( 1,1,'1','��д�������','��ʼ','2,3','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��','�������[������]'����'10��3|�������[������]'С�ڵ���'10��2|��ٲ���[������]'����'��������3|��ٲ���[������]'������'��������2','admin,������,�Ÿ���')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 2,1,'2','�������','�м��','4','ȫ��ͨ����������ת','����ʱ�Ӿ������б���ָ��',24,'��','��','������,�Ÿ���')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 3,1,'3','��λ��׼','�м��','4','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��','admin,������,�Ÿ���')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 4,1,'4','��ɹ鵵','����','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 6,3,'1','Ա������','��ʼ','2','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 7,3,'2','���ٳɹ�','����','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 10,4,'1','��ʼ��','��ʼ','2','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 11,4,'2','������Ŷ','�м��','3','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��','admin,������,�Ÿ���')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 12,4,'3','ɰֽ','�м��','4','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 13,4,'4','������Ŷ','����','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 16,6,'1','1','��ʼ','2','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 17,8,'1','��������','��ʼ','2','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��','admin,������,�Ÿ���')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 18,8,'2','�������','�м��','3','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��','admin,������,�Ÿ���')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 19,8,'3','��λ���','�м��','4','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 20,8,'4','���Ĺ鵵','����','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 21,7,'1','��������','��ʼ','2','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[NextJieDianSerils],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile],[JingBanRenYuanList]) VALUES ( 22,7,'2','���ĳ���','�м��','3','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��','admin,������,�Ÿ���')
INSERT [ERPWorkFlowJieDian] ([ID],[WorkFlowID],[JieDianSerils],[JieDianName],[JieDianAddr],[PingShenMoShi],[ShengPiUserSetting],[JieShuHours],[IFEditFile],[IFDelFile]) VALUES ( 23,7,'3','����ͨ��','����','һ��ͨ����������ת','����ʱ����ָ��',24,'��','��')

SET IDENTITY_INSERT [ERPWorkFlowJieDian] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkPlan]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkPlan]

CREATE TABLE [ERPWorkPlan] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[TitleStr] [varchar]  (500) NULL,
[ContentStr] [text]  NULL,
[FuJianStr] [varchar]  (2000) NULL,
[UserName] [varchar]  (100) NULL,
[CanLookUser] [varchar]  (8000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPWorkPlan] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkPlan] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkPlan] ON

INSERT [ERPWorkPlan] ([ID],[TitleStr],[ContentStr],[FuJianStr],[UserName],[CanLookUser],[TimeStr]) VALUES ( 1,'�ҵ�2008-09-04�����ƻ�������ר��','<P>�����Ҫ����������ר�õģ����չ����ƻ��ǣ�</P><P>1���Է�</P><P>2��˯��</P><P>3������Ϸ</P>','633561231302500000.doc||633561246099687500.doc','admin','������,�Ÿ���,admin','2008-9-4 11:30:25')

SET IDENTITY_INSERT [ERPWorkPlan] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkRiZhi]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkRiZhi]

CREATE TABLE [ERPWorkRiZhi] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TitleStr] [varchar]  (1000) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[TypeStr] [varchar]  (50) NULL,
[ContentStr] [text]  NULL)

ALTER TABLE [ERPWorkRiZhi] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkRiZhi] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkRiZhi] ON

INSERT [ERPWorkRiZhi] ([ID],[UserName],[TitleStr],[TimeStr],[TypeStr],[ContentStr]) VALUES ( 1,'admin','7��27������־--�ļ�ģ�������ƣ�','2008-7-27 16:12:14','������־','�����е�ģʽ�£�����Ʒֲ�ʽ�ṹ��ֵ�������Լ��úõ�˼����ʵ�顣')
INSERT [ERPWorkRiZhi] ([ID],[UserName],[TitleStr],[TimeStr],[TypeStr],[ContentStr]) VALUES ( 2,'admin','���ڼ�����Ŀ����ϵͳ����ṹ�ĺ����Է���','2008-7-27 16:15:35','������־','<P>����ϸ��������Ŀϵͳ����Ƽܹ�������Ϊ��</P><P>1�����ô��������ṹʹ�ó�����뽩Ӳ</P><P>2������ά�������ǲ��������</P><P>3���޷������п�ܼ���</P><P>4���ĵ������޷�����</P>')

SET IDENTITY_INSERT [ERPWorkRiZhi] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPWorkToDo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPWorkToDo]

CREATE TABLE [ERPWorkToDo] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[WorkName] [varchar]  (200) NULL,
[FormName] [varchar]  (200) NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[WorkFlowID] [int]  NULL,
[FormContent] [text]  NULL,
[FuJianList] [varchar]  (5000) NULL,
[ShenPiYiJian] [text]  NULL,
[JieDianID] [int]  NULL,
[JieDianName] [varchar]  (200) NULL,
[ShenPiRenList] [varchar]  (8000) NULL,
[TongGuoRenList] [varchar]  (8000) NULL,
[StateNow] [varchar]  (50) NULL,
[LateTime] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPWorkToDo] WITH NOCHECK ADD  CONSTRAINT [PK_ERPWorkToDo] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPWorkToDo] ON

INSERT [ERPWorkToDo] ([ID],[WorkName],[FormName],[UserName],[TimeStr],[WorkFlowID],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[ShenPiRenList],[StateNow],[LateTime]) VALUES ( 13,'admin--���ĵǼ�(2009-3-20)','���ĵǼ�','admin','2009-3-20 18:29:34',8,'<P align=center><FONT style="LETTER-SPACING: 5px" color=#ff0000 size=5><B><BR>�ֹ�˾���ĵ�</B></FONT></P><TABLE cellSpacing=0 borderColorDark=#ffffff cellPadding=6 width=730 align=center bgColor=#ffffff borderColorLight=#ff0000 border=1><TBODY><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>������� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 119px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=7 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=5 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT name=""> <OPTION value=�� selected>��</OPTION> <OPTION value=��>��</OPTION> <OPTION value=��>��</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>�������� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 121px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=12 name=2008416165222640></SPAN></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData('text'))" id=Text1 ondragenter="return false" style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; IME-MODE: disabled; BORDER-LEFT: 0px; WIDTH: 115px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" size=10 name=19076></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT name=""> <OPTION value=�� selected>��</OPTION> <OPTION value=��>��</OPTION> <OPTION value=��>��</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: #000000 1px solid" name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly size=11 value=������ name=15160></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 549px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=51 name=2008416165222640></SPAN></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 547px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=49 name=2008416165222640></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 562px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 35px" name=2008416165222640 cols=25></TEXTAREA></TD></TR></TBODY></TABLE>','<font color=#0000FF>admin&nbsp;&nbsp;2009-3-22 10:34:45&nbsp;&nbsp;</font><BR>ͬ����ļ���д����
<hr>',20,'���Ĺ鵵','admin,������,�Ÿ���','���ڰ���','2009-3-22 10:34:59')
INSERT [ERPWorkToDo] ([ID],[WorkName],[FormName],[UserName],[TimeStr],[WorkFlowID],[FormContent],[ShenPiYiJian],[JieDianID],[JieDianName],[StateNow],[LateTime]) VALUES ( 14,'admin--��������(2009-3-20)','���ĵǼ�','admin','2009-3-20 18:29:56',7,'<TABLE title="" cellSpacing=0 cellPadding=0 width=600 align=center border=0><TBODY><TR height=35><TD style="FONT-SIZE: 12px" vAlign=center align=middle width="100%" height=50><FONT color=#ff0000><H3><BR>���ĵǼǱ�</H3></FONT></TD></TR><TR height=35><TD style="FONT-SIZE: 12px" vAlign=center width="100%"><TABLE title="" cellSpacing=0 borderColorDark=#ffffff cellPadding=5 width="100%" align=center borderColorLight=#ff0000 border=1><TBODY><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;����</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 508px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" size=46 name=14814></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;��������</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="21%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 210px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=6519></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;�ĺ�</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="22%"><SPAN id=sWenHao width="100%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 206px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=11004></SPAN><!--<INPUT type="text" id=WenHao name=WenHao value="" style="width:100%;" maxlength=100 >--></TD></TR><SCRIPT language=vbscript>     '���ҵ�ǰѡ�е������ĺ��Ƿ������޸�     function LeiXingChange()      if formData.LeiXing.value<>"" then       mystatus.style.display = ""       sWenHao.style.display ="none"       frmWH.action="WenHao.asp"       frmWH.target ="FTongJi"       frmWH.LeiXing.value =formData.LeiXing.value       frmWH.submit()      end if     end function     LeiXingChange    </SCRIPT><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;�ܼ�</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="22%"><SELECT name=""> <OPTION value=�� selected>��</OPTION> <OPTION value=��>��</OPTION> <OPTION value=��>��</OPTION></SELECT></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;�����̶�</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="21%"><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 204px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" name=17141></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;����ʱ��</TD><TD style="FONT-SIZE: 12px" vAlign=center><INPUT id=0.7730247343370162 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 205px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" onclick=setday(this) size=21 name=16799></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;ǩ����</TD><TD style="FONT-SIZE: 12px" vAlign=center><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 200px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly value=admin name=15172></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;�а���</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="40%"><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 203px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly value=admin name=766></TD><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center noWrap width="10%">&nbsp;�а쵥λ</TD><TD style="FONT-SIZE: 12px" vAlign=center noWrap width="40%"><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 198px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly size=22 value=������ name=1212></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;��������</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3 height=50><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 504px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 38px" name=1287 rows=1 cols=24></TEXTAREA></TD></TR><TR height=23><TD style="FONT-SIZE: 12px; BACKGROUND: #fffff2; COLOR: #ff0000; TEXT-ALIGN: left" vAlign=center width="10%">&nbsp;��ע</TD><TD style="FONT-SIZE: 12px" vAlign=center colSpan=3 height=50><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 503px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 43px" name=5864 cols=23></TEXTAREA></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>','<font color=#0000FF>admin&nbsp;&nbsp;2009-3-20 18:31:09&nbsp;&nbsp;</font><BR>ͬ����ļ���д����
<hr><font color=#0000FF>admin&nbsp;&nbsp;2009-3-20 18:30:58&nbsp;&nbsp;</font><BR>ͬ����ļ���д����
<hr><font color=#0000FF>admin&nbsp;&nbsp;2009-3-20 18:30:15&nbsp;&nbsp;</font><BR>ͬ����ļ���д����
<hr>',23,'����','��������','2009-3-20 18:29:34')
INSERT [ERPWorkToDo] ([ID],[WorkName],[FormName],[UserName],[TimeStr],[WorkFlowID],[FormContent],[JieDianID],[JieDianName],[ShenPiRenList],[StateNow],[LateTime]) VALUES ( 17,'admin--���ĵǼ�(2009-3-22)','���ĵǼ�','admin','2009-3-22 10:42:52',8,'<P align=center><FONT style="LETTER-SPACING: 5px" color=#ff0000 size=5><B><BR>�ֹ�˾���ĵ�</B></FONT></P><TABLE cellSpacing=0 borderColorDark=#ffffff cellPadding=6 width=730 align=center bgColor=#ffffff borderColorLight=#ff0000 border=1><TBODY><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>������� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 119px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=7 value=������� name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>�ļ���� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=5 value=��0902-0386 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>���ܵȼ� </FONT></TD><TD><SELECT name=""> <OPTION value=��>��</OPTION> <OPTION value=�� selected>��</OPTION> <OPTION value=��>��</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>�������� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 121px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=12 value=2009-9-8 name=2008416165222640></SPAN></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>���ķ��� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=165><INPUT onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/D/.test(clipboardData.getData('text'))" id=Text1 ondragenter="return false" style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; IME-MODE: disabled; BORDER-LEFT: 0px; WIDTH: 115px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" size=10 value=10 name=19076></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=60><FONT color=#ff0000>�����̶� </FONT></TD><TD><SELECT name=""> <OPTION value=��>��</OPTION> <OPTION value=��>��</OPTION> <OPTION value=�� selected>��</OPTION></SELECT></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>�����ֺ� </FONT></TD><TD><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: #000000 1px solid" value=��0902-0386 name=2008416165222640></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>���ĵ�λ </FONT></TD><TD colSpan=3><INPUT id=Text2 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 114px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 15px" readOnly size=11 value=������ name=15160></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>�� �� �� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><SPAN><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 549px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=51 name=2008416165222640></SPAN></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1 height=30><FONT color=#ff0000>�ļ����� </FONT></TD><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" colSpan=5><INPUT id=Text1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; WIDTH: 547px; BORDER-BOTTOM: #000000 1px solid; HEIGHT: 17px" size=49 name=2008416165222640></TD></TR><TR><TD style="FONT-SIZE: 12px; WORD-BREAK: break-all; HEIGHT: 20px; WORD-WRAP: break-word" width=90 bgColor=#fffff1><FONT color=#ff0000>��&nbsp;&nbsp;&nbsp;&nbsp;ע </FONT></TD><TD colSpan=5><TEXTAREA id=TextArea1 style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; SCROLLBAR-FACE-COLOR: #aaaaaa; SCROLLBAR-HIGHLIGHT-COLOR: #d8d8d8; BORDER-LEFT: 0px; WIDTH: 562px; SCROLLBAR-SHADOW-COLOR: #d8d8d8; SCROLLBAR-3DLIGHT-COLOR: #d8d8d8; SCROLLBAR-ARROW-COLOR: #d8d8d8; SCROLLBAR-TRACK-COLOR: #d8d8d8; BORDER-BOTTOM: #000000 1px solid; SCROLLBAR-DARKSHADOW-COLOR: #d8d8d8; HEIGHT: 35px" name=2008416165222640 cols=25></TEXTAREA></TD></TR></TBODY></TABLE>',18,'�������','admin,������,�Ÿ���','���ڰ���','2009-3-22 10:42:52')

SET IDENTITY_INSERT [ERPWorkToDo] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPYinZhang]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPYinZhang]

CREATE TABLE [ERPYinZhang] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[YinZhangName] [varchar]  (50) NULL,
[YinZhangLeiBie] [varchar]  (50) NULL,
[YinZhangMiMa] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[ImgPath] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()))

ALTER TABLE [ERPYinZhang] WITH NOCHECK ADD  CONSTRAINT [PK_ERPYinZhang] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPYinZhang] ON

INSERT [ERPYinZhang] ([ID],[YinZhangName],[YinZhangLeiBie],[YinZhangMiMa],[UserName],[ImgPath],[TimeStr]) VALUES ( 1,'��ʾ�ĸ�ר����','����ӡ��','123456','admin','633728155806250000.gif','2009-3-16 15:53:14')
INSERT [ERPYinZhang] ([ID],[YinZhangName],[YinZhangLeiBie],[YinZhangMiMa],[UserName],[ImgPath],[TimeStr]) VALUES ( 2,'��ʾ�ĸ�˽��','˽��ӡ��','123456','admin','633728155458281250.gif','2009-3-16 15:52:25')
INSERT [ERPYinZhang] ([ID],[YinZhangName],[YinZhangLeiBie],[YinZhangMiMa],[UserName],[ImgPath],[TimeStr]) VALUES ( 4,'������ר����','����ӡ��','123456','admin','633733184507812500.gif','2009-3-22 11:34:10')

SET IDENTITY_INSERT [ERPYinZhang] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[ERPYinZhangLog]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ERPYinZhangLog]

CREATE TABLE [ERPYinZhangLog] (
[ID] [int]  IDENTITY (1, 1)  NOT NULL,
[UserName] [varchar]  (50) NULL,
[TimeStr] [datetime]  NULL DEFAULT (getdate()),
[DoSomething] [varchar]  (1000) NULL,
[IpStr] [varchar]  (50) NULL,
[TypeStr] [varchar]  (50) NULL)

ALTER TABLE [ERPYinZhangLog] WITH NOCHECK ADD  CONSTRAINT [PK_ERPYinZhangLog] PRIMARY KEY  NONCLUSTERED ( [ID] )
SET IDENTITY_INSERT [ERPYinZhangLog] ON

INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 17,'admin','2009-3-20 16:08:52','�û�ʹ��ӡ�£���ʾ�ĸ�ר����(����ӡ��)','127.0.0.1','����ӡ��')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 18,'admin','2009-3-20 18:34:04','�û�ʹ��ӡ�£���ʾ�ĸ�˽��(˽��ӡ��)','127.0.0.1','˽��ӡ��')
INSERT [ERPYinZhangLog] ([ID],[UserName],[TimeStr],[DoSomething],[IpStr],[TypeStr]) VALUES ( 19,'admin','2009-3-22 11:53:53','�û�ʹ��ӡ�£�������ר����(����ӡ��)','127.0.0.1','����ӡ��')

SET IDENTITY_INSERT [ERPYinZhangLog] OFF


