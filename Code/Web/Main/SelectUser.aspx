<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelectUser.aspx.cs" Inherits="SelectCondition" %>

<HTML>
	<HEAD>
		<title>ѡ������</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<base target=_self />	
		<script  language="javascript">			
		var allCheckStr;    
		    var  getFromParent=window.dialogArguments;  
		    function CheckSelect()
		    {
		    var aaaa="";
             for(var i=0;i<window.document.Form1.elements.length;i++)
               {
                  var e = Form1.elements[i];
                  if (e.checked)
                  {
                        if(aaaa=="")
                        {
                            aaaa=e.value;
                        }
                        else                        
                        {
                            aaaa=aaaa+","+e.value;
                        }
                  }                   
               }
               return aaaa;
            }
            
            function AddSelect()
		    {
		    var aaaa="";
             for(var i=0;i<window.document.Form1.elements.length;i++)
               {
                  var e = Form1.elements[i];
                  if (e.checked)
                  {
                        if(aaaa=="")
                        {
                            aaaa=e.value;
                        }
                        else                        
                        {
                            aaaa=aaaa+","+e.value;
                        }
                  }                   
               }
               if(document.getElementById('TextBox4').value.length>0)
               {
                    document.getElementById('TextBox4').value=document.getElementById('TextBox4').value+","+aaaa;
               }
               else
               {
                    document.getElementById('TextBox4').value=aaaa;
               }
               
               for(var i=0;i<window.document.Form1.elements.length;i++)
                   {                
                      var e = Form1.elements[i];
                      e.checked =false;                  
                   }
            }
            
            function AllSelect()
		    {
		        var aaaa="";
             for(var i=0;i<window.document.Form1.elements.length;i++)
               {
                  var e = Form1.elements[i];
                  if (e.id=="Checkbox1")
                  {
                        if(aaaa=="")
                        {
                            aaaa=e.value;
                        }
                        else                        
                        {
                            aaaa=aaaa+","+e.value;
                        }
                  }                   
               }
               if(document.getElementById('TextBox4').value.length>0)
               {
                    document.getElementById('TextBox4').value=document.getElementById('TextBox4').value+","+aaaa;
               }
               else
               {
                    document.getElementById('TextBox4').value=aaaa;
               }  
            }
                       
           function  sendFromChild()  
            {       
                //window.returnValue=CheckSelect();  
                window.returnValue=document.getElementById('TextBox4').value;
                window.close();  
            } 
            
            function  CCC()  
            {                      
                window.close();  
            } 
        </script> 	
</HEAD>
	<body scroll="no">
		<form id="Form1" method="post" runat="server">
			<table border="0" width="100%" cellspacing="0" cellpadding="0" height="100%" bordercolorlight="#c0c0c0" bordercolordark="#ffffff">
				<tr>
					<td height="22" background="../images/show_02.gif" align="left" style="font-size: 12px; font-family: ����"> ����ѡ������Ҫ���Ȼ��㡰ȷ������</td>
				</tr>
				<tr>
			    <td valign="top" style="text-align: center">	
			    
			    			  
                    <table  border="0" cellspacing="0" cellpadding="0" style="width: 318px; height: 49px">
                        <tr>
                            <td colspan="2" style="height: 31px; text-align: left">
                                ���ţ�<asp:TextBox ID="TextBox2" runat="server" Height="20px"
                                    Width="70px"></asp:TextBox><img class="HerCss" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectCondition.aspx?TableName=ERPBuMen&LieName=BuMenName&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('TextBox2').value=wName;}"
                        src="../images/Button/search.gif" />
                                ��ɫ��<asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="70px"></asp:TextBox><img class="HerCss" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectCondition.aspx?TableName=ERPJiaoSe&LieName=JiaoSeName&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('TextBox3').value=wName;}"
                        src="../images/Button/search.gif" /><asp:ImageButton
                        ID="ImageButton4" runat="server" ImageAlign="AbsMiddle" ImageUrl="../images/Button/BtnSerch.jpg"
                        OnClick="ImageButton4_Click" /></td>
                        </tr>
                    <tr>
                        <td colspan="2" style="height: 31px; text-align: center">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;
                                height: 49px">
                                <tr>
                                    <td colspan="2" style="height: 31px; text-align: center">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td rowspan="4" style="width: 146px">
                                                    <asp:ListBox ID="ListBox1" runat="server" Height="250px" SelectionMode="Multiple"
                                                        Width="150px"></asp:ListBox></td>
                                                <td style="width: 27px">
                                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/AddTo.gif" OnClick="ImageButton1_Click"
                                                        ToolTip="ѡ�м���" /></td>
                                                <td rowspan="4" width="150">
                                                    <asp:ListBox ID="ListBox2" runat="server" Height="250px" SelectionMode="Multiple"
                                                        Width="150px"></asp:ListBox></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 27px">
                                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../images/AddAll.gif" OnClick="ImageButton2_Click"
                                                        ToolTip="ȫ������" /></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 27px">
                                                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../images/Remove.gif" OnClick="ImageButton3_Click"
                                                        ToolTip="ѡ��ȥ��" /></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 27px">
                                                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="../images/RemoveAll.gif"
                                                        OnClick="ImageButton5_Click" ToolTip="ȫ��ȥ��" /></td>
                                            </tr>
                                        </table>
                                        </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 31px; text-align: center">
                                        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="0px" Height="0px"></asp:TextBox>
                                        <input id="Button1" class="BottonCss" onclick="sendFromChild();" style="width: 70px"
                                            type="button" value="ȷ��" />
                                        <input class="BottonCss" onclick="CCC();" style="width: 72px" type="button" value="ȡ��" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </table>
                    
                    
                    
                    </td>
				</tr>
				<tr>
					<td height="22" background="../images/show_02.gif">
					</td>
				</tr>
			</table>
		</form>
	</body>			
</HTML>