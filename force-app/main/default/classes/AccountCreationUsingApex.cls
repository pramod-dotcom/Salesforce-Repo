public with sharing class AccountCreationUsingApex {
    @AuraEnabled
   public static void accountCreation(string accName, string phoneNumber)
   {
    account acc=new account();
    acc.name=accName;
    acc.phone=phoneNumber;
    insert acc;
   }
}