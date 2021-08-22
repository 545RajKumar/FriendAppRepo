using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration; 

namespace FriendsApplication
{
    public partial class Default : System.Web.UI.Page
    {
     SqlConnection con;
     protected void Page_Load(object sender, EventArgs e)
        {

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());  
       
        }
     protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string mobileno = TextBox1.Text;
                string pass = TextBox2.Text;
                con.Open();
                string qry = "select * from flogin where mobileno='" + mobileno + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label4.Text = "Login Sucess......!!";
                    Response.Redirect("Admin/ShowFriend.aspx");
                }
                else
                {
                    Label4.Text = "MobileNo& Password Is not correct Try again..!!";

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
      protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin/SignOut.aspx");
        }
    }
}