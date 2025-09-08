public with sharing class FetchContactrecords {
    @Auraenabled(cacheable=true)
    public static list<contact> fetchContacts()
    {
        list<contact> contactlist=[select firstname,lastname,phone,email from contact limit 10];
        return contactlist;
    }
    @Auraenabled
    public static list<account> fetchAccounts()
    {
        list<account> accountslist=[select name,phone from account limit 10];
        return accountslist;
    }
}