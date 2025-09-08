public with sharing class ApexSecurityDemo {
public static list<account> getaccounts()
{
    list<account> acclist=[select id,name,phone from account];
    return acclist;
}
}