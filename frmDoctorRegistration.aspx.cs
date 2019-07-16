using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class frmDoctorRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //for(int i=0;i<30;i++)
        //{
        //    DropDownList1.Items.Add(new ListItem(i.ToString(), i.ToString()));
        //}
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string fileName = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("Images/" + fileName));
            Label1.Text = "Image " + fileName +"\n"+"\nSuccesfully Uploaded";
            Page_Load(sender, e);
            Image1.ImageUrl = "Images/" + fileName;
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('Please Choose a image first')</script>");
        }
    }
}