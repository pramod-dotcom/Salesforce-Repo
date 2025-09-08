@RestResource(urlMapping='/getcontactbyphone/*')
global class ContactPhoneRequestBody {
    @httpGet
    global static string getContactbyphone()
    {
        string phone=restContext.request.params.get('phone');
        list<contact> conlist=[select id,firstname,lastname,phone,email from contact where phone=:phone];
        return JSON.Serialize(conlist[0]);
    }
}