@isTest
public class TestDataFactory {
    public static void inputdata(){
        list<account> acclist=new list<account>();
        list<contact> contactlist=new list<contact>();
        for(integer i=0;i<5;i++){
            account acc=new account();
            acc.name='pramod'+i;
            acc.phone='1234567890';
            acclist.add(acc);
        }
        insert acclist;
        for(integer k=0;k<3;k++)
        {
            account acc=acclist[k];
            contact con=new contact();
            con.lastname='limma'+k;
            con.phone=acc.phone;
            con.AccountId=acc.Id;
            contactlist.add(con);
            
        }
        insert contactlist;
    }
}