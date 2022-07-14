using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace T_and_J_Dental.model
{
    public class Users
    {
        public static string GetLoginUser(string username, string password)
        {
            string query = "select * from SystemUser where Username= '" + username+ "' and Password= '" + password+ "'";
            return query;
        }
    }
}