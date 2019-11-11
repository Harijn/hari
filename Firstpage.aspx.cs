using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace asp.net1
{
    //partial class is a class which spread across multiple physical files
    public partial class Firstpage:System.Web.UI.Page
    {
        protected TextBox txt1;
        //protected override void OnInit(EventArgs e)
        //{
        //    this.Load += new EventHandler(page_load);
        //    base.OnInit(e);
        //}
        public void page_load(object sender, EventArgs e)
        {
            //checks wheather the request is a new request,or a postback request
            if (!IsPostBack)
                this.txt1.Text = "enter your name here.";
        }

        public void btn1_Click(object sender, EventArgs e)
        {
            this.txt1.Text = this.txt1.Text.ToUpper();
        }
    }
}