using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Anifigures.admin
{
    public partial class manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] imagePaths = Directory.GetFiles(Server.MapPath("~/images/figures/"));
                List<ListItem> images = new List<ListItem>();
                foreach (string imagePath in imagePaths)
                {
                    string imageName = Path.GetFileName(imagePath);
                    images.Add(new ListItem(imageName, "~/images/figures/" + imageName));
                }

            }
        }

        protected void buttonUploadImage_Click(object sender, EventArgs e)
        {
            if (uploadImage.HasFile)
            {
                string imageName = Path.GetFileName(uploadImage.PostedFile.FileName);
                uploadImage.PostedFile.SaveAs(Server.MapPath("~/images/figures/") + imageName);
                Response.Redirect(Request.Url.AbsoluteUri);

                uploadSuccess.Text = "Your image was successfully uploaded.";
                    
            }
        }
    }
}

//Upload code derived from https://youtu.be/GG8GKVFnIqk