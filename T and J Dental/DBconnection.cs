using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace T_and_J_Dental
{
   
    public class DBconnection
    {
       
            public static string GetConnection()
            {
                string query = @"Data Source=GRANDPA\GRANDPA;Initial Catalog=DentalTandJ;Integrated Security=True";
               
                return query;
            }
        
    }
}