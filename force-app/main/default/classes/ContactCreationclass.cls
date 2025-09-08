public with sharing class ContactCreationclass {
    @AuraEnabled
   public static void createcontacts(string firstname,string lastname, string phone, string emails)
   {
    try {
        contact con=new contact();
    con.FirstName=firstname;
    con.LastName=lastname;
    con.Phone=phone;
    con.Email=emails;
    insert con;
    }
    catch(exception ex)
    {
        system.debug('there is an error');
    }
    
   }
}