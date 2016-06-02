using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ServiceReference1.RegisterServiceClient sr1 = new ServiceReference1.RegisterServiceClient();
        ServiceReference1.Venue v = new ServiceReference1.Venue();
        ServiceReference1.VenueLogin vl = new ServiceReference1.VenueLogin();
        v.VenueName = VenueNameEntry.Text;
        v.VenueAddress = VenueAddressEntry.Text;
        v.VenueCity = VenueCityEntry.Text;
        v.VenueState = VenueStateEntry.Text;
        v.VenueZipCode = VenueZipEntry.Text;
        v.VenuePhone = VenuePhoneEntry.Text;
        v.VenueEmail = VenueEmailEntry.Text;
        v.VenueWebPage = VenueWebEntry.Text;
        int age = 0;
        bool goodAge = int.TryParse(VenueAgeEntry.Text,out age);
        v.VenueAgeRestriction = age;
        vl.VenueLoginUserName = VenueUsernameEntry.Text;
        vl.VenueLoginPasswordPlain = VenuePasswordEntry.Text;
        bool result = sr1.venueregistration(v, vl);
        if (result)
        {
            errorDisplay.Text = "Registered";

        }
        else
        {
            errorDisplay.Text = "Try again later";
        }


    }
}