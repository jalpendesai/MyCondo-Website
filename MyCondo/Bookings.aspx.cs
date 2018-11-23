﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class Bookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreatebooking_Click(object sender, EventArgs e)
        {
            Booking myBooking = new Booking();

            myBookin
            try
            {
                SqlCommand command = new SqlCommand();
                command.CommandText = "InsertNews";
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("Title", SqlDbType.NVarChar);
                command.Parameters["Title"].Value = myFeed.Title;
                command.Parameters.Add("Description", SqlDbType.NVarChar);
                command.Parameters["Description"].Value = myFeed.Description;
                command.Parameters.Add("Expirydate", SqlDbType.NVarChar);
                command.Parameters["Expirydate"].Value = myFeed.Expirydate;
                command.Parameters.Add("Priority", SqlDbType.NVarChar);
                command.Parameters["Priority"].Value = myFeed.Priority;
                command.Parameters.Add("GroupName", SqlDbType.NVarChar);
                command.Parameters["GroupName"].Value = myFeed.GroupName;

                DataConnection myConnection = new DataConnection();
                myConnection.ExecuteNonQuery(command);
                Response.Redirect("Home.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}