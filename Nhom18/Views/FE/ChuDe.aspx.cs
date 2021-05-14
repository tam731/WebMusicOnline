using Nhom18.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Nhom18.Views.FE
{
    public partial class ChuDe : System.Web.UI.Page
    {
        ChuDeController cd= new ChuDeController();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            datalistchude.DataSource = cd.dsChuDe();
            datalistchude.DataBind();
        }
    }
}