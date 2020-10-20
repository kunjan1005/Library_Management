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
    public partial class adminAuthorManagement : System.Web.UI.Page
    {
        //string cs = "Data Source=LAPTOP-7EG67P1L\\SQLEXPRESS;Initial Catalog=eLibraryDB;Integrated Security=True;Pooling=False";
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
               protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btngo_Click(object sender, EventArgs e)
        {
                   }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "insert into author_master_tbl(author_id,author_name)" +
                        "values('" + TxtAuthorid.Text.Trim() + "','" + Txtauthorname.Text.Trim() + "')";

                    //string query = "insert into author_master_tbl(author_id,author_name)" +
                    //    "values(@author_id,@author_name)";


                    SqlCommand cmd = new SqlCommand(query, con);

                    //cmd.Parameters.AddWithValue("@author_id", TxtAuthorid.Text.Trim());
                    //cmd.Parameters.AddWithValue("@author_name", Txtauthorname.Text.Trim());

                    con.Open();

                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        Response.Write("<script>alert('author added successfully.');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('something went wrong !.');</script>");
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "UPDATE author_master_tbl SET author_name ='" +
                         Txtauthorname.Text.Trim() +"' where author_id= '" + TxtAuthorid.Text.Trim() + "'";

                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();

                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        Response.Write("<script>alert('author updated  successfully.');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('something went wrong !.');</script>");
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void Btndelete_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "DELETE FROM author_master_tbl" +
                        " where author_id= '" + TxtAuthorid.Text.Trim() + "'";

                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();

                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        Response.Write("<script>alert('author deleted  successfully.');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('something went wrong !.');</script>");
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