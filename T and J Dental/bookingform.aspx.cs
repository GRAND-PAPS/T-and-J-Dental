using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace T_and_J_Dental
{
    public partial class booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bookingsubmitbtn_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into booking values('"+firstnameinput.Text+"','"+othernamesinput.Text+"','"+surnameinput.Text+"','"+addressTextBox.Text+"','"+emailTextBox.Text+"','"+phoneTextBox.Text+"','"+Bookeddatetextbox.Text+"','"+residencetextbox.Text+"','"+workTextBox.Text+"','"+GenderDropdown.Text+"','Pending')",con);
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();


                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('SUCCESSFULLY BOOKED');", true);

                // Response.Redirect("booking.aspx");
                firstnameinput.Text = String.Empty;
                othernamesinput.Text = String.Empty;
                surnameinput.Text = String.Empty;
                addressTextBox.Text = String.Empty;
                emailTextBox.Text = String.Empty;
                phoneTextBox.Text = String.Empty;
                Bookeddatetextbox.Text = String.Empty;
                residencetextbox.Text = String.Empty;
                workTextBox.Text = String.Empty;
                GenderDropdown.Text = String.Empty;
            }
        }
    }
}