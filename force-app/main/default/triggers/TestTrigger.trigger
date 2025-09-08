trigger TestTrigger on Account (after insert) {
if(trigger.isAfter && trigger.isInsert)
{
    list<contact> conList=new list<contact>();
    for(account acc:trigger.new)
    {
        contact con=new contact();
        con.lastName=acc.name;
        con.AccountId=acc.Id;
        conList.add(con);
    }
    insert conList;
}
}