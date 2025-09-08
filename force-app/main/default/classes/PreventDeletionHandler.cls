public class PreventDeletionHandler {
public static void preventDeletion(list<account> oldAccList)
{
    try{
       set<id>  ids=new set<id>();
    for(account acc:oldAccList)
    {
        ids.add(acc.id);
    }
    set<id> contactids=new set<id>();
    for(contact con:[select id,accountid,name from contact where accountid in : ids])
    {
        contactids.add(con.accountid);
    }
    for(account ac:oldAccList)
    {
        if(contactids.contains(ac.id))
        {
            ac.adderror('You can not delete this account');
        }
    } 
    }
        catch(exception e)
        {
            system.debug('the error is'+e.getmessage());
        }
    
  
    
    //system.debug(oldAccList);
    
}
}