using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace Anifigures.admin { 

    public partial class login : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString);
    int a;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

        protected void bl1_Click(object sender, EventArgs e)
    {
        a = 0;
        connect.Open();
        SqlCommand command = connect.CreateCommand();
        command.CommandType = CommandType.Text;
        command.CommandText = "select * from admin_login where Username='"+u1.Text+"' and Password='"+p1.Text +"'";
        command.ExecuteNonQuery();
        DataTable data = new DataTable();
        SqlDataAdapter adapter = new SqlDataAdapter(command);
        adapter.Fill(data);
        a = Convert.ToInt32(data.Rows.Count.ToString());

        if (a == 1)
            {
                Response.Redirect("manage.aspx");
            }
        
        else
            {
                loginLabel.Text = "The username/password you have entered is incorrect";
            }

        connect.Close();
    }

    }
}