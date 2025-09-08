public class UpdateAccountRecords {
public static void updateRecords()
{
    
    list<account> acclisting=new list<account>();
    for(account acc:[select id,name from account where name like 'test account%'])
    {
       acc.Name=acc.Name+'-updated2.0';
       acclisting.add(acc); 
    }
    update acclisting;
    
}
}