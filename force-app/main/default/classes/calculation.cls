public class calculation {
public static void calculate(integer num)
{
    try{
       integer result=num/0; 
    }
   
   catch(exception ex)
   {
       system.debug('there an error'+ex.getmessage());
   }
    finally
    {
        system.debug('there is an error');
    }
}
}