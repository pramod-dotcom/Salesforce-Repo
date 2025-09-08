trigger PopulateInformationOf_Opp on Opportunity (after insert,after update,after delete) {
if(trigger.isAfter && trigger.isInsert)
{
    TriggerHandler.insertOpportunity(trigger.new);//trigger.new = list
}
    if(trigger.isAfter && trigger.isUpdate)
{
    TriggerHandler.updateOppAmount(trigger.new,trigger.oldmap);
}
    if(trigger.isAfter && trigger.isdelete)
{
    TriggerHandler.deleteOppoAmount(trigger.old);
}
}