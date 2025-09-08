public class updateContactDescriptionQueueable implements queueable {
   set<id> accids;
    public updateContactDescriptionQueueable(set<id> accoutids) 
    {
        this.accids=accoutids;
    }
    public void execute(queueableContext qc)
    {
        list<contact> conlist=new list<contact>();
        map<id,string> accindustry=new map<id,string>();
        for(account acc:[select id,industry,name from account where id in : accids])
            {
               accindustry.put(acc.id,acc.industry);
            }
        for(contact con:[select id,accountid,lastname from contact where accountid in :accids])
        {
            string industry=accindustry.get(con.accountid);
            if(industry!=null)
            {
                con.description='this is updated'+industry;
                conlist.add(con);
            }
        }
        update conlist;
    }
}