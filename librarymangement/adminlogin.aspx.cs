using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace librarymangement
{
    public partial class adminlogin : System.Web.UI.Page
    {
        
        string conection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbBackToHomeAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/homepage.aspx");
        }

        protected void btnLoginAdmin_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(conection))
                {
                    string query = "select * from admin_login_tbl where username='" + txtAdminID.Text + "' AND password='" + txtpasswordAdmin.Text + "'";

                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        Response.Redirect("~/homepage.aspx");
                        //while(dr.Read())
                        //{
                        //    //Response.Write(dr["full_name"]);
                        //    //Response.Write(dr["email"]);
                        //    Response.Redirect("~/homepage.aspx");
                        //}
                    }
                    else
                    {
                        Response.Write("<script>alert('Admin id and password does not matched');<script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}