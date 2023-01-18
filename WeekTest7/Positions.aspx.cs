using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeekTest7
{
    public partial class Positions : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddNew_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString))
            {
                using (cmd = new SqlCommand("usp_Positions", con))
                {
                    cmd.Parameters.AddWithValue("@PositionCode", TxtPositionCode.Text);
                    cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);
                    cmd.Parameters.AddWithValue("@Year", DropDownYear.SelectedValue);
                    cmd.Parameters.AddWithValue("@BudgetStrength", TxtBudgetedStrength.Text);
                    cmd.Parameters.AddWithValue("CurrentStrength", TxtCurrentStrength.Text);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        LblMessage.Text = "Position Added Successfully";
                    }
                    else
                    {
                        LblMessage.Text = "Error";
                    }
                    cmd.Dispose();
                    con.Close();
                }
            }
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            TxtPositionCode.Text = "";
            TxtDescription.Text = "";
            TxtCurrentStrength.Text = "";
            TxtBudgetedStrength.Text = "";
        }
    }
}





