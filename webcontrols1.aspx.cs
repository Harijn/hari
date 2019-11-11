using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net1
{
    public partial class webcontrols1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> intrestList = new List<string>
            {
                "chating","chess","cricket","riding","220chinna","duke"
            };
            //the request is a new request or weather it is postback (submit) request
            if (!IsPostBack)//if it is not a postback request,then
            {
                //do t5he assignment and invoke the methods
                chkInterests.DataSource = intrestList;

                //alternate way to assigninng items to lists
                for(int i = 0; i < intrestList.Count; i++)
                {
                    chkInterests.Items.Add(intrestList[i]);
                }
                chkInterests.DataBind();//bind the string items to the list-item
            }//otherwise ignore the assignment
            //since the assignemnt is not made,the selected values will be available
        }
        protected void btnSave_Click(object sender,EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<section class='allert alert-info'>");
            sb.AppendFormat("hii,<b>{0}</b>!<br/>", txtName.Text)
                .Append("welcome to our site.you are located in")
                .AppendFormat("<address>{0}</address>", txtAddress.Text)
                .AppendFormat("<strong>{0}</strong>",ddlLocation.SelectedItem.ToString())
                .AppendFormat("<address>{0}</address>",txtAddress.Text)
                .Append("<br/> your interests are")
                .Append("<ul>");
            foreach(ListItem item in chkInterests.Items)
            {
                if (item.Selected)
                    sb.AppendFormat("<li>{0}</li>", item.Text);
            }
            sb.Append("</ul>");
            sb.Append("</section>");
            literal1.Text = sb.ToString();

        }
    }
}