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
using SDLX.Common;
using SDLX.DBUtility;
using System.Text;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PublicMethod.CheckSession();
            //Response.Write(SDLX.Common.PublicMethod.GetSessionValue("QuanXian"));
            //设置有权限的项才显示
            SetQuanXian();
            SetMenu();
        }
    }
    public void SetQuanXian()
    {
        //判断权限分配
        for (int i = 0; i < this.ListTreeView.Nodes.Count; i++)
        {
            for (int j = 0; j < this.ListTreeView.Nodes[i].ChildNodes.Count; j++)
            {
                //删除子菜单中的不在权限中的项
                for (int k = 0; k < this.ListTreeView.Nodes[i].ChildNodes[j].ChildNodes.Count; k++)
                {
                    if (PublicMethod.StrIFIn("|" + this.ListTreeView.Nodes[i].ChildNodes[j].ChildNodes[k].Value + "|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian")) == false)
                    {
                        this.ListTreeView.Nodes[i].ChildNodes[j].ChildNodes.Remove(this.ListTreeView.Nodes[i].ChildNodes[j].ChildNodes[k]);
                        k = -1;
                    }
                }
                //判断是父节点还是子节点
                if (this.ListTreeView.Nodes[i].ChildNodes[j].SelectAction == TreeNodeSelectAction.Expand)
                {
                    if (this.ListTreeView.Nodes[i].ChildNodes[j].ChildNodes.Count <= 0)
                    {
                        this.ListTreeView.Nodes[i].ChildNodes.Remove(this.ListTreeView.Nodes[i].ChildNodes[j]);
                        j = -1;
                    }
                }
                else
                {
                    if (PublicMethod.StrIFIn("|" + this.ListTreeView.Nodes[i].ChildNodes[j].Value + "|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian")) == false)
                    {
                        this.ListTreeView.Nodes[i].ChildNodes.Remove(this.ListTreeView.Nodes[i].ChildNodes[j]);
                        j = -1;
                    }
                }
            }
            //判断是父节点还是子节点
            if (this.ListTreeView.Nodes[i].SelectAction == TreeNodeSelectAction.Expand)
            {
                if (this.ListTreeView.Nodes[i].ChildNodes.Count <= 0)
                {
                    this.ListTreeView.Nodes.Remove(this.ListTreeView.Nodes[i]);
                    i = -1;
                }
            }
            else
            {
                if (PublicMethod.StrIFIn("|" + this.ListTreeView.Nodes[i].Value + "|", SDLX.Common.PublicMethod.GetSessionValue("QuanXian")) == false)
                {
                    this.ListTreeView.Nodes.Remove(this.ListTreeView.Nodes[i]);
                    i = -1;
                }
            }
        }
    }

    public void SetMenu()
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(RenderChild1(this.ListTreeView.Nodes));
        this.menu.InnerHtml = sb.ToString();
    }

    string RenderChild1(TreeNodeCollection nodes)
    {
        StringBuilder sb = new StringBuilder();
        foreach (TreeNode node in nodes)
        {
            sb.Append("<div class=\"accordionHeader\"><h2>" + node.Text + "</h2>");
            sb.Append("</div>");
            sb.Append("<div >");
            sb.Append("<ul class=\"tree treeFolder\">");
            if (node.ChildNodes.Count > 0)
            {
                sb.Append(RenderChild2(node.ChildNodes));
            }
            sb.Append("</ul></div>");
        }
        return sb.ToString();
    }

    string RenderChild2(TreeNodeCollection nodes)
    {
        StringBuilder sb = new StringBuilder();
        foreach (TreeNode node in nodes)
        {
            sb.Append("<li>");
            sb.Append("<a href=" + node.NavigateUrl + " target=\"navTab\" external=\"true\" rel=\"f" + node.Value + "\">" + node.Text + "");
            sb.Append("</a>");
            if (node.ChildNodes.Count > 0)
            {
                sb.Append("<ul>");
                sb.Append(RenderChild3(node.ChildNodes));
                sb.Append("</ul>");
            }
            sb.Append("</li>");

        }
        return sb.ToString();
    }

    string RenderChild3(TreeNodeCollection nodes)
    {
        StringBuilder sb = new StringBuilder();
        foreach (TreeNode node in nodes)
        {
            sb.Append("<li>");
            sb.Append("<a href=" + node.NavigateUrl + " target=\"navTab\" external=\"true\" rel=\"f" + node.Value + "\">" + node.Text + "");
            sb.Append("</a>");
            sb.Append("</li>");
        }
        return sb.ToString();
    }
}
