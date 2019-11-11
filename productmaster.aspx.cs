using ConsoleApp1.ProductManagement;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net1
{
    public partial class productmaster : System.Web.UI.Page
    {
        #region private helper methods
        private void InitializePage()
        {
            txtSearch.Text = string.Empty;
            FetchProductData();

        }
        private void FetchProductData()
        {
            if (Cache["productList"] == null)
            {
                try
                {
                    ProductProcess process = new ProductProcess();
                    var list = process.GetProducts(txtSearch.Text);
                    Cache["productList"] = list;
                    this.grid1.DataSource = list;
                    this.grid1.DataBind();
                }
                catch (Exception)
                {
                    throw;
                }
            }
            else
            {
                var list = Cache["productList"] as List<Product>;
                this.grid1.DataSource = list;
                this.grid1.DataBind();
            }
        }
        #endregion
#region page event handler
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) InitializePage();
            //design->gridview
        }

        protected void btnCreateNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateProduct1.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //saveProductdetails();
            //Cache.Remove("productList");
            //Response.Redirect
        }

        protected void btnlink1_Click(object sender, EventArgs e)
        {
            FetchProductData();
        }
        #endregion

        protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid1.PageIndex = e.NewPageIndex;
            FetchProductData();

        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtSearch.Text = string.Empty;
            FetchProductData();
        }

        protected void grid1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string id = grid1.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect("UpdateProduct1.aspx?id="+id);
        }
    }
}