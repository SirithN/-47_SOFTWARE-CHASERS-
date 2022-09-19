using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectAirlines
{
    public partial class LoginPage : System.Web.UI.Page
    {

        //ConfigurationManager.ConnectionString["ConnectionString"].ConnectionString;
        static string strConnString = "Integrated Security=False" +
                    ";Database=Project_Airline_DB; Server=W-H44PY03-0; uid=sa; Password=admin";
        SqlCommand com;
        SqlDataAdapter sqlda;
        string str;
        DataTable dt;
        int RowCount;
        protected void Page_Load(object sender, EventArgs e)
        {



        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string Email = txtUserName.Text.Trim();
            string Password = txtPassword.Text.Trim();
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "Select * from Admin";
            com = new SqlCommand(str);
            sqlda = new SqlDataAdapter(com.CommandText, con);
            dt = new DataTable();
            sqlda.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                Email = dt.Rows[i]["AdminUName"].ToString();
                Password = dt.Rows[i]["AdminPass"].ToString();
                if (Email == txtUserName.Text && Password == txtPassword.Text)
                {
                    Session["Email"] = Email;
                    Response.Redirect("AdminHomePage.aspx");
                }
                else
                {
                    lblError.Text = "Invalid Email or Password! Please try again!";
                }
            }

        }
        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    if (FormsAuthentication.Authenticate(txtUserName.Text, txtPassword.Text))
        //    {

        //        FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
        //    }
        //}


    }
}