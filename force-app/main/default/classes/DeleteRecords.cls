public class DeleteRecords {
public static void deleteRec()
{
    list<account> acclist=[select id,name from account where createddate=today];
    if(!acclist.isempty())
    {
        delete acclist;
    }
}
}