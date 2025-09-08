public class ScheduleBatchApex implements schedulable{
public void execute(schedulableContext sc)
{
    UpdateOppStageToClosedLost batch=new UpdateOppStageToClosedLost();
database.executebatch(batch,5);
}
}