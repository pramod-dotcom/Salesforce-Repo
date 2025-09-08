@istest
public class AccountPhoneHanlderTest {
@istest
    public static void testAccountPhone()
    {
        TestDataFactory.inputdata();//testdata --
        list<account> accUpdates=new list<account>();
        list<account> acclist=[select id,name,phone from account]; 
        for(account acc:acclist)
        {
            acc.phone='9638527410';
            accUpdates.add(acc);
        }
        
        test.startTest();
        update accUpdates;
        test.stopTest();
        list<contact> contactlist=[select id,name,phone from contact];
        for(contact con:contactlist)
        {
            system.assertEquals('9638527410',con.phone);
        }
                
    }
}