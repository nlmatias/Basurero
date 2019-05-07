﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasureroWeb
{
    public partial class Login_usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender,EventArgs e)
        {
            if(IsPostBack!=true) {
                if(Session["user"] != null) {
                    txtBienvenido.Text = "Bienvenido Auxiliar: " + Session["user"].ToString();
                }
            }
           
        }

        protected void btn_deslog_Click(object sender,EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/Welcome.aspx");
        }
    }
}