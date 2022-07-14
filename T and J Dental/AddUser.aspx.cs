using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace T_and_J_Dental
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Userbtnsearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            { 
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select UserID, Username, UserType from SystemUser where Username='"+userSearch.Text+"'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                UserGridView.DataSource = dt;

                if(userSearch.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please Fill the Field to Search');", true);
                    
                }else if(dt.Rows.Count < 1)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('There is No such Username in the System');", true);

                }
                else
                {
                    UserGridView.DataBind();
                }

                con.Close();

            }
        }

        protected void systemusersearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            {
                con.Open();
                //string query = "select UserID, Username, UserType from SystemUser";
                //SqlCommand comm = new SqlCommand(query, con);              

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select UserID, Username, UserType from SystemUser";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);
                UserGridView.DataSource = dt;
                UserGridView.DataBind();

                //StringBuilder sb = new StringBuilder();
                //sb.Append("<table class='col-lg-12 fs-5'>");
                //sb.Append("<tr>");
                //foreach (DataColumn dc in dt.Columns)
                //{
                //    sb.Append("<th class='text-primary'>");
                //    sb.Append(dc.ColumnName.ToUpper());
                //    sb.Append("</th>");
                //}
                //sb.Append("</tr>");

                //foreach (DataRow dr in dt.Rows)
                //{
                //    sb.Append("<tr>");
                //    foreach (DataColumn dc in dt.Columns)
                //    {
                //        sb.Append("<th>");
                //        sb.Append(dr[dc.ColumnName].ToString());
                //        sb.Append("</th>");
                //    }
                //    sb.Append("</tr>");
                //}
                //sb.Append("</table>");
                //userpanel.Controls.Add(new Label { Text = sb.ToString() });
                con.Close();

            }
        }

        protected void addUserbtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            {
                string query = "select Username from systemUser where Username='" + systemUsername.Text+"'";
                SqlDataAdapter sqldata = new SqlDataAdapter(query, con);
                DataTable systeuser = new DataTable();
                sqldata.Fill(systeuser);

                if (systeuser.Rows.Count > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Username is already in Use');", true);
                }
               else if(systemUsername.Text == "" && systemPassword.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please Fill all the Fields');", true);
                }
                else
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into systemUser values('" + systemUsername.Text + "','" + systemPassword.Text + "','" +systemusertype.Text+ "')", con);
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    con.Close();


                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('User Added Successfully');", true);
                }
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            
        }

        protected void Update_Click(object sender, EventArgs e)
        {

        }

        protected void UserEdit_Click(object sender, EventArgs e)
        {

        }
    }
}