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
    public partial class product : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("default.aspx");
            }
        }
        }
    }
