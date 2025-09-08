trigger PreventAccountDeletion on Account (before delete) {
if(trigger.isBefore && trigger.isDelete)
{
    PreventDeletionHandler.preventDeletion(trigger.old);
}
}