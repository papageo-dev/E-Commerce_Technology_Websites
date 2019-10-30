using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Statistics : System.Web.UI.Page
{

    string minima = "Καλησπέρα";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            TextBox1.Text = minima;
        }
        Label1.Text = "Αυτή την στιγμή χρησιμοποιούν τον ιστότοπο " + Convert.ToString(Application["UserCount"]) + " χρήστες";
        Label2.Text = "Κλικ από προηγούμενους χρήστες: " + Convert.ToUInt32(Application["ClickCount"]);
        Label3.Text = "Τρέχοντα κλικ: ";
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Text = TextBox1.Text;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}