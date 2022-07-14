using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace T_and_J_Dental
{
    public partial class booking1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bookingbtnsearch_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            {
                //string query = "select Bookingid, Firstname, Othernames, Surname, Phone, Gender, status from Booking where Surname='"+surnamebookingsearch.Text+"' and Firstname='"+firstnamebookingsearch.Text+"'";
                //SqlCommand comm = new SqlCommand(query, con);
                con.Open();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select Bookingid, Firstname, Othernames, Surname, Phone, Gender, status from Booking where Surname='" + surnamebookingsearch.Text + "' and Firstname='" + firstnamebookingsearch.Text + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                BookingDataGrid.DataSource = dt;
                BookingDataGrid.DataBind();

                con.Close();
                //SqlDataAdapter adapter = new SqlDataAdapter(comm);
                //DataTable dt = new DataTable();
                //adapter.Fill(dt);

                //StringBuilder sb = new StringBuilder();
                //sb.Append("<table class='col-lg-12 fs-5'>");
                //sb.Append("<tr>");
                // foreach (DataColumn dc in dt.Columns)
                //{
                //    sb.Append("<th class='text-primary'>");
                //    sb.Append(dc.ColumnName.ToUpper());
                //    sb.Append("</th>");
                //}
                //sb.Append("</tr>");

                //foreach(DataRow dr in dt.Rows)
                //{
                //    sb.Append("<tr>");
                //    foreach(DataColumn dc in dt.Columns)
                //    {
                //        sb.Append("<th>");
                //        sb.Append(dr[dc.ColumnName].ToString());                        
                //        sb.Append("</th>");
                //    }
                //    sb.Append("</tr>");
                //}
                //sb.Append("</table>");
                //Bookingpanel.Controls.Add(new Label { Text = sb.ToString() });
                
               
            }

        }

        protected void allBookingbtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            {
                con.Open();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select Bookingid, Firstname, Othernames, Surname, Phone, Gender, status from Booking ";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                BookingDataGrid.DataSource = dt;
                BookingDataGrid.DataBind();

                con.Close();
                //string query = "select Bookingid, Firstname, Othernames, Surname, Phone, Gender, status from Booking " +
                //    "order by Bookingid";
                //SqlCommand comm = new SqlCommand(query, con);
                //con.Open();

                //SqlDataAdapter adapter = new SqlDataAdapter(comm);
                //DataTable dt = new DataTable();
                //adapter.Fill(dt);

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
                //Bookingpanel.Controls.Add(new Label { Text = sb.ToString() });
                //con.Close();

            }

        }

        protected void Proceed_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            {
                con.Open();


                con.Close();
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(DBconnection.GetConnection()))
            {
                con.Open();


                con.Close();
            }
        }
    }
}