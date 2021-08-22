using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

namespace FriendsApplication.Admin
{
    public partial class CreateFriend : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());  
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String query = "Insert into CreateFriend(FirstName,LastName,MobileNo,Email) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Label4.Text = "Submit Sucess......!!";
                Label4.Visible = true;
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            } 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowFriend.aspx");
        }
    }
}