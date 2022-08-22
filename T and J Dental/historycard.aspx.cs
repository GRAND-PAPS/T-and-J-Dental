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
                        GenderDropdown.Text = dr["Gender"].ToString();
                        addressTextBox.Text = dr["Address"].ToString();
                        emailTextBox.Text = dr["Email"].ToString();
                        phoneTextBox.Text = dr["Phone"].ToString();
                        
                    }

                    con.Close();
                }
        }

        protected void historysubmitbtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Patient values ('"+firstnameinput.Text+"','"+othernamesinput.Text+"','"+surnameinput.Text+"','"+addressTextBox.Text+"','"+emailTextBox.Text+"','"+phoneTextBox.Text+"'," +
                    "'"+DOBTextBox.Text+"','"+employerTextBox.Text+"','"+guardianDropdown.Text+ "','" + insurancedroplist.Text+ "','" + GenderDropdown.Text+"','"+GetDataItem()+ "',GETDATE())", con);
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('THE RECORD IS SUCCESSFULLY SAVED');", true);


                firstnameinput.Text = String.Empty;
                othernamesinput.Text = String.Empty;
                surnameinput.Text= String.Empty;
                GenderDropdown.Text = String.Empty;
                addressTextBox.Text = String.Empty;
                emailTextBox.Text = String.Empty;
                phoneTextBox.Text = String.Empty;
                guardianDropdown.Text = String.Empty;
                insurancedroplist.Text = String.Empty;
                employerTextBox.Text = String.Empty;
                DOBlabel.Text = String.Empty;
            }
        }
    }
}