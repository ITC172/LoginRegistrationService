using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "RegisterService" in code, svc and config file together.
public class RegisterService : IRegisterService
{
    ShowTrackerEntities ste = new ShowTrackerEntities();

    public int venuelogin(string username, string password)
    {
        int result = ste.usp_venueLogin(username, password);
        int key = 0;

        var bag = (from v in ste.VenueLogins
                  where v.VenueLoginUserName.Equals(username)
                  select new {  v.VenueKey}).FirstOrDefault();

        key = (int)bag.VenueKey;
        return key;
    }

    public bool venueregistration(Venue v, VenueLogin vl)
    {
        bool result = true;
        int result2 = ste.usp_RegisterVenue(v.VenueName, v.VenueAddress, v.VenueCity, v.VenueState, v.VenueZipCode, v.VenuePhone, v.VenueEmail, v.VenueWebPage, v.VenueAgeRestriction, vl.VenueLoginUserName, vl.VenueLoginPasswordPlain);
        if (result2 == -1)
        {
            result = false;
        }return result;
    }
}
