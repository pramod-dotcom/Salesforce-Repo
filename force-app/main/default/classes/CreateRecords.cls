public class CreateRecords {
public static void insertRecords()
{
    list<account> acclist=new list<account>();
    for(integer i=1;i<=160;i++){
        account acc=new account();
        acc.Name='Test account'+i;
        //acclist.add(acc);
        insert acc;
    }
   insert acclist;
    
}
}