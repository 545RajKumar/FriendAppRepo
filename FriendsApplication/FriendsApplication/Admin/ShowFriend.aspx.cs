using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;  

namespace FriendsApplication.Admin
{
    public partial class ShowFriend : System.Web.UI.Page
    {

        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            if (!IsPostBack)
            {
                gvbind();
            }  
        }
        protected void gvbind()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from CreateFriend", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete FROM CreateFriend where id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gvbind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lblID = (Label)row.FindControl("lblID"); 
            TextBox txtFirstName = (TextBox)row.Cells[0].Controls[0];
            TextBox txtLastName = (TextBox)row.Cells[1].Controls[0];
            TextBox txtMobile = (TextBox)row.Cells[2].Controls[0];
            TextBox txtEmail = (TextBox)row.Cells[3].Controls[0]; 
            GridView1.EditIndex = -1;
            con.Open();
            SqlCommand cmd = new SqlCommand("update CreateFriend set FirstName='" + txtFirstName.Text + "',LastName='" + txtLastName.Text + "',MobileNo='" + txtMobile.Text + "',Email='" + txtEmail.Text + "'where Id='" + userid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind(); 
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            gvbind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gvbind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateFriend.aspx");
        }
    }
}