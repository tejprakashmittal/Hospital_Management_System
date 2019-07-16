using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
public class connectionClass
{
	public static SqlConnection con;
    public static SqlCommand cmd;
	static connectionClass()
	{
        string connectionstrng = ConfigurationManager.ConnectionStrings["HMSconnection"].ToString();
        con = new SqlConnection(connectionstrng);
	}	
}
