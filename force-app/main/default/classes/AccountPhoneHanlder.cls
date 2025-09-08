public class AccountPhoneHanlder {
public static void UpdatePhoneNumber(list<account> acclist,map<id,account> oldacclist)
{
    list<contact> contactlist=new list<contact>();
   set<id> accountids=new set<id>();
    for(account acc:acclist)
    {
        if(acc.phone!=oldacclist.get(acc.id).phone)
        {
            accountids.add(acc.id);
        }
    }
    for(account ac:[select id,name,phone,(select id,name,phone from contacts) from account where id in : accountids])
    {
        for(contact con:ac.contacts)
        {
            con.phone=ac.phone;
            contactlist.add(con);
        }
    }
    update contactlist;
}
}