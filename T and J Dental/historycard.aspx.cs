using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace T_and_J_Dental
{
    public partial class historycard : System.Web.UI.Page
    {       

        protected void Page_Load(object sender, EventArgs e)
        {

                String p = Request.QueryString["Bookingid"];

                using (SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("Select * from Booking where Bookingid = '"+ p +"'", con);  
                    SqlDataReader dr = cmd.ExecuteReader();

                    if(dr.Read())
                    {
                        firstnameinput.Text = dr["Firstname"].ToString();
                        othernamesinput.Text = dr["Othernames"].ToString();
                        surnameinput.Text = dr["Surname"].ToString() ;

                    }

                    con.Close();
                }
        }

        protected void historysubmitbtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            {

            }
        }
    }
}