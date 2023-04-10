using PruebaCortaJesusDelgado.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaCortaJesusDelgado.View
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var context = new MyDbContext())
            {
                repResorts.DataSource = context.resorts.ToList();
                repResorts.DataBind();
            }
        }
    }
}