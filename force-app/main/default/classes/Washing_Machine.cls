public class Washing_Machine {
public void wash()
{
   system.debug('the washing has been started....');
}
    public void rinse()
{
    system.debug('the rinse has been started....');
}
    public void drain()
{
  system.debug('the drain has been started....');  
}
    public void pressButton(string button)
    {
        // conditional statement
        if(button=='Wash')
        {
            wash();
        }
        else if(button=='Drain')
        {
          drain();  
        }
        else if(button=='Rinse'){
            rinse();
        }
        else
        {
            system.debug('invalid button press');
        }
    }
}