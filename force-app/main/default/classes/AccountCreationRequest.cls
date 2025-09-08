@RestResource(urlMapping='/accountcreationfromRequest/*')
global class AccountCreationRequest {
    @httpPost
    global static string createAccouny(){
        restRequest request=restcontext.request;
        
        string requestbody=request.requestBody.tostring();
        map<string,object> accountdata=(map<string,object>)JSON.DeserializeUntyped(requestbody);
        account acc=new account();
        acc.name=(string)accountdata.get('Name');
        acc.phone=(string)accountdata.get('Phone');
        acc.Industry=(string)accountdata.get('Industry');
        insert acc;
        
        return 'account with id'+acc.id;
        
    }
}