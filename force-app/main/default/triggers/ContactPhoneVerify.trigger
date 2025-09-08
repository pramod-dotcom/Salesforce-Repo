trigger ContactPhoneVerify on Contact (after insert,after update) {
if(trigger.isAfter && trigger.isInsert)
{
    for(contact con:trigger.new)
    {
        if(con.phone!=null)
        {
            VeriphoneCallount.verifyPhoneNumber(con.id,con.Phone);
        }
    }
}
    if(trigger.isAfter && trigger.isUpdate)
{
    for(contact con:trigger.new)
    {
        if(con.phone!=null && con.Phone!=trigger.oldmap.get(con.id).phone)
        {
            VeriphoneCallount.verifyPhoneNumber(con.id,con.Phone);
        }
    }
}
}