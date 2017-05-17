using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Anifigures
{

    public partial class Default : System.Web.UI.Page
	{
        SqlConnection connect = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
		{
            connect.Open();
            SqlCommand command = connect.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "select * from products";
            command.ExecuteNonQuery();
            DataTable data = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(data);
            rp1.DataSource = data;
            rp1.DataBind();

            connect.Close();
		}
	}
}