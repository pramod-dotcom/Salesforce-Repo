public class UpdateAccount {
public static void updatePhone()
{
    list<account> updateAccountList=new list<account>();
    list<account> acclist=[select id,name,phone from account where phone!=null];
    for(account acc:acclist)
    {
        acc.phone='123456789';
        updateAccountList.add(acc);
    }
    if(!updateAccountList.isempty())
    {
        update updateAccountList;
    }
}
}