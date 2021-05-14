using Nhom18.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom18.Views.FE
{
    public partial class PlayList : System.Web.UI.Page
    {
        PlayListController pl = new PlayListController();
        protected void Page_Load(object sender, EventArgs e)
        {
            datalistplaylist.DataSource = pl.dsPlaylist();
            datalistplaylist.DataBind();
           
        }
    }
}