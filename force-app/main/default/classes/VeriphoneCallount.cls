public class VeriphoneCallount {
    public class wrapperClass{
        public string status;
        public boolean phone_valid;
    }
@future(callout=true)
public static void verifyPhoneNumber(id contactId,string phone)
{
    api_key_information__mdt confInfor=[select api_key__c from api_key_information__mdt where DeveloperName='key_value' limit 1];
    string apiKey=confInfor.api_key__c;
    string endpoint='callout:callout_to_veriphione/v2/verify?phone=' + phone + '&key=' +apiKey;
    http http=new http();
    httprequest req=new httprequest();
    req.setendpoint(endpoint);
    req.setmethod('GET');
    httpresponse response=http.send(req);
                    if(response.getstatuscode()==200)
                    {
                       wrapperClass result=(wrapperClass)JSON.Deserialize(response.getbody(),wrapperClass.class); 
                       //map<string,object> result=(map<string,object>)JSON.DeserializeUntyped(response.getbody());
                        //
                        //boolean isvalid=(boolean) result.get('phone_valid');
                   boolean isvalid=result.phone_valid;
                        system.debug(isvalid);
           contact con=[select id,name,Phone_Verification__c from contact where id =:contactId];
    if(isvalid==true)
    {
       con.Phone_Verification__c='Valid'; 
    }
    else{
        con.Phone_Verification__c='invalid';
    }
    update con;
                    
}
  }
    
}