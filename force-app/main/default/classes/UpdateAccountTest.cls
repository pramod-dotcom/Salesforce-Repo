@isTest
public class UpdateAccountTest {
@isTest
    public static void testAccountUpdate()
    {
        list<account> acclist=new list<account>();
      for(integer i=0;i<5;i++)
      {
          account acc=new account();
          acc.name='pramod'+i;
          acc.phone='457896123';
          acclist.add(acc);
      }
        insert acclist;
        test.startTest();
        UpdateAccount.updatePhone();
        test.stopTest();
        list<account> aclist=[select id,name,phone from account where id in :acclist];
        
        system.assertEquals('123456789',aclist[0].phone);
        
        
    }
}