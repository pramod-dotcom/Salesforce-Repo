public with sharing class accountClass {
    @auraenabled(cacheable=true)
    public static list<account> getaccounts()
    {
        return [select name,phone from account limit 10];
    }
}