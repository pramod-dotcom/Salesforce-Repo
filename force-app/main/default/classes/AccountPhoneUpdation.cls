public class AccountPhoneUpdation {
public static void updateAccounts()
{
   account acc=new account();
    try{
        insert acc;
        
    }
    
    catch(exception ex)
    {
        system.debug('there is an error'+ex.getmessage());
        system.debug('line number'+ex.getlinenumber());
        system.debug('the cause'+ex.getcause());
        throw new myException('the record is not inserted due to some reason');
    }
}
}