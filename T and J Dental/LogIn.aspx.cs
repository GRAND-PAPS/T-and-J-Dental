using System;
using T_and_J_Dental.model;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace T_and_J_Dental
{
    public partial class LogIn : System.Web.UI.Page

    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginsubmit_Click(object sender, EventArgs e)
        {

            //sn.Username = usernameinput.Text;

            using (SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            {

                string query = "select * from SystemUser where Username= '" + usernameinput.Text + "' and Password= '" + passwordinput.Text + "'";
                SqlDataAdapter sqldata = new SqlDataAdapter(query, con);
                DataTable TJ = new DataTable();
                sqldata.Fill(TJ);

                if (TJ.Rows.Count == 1)
                {
                    UserinputName();
                    Response.Redirect("index.aspx");
                    //Response.Write("<script>alert('log in successfully');</script>");
                }
                else if (usernameinput.Text.Equals("") || passwordinput.Text.Equals(""))
                {
                    Loginerrorlbl.Text = "Please Put the Username and Password before Log in.!!";
                }
                else
                {
                    Loginerrorlbl.Text = "USERNAME OR PASSWORD IS INCORRECT.!!";
                }

               
            }

            

        }

        public void UserinputName()
        {
            string systemuser = usernameinput.Text;
            UserDetails.username = systemuser;
            

        }

       



    }
}