trigger AccountPhoneUpdate on Account (after update) {
if(trigger.isUpdate && trigger.isAfter)
{
    AccountPhoneHanlder.UpdatePhoneNumber(trigger.new,trigger.oldmap);
}
}