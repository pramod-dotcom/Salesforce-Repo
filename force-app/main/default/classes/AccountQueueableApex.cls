public class AccountQueueableApex implements queueable {
public void execute(QueueableContext qc)
{
    list<account> acclist=[select id,name,industry from account where lastmodifieddate=today and industry!=null];
    set<id> accountids=new set<id>();
    for(account acc:acclist)
    {
        accountids.add(acc.id);
    }
    if(!accountids.isempty())
    {
        system.enqueueJob(new updateContactDescriptionQueueable(accountids));
    }
}
}