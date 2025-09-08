public class TriggerHandler {
public static void insertOpportunity(list<opportunity> oppList)
{
    list<account> acclist=new list<account>();
    set<id> ids=new set<id>();
    for(opportunity opp:oppList)
    {
        ids.add(opp.accountid);
        system.debug(opp.accountid);
    }
    map<id,decimal> amounts=new map<id,decimal>();
    for(aggregateResult agr:[select accountid,sum(amount) totalAmt from
                             opportunity where accountid in : ids group by accountid])
    {
        id accountid=(id)agr.get('accountid');
        decimal amount=(decimal)agr.get('totalAmt');
        amounts.put(accountid,amount);
    }
    for(account acc:[select id,name,annualrevenue from account where id in : ids])
    {
      acc.AnnualRevenue=amounts.get(acc.id);
      acclist.add(acc);  
    }
     system.debug(acclist);
    update acclist;
}
   public static void updateOppAmount(list<opportunity> oplist,map<id,opportunity> oldopplist)
   {
       list<account> aclisting=new list<account>();
       set<id> updatedIds=new set<id>();
       for(opportunity op:oplist)
       {
           decimal amount=op.Amount;
           decimal oldamount=oldopplist.get(op.id).amount;
           if(amount!=oldamount)
           {
             updatedIds.add(op.AccountId);  
           }
       }
       map<id,decimal> sumAmount=new map<id,decimal>();
       for(aggregateResult agr:[select accountid,sum(amount) totalAmt from
                             opportunity where accountid in : updatedIds group by accountid])
    {
        id accountid=(id)agr.get('accountid');
        decimal amount=(decimal)agr.get('totalAmt');
        sumAmount.put(accountid,amount);
        
   }
       for(account ac:[select id,name,annualrevenue from account where id in :updatedIds])
       {
           ac.annualrevenue=sumAmount.get(ac.id);
           aclisting.add(ac);
       }
       update aclisting;
 
}
    public static void deleteOppoAmount(list<opportunity> oldOpportunityList)
    {
        delete oldOpportunityList;
    }
}