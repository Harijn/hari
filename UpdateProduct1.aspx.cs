using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ConsoleApp1.ProductManagement;

namespace asp.net1
{
    public partial class UpdateProduct1 : System.Web.UI.Page
    {
        private void Initializepage()
        {

        }
        private void populateCategories()
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"]
                .ConnectionString;
            string sql = "SELECT CategoryId,CategoryName From Categories";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, connectionstring);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Categories");
            ddlCategories.DataSource = ds.Tables["Categories"];
            ddlCategories.DataTextField = "CategoryName";
            ddlCategories.DataValueField = "Categoryid";
            ddlCategories.DataBind();

        }
        private void AssignValuesToTextBoxes(Product model)
        {
            txtName.Text = model.ProductName;
            txtprice.Text = model.UnitPrice.ToString();
            txtStock.Text = model.UnitsInStock.ToString();
            chkDiscontinued.Checked = model.Discontinued;
            ddlCategories.SelectedValue = model.CategoryId.ToString();
        }
        private Product RetrievevaluesFromControls()
        {
            Product model = new Product();
            model.ProductName = txtName.Text;
            model.UnitPrice = Convert.ToDecimal("0" + txtprice.Text);
            model.UnitsInStock = Convert.ToInt16("0" + txtStock.Text);
            model.Discontinued = chkDiscontinued.Checked;
            model.CategoryId = Convert.ToInt32("0" + ddlCategories.SelectedValue);
            model.ProductId = Convert.ToInt32("0" + Request.QueryString["id"]);
            return model;
        }
        private void LoadProductDetails()
        {
            int productId = Convert.ToInt32("0" + Request.QueryString["id"]);
            if (productId != 0)
            {
                ProductProcess process = new ProductProcess();
                var item = process.GetProduct(productId);
                AssignValuesToTextBoxes(item);
            }
        }
        private void SaveProductDetails()
        {
            Product obj = RetrievevaluesFromControls();
            ProductProcess process = new ProductProcess();
            process.UpdateProduct(obj);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("signinform1.aspx?ReturnUrl="+Request.Url.PathAndQuery);
            }
            if (!IsPostBack)
            {
                Initializepage();
                populateCategories();
                
                LoadProductDetails();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SaveProductDetails();
           // Response.Redirect("productmaster.aspx");
           Cache.Remove("productList");
            Response.Redirect("productmaster.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("productmaster.aspx");
        }

        protected void btnCancel_Click1(object sender, EventArgs e)
        {
            Response.Redirect("productmaster.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SaveProductDetails();
            Response.Redirect("productmaster.aspx");
        }
    }
}