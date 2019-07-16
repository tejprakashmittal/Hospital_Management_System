using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class frmFeedback : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=HMS;Integrated Security=True");
        conn.Open();
    }
    protected void txtQuestion_Load(object sender, EventArgs e)
    {
        //connectionClass.con.Open();
        //SqlCommand cmd = new SqlCommand("select *from feedback",conn);
        //SqlDataReader dr = cmd.ExecuteReader();
        //if (dr.Read() == true)
        //{
        //    txtQuestion.Text = dr[1].ToString();
        //}
        //dr.Close();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        var value = this.id.Text;
        var intValue = 0;
        Int32.TryParse(value, out intValue);
        this.id.Text = (++intValue).ToString();
        if(id.Text=="11")
        {
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = true;
        }
        SqlCommand sel = new SqlCommand("select question from feedback where Qno='" + id.Text + "'", conn);
        //SqlCommand sel = new SqlCommand("select question from feedback lag(Qno) over(order by question asc) as prev,lead(Qno) over(order by question desc) as next where 3 in(Qno,prev,next)",conn);
        SqlDataReader dr = sel.ExecuteReader();
        if (dr.Read())
        {
            txtQuestion.Text = dr[0].ToString();
        }
        dr.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        var value = this.id.Text;
        var intValue = 0;
        Int32.TryParse(value, out intValue);
        this.id.Text = (--intValue).ToString();
        SqlCommand sel = new SqlCommand("select question from feedback where Qno='"+id.Text+"'", conn);
        SqlDataReader dr = sel.ExecuteReader();
        if (dr.Read())
        {
            txtQuestion.Text = dr[0].ToString();
        }
        dr.Close();
    }
    protected void id_Load(object sender, EventArgs e)
    {
        SqlCommand sel = new SqlCommand("select question from feedback where Qno=1", conn);
        SqlDataReader dr = sel.ExecuteReader();
        if (dr.Read())
        {
            txtQuestion.Text = dr[0].ToString();
        }
        dr.Close();    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        mdlPopupExtender1.Hide();
    }
    protected void mdlPopupExtender1_Load(object sender, EventArgs e)
    {
        
    }
}