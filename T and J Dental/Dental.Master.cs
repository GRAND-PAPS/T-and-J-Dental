using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using T_and_J_Dental.model;

namespace T_and_J_Dental
{
    public partial class Dental : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userNamelbl.Text = UserDetails.username;

        }
        public static DataTable GetUserLoged (string systuser, string psswrd)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(Users.GetLoginUser(systuser,psswrd), DBconnection.GetConnection());
            adapter.Fill(dt);
            return dt;
        }



       
    }


}