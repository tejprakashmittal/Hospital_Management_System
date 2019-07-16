using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;

public partial class frmSymptoms : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand sel, cmd;
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetNames(string prefixText)
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
        con.Open();
        //connectionClass.con.Open();
        SqlCommand cmd = new SqlCommand("select * from symptom where category like @Name+'%'", con);
        cmd.Parameters.AddWithValue("@Name", prefixText);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        List<string> Names = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            Names.Add(dt.Rows[i][1].ToString());
        }
        return Names;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static string GetDynamicContent()
    {
        return "Hello World!";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //var value = this.Label1.Text;
        //var intValue = 1;
        //Int32.TryParse(value, out intValue);
        //this.Label1.Text = (++intValue).ToString();
    }
    protected void btnClose_Click(object sender, EventArgs e)
    {
        ModalPopupExtender1.Hide();
    }
}