using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace Nhom18.Views.FE
{
    public partial class TimKiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                datatimchude.DataSource = Session["cd"];
                datatimalbum.DataSource = Session["ab"];
                datatimbaihat.DataSource = Session["bh"];
                datatimtheloai.DataSource = Session["tl"];
                datatimcasi.DataSource = Session["cs"];
                datatimplaylist.DataSource = Session["pl"];

                DataBind();
            }

            
        }
    }
}