trigger DemoTrigger on Contact (before insert) {
if(trigger.isBefore && trigger.isInsert)
{
    for(contact con:trigger.new)
    {
        if(con.LeadSource=='Web')
        {
            con.Description='this is come from web';
        }
    }
}
}