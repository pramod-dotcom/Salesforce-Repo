public class MakingCalloutToExternal {
  public class wrapperClasses
  {
      public list<string> animals;
  }
   
public static void callOut()
{
    http ht=new http();
    httprequest req=new httprequest();
    req.setmethod('GET');
    req.setendpoint('https://th-apex-http-callout.herokuapp.com/animals');
    httpresponse response=ht.send(req);
    
    if(response.getstatuscode()==200)
    {
        system.debug(response.getbody());
        list<ValuesExternal__c> insertvalues=new list<ValuesExternal__c>();
        wrapperClasses exvalue=(wrapperClasses) JSON.Deserialize(response.getbody(),wrapperClasses.class);
        //map<string,object> objectValue=(map<string,object>)JSON.DeserializeUntyped(response.getbody());
        //list<object> objects=(list<object>)objectValue.get('animals');
        /*for(object ob:objects)
        {
           ValuesExternal__c ve=new ValuesExternal__c();
            ve.Name=string.valueof(ob);
            insertvalues.add(ve);
        }*/
        //list<string> animals=exvalue.values;
        //system.debug(animals);
       if(exvalue!=null)
        {
          for(string  nm : exvalue.animals)
        {
           ValuesExternal__c nam=new ValuesExternal__c();
            nam.name=nm;
            insertvalues.add(nam);
        }  
        }
        else{
            system.debug('object is having null value');
        }
        //system.debug(exvalue.values);
        
        insert insertvalues;
    }
}
}