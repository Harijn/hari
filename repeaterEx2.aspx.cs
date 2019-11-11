using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using asp.net1.Models;

namespace asp.net1
{
    public partial class repeaterEx2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateData();
            }
        }
        //string connectionString = @"server=(local)\sqldev2016;initial catalog = northwind; integrated security = sspi";
        //string sql = "SELECT customerId,CompanyName,ContactName,City,Country FROM Customers";
        //DataSet ds;
        //SqlDataAdapter adapter;
        //string tableName = "Customers";
        private void PopulateData()
        {
            //if (adapter == null)
            //    adapter = new SqlDataAdapter(sql, connectionString);
            //if (ds == null) ds = new DataSet();
            //adapter.Fill(ds, tableName);
            //this.repeater2.DataSource = ds;
            //repeater2.DataMember = tableName;
            //repeater2.DataBind();
            CustomerDataAccess dataaccess = new CustomerDataAccess();
            var list = dataaccess.GetCustomers();
            repeater2.DataSource = list;
            repeater2.DataBind();
        }
        protected void repeater2_ItemCommand(Object source, RepeaterCommandEventArgs e)
        {
            string custId = e.CommandArgument.ToString();
            if (e.CommandName == "View")
            {
                Response.Redirect("CustomerDetails.aspx?ID=" + custId);
            }
        }
    }
}