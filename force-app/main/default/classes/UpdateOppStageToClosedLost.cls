public class UpdateOppStageToClosedLost implements database.batchable<sObject> {
public database.querylocator start(database.batchableContext bc)
{
    return database.getquerylocator('select Id,Name,LastModifiedDate,StageName ' + 'from Opportunity' +
                                     ' where StageName = \'Prospecting\'' + ' AND LastModifiedDate = LAST_N_MONTHS:6');
}
    public void execute(database.batchableContext bc,list<opportunity> oppList)
{
    for(opportunity opp:oppList)
    {
        opp.StageName='Closed Lost';
    }
    update oppList;
}
    public void finish(database.batchableContext bc)
{
     system.debug('all the records updated successfully');    
}
}