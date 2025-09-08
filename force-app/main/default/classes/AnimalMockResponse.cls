@isTest
global class AnimalMockResponse implements HttpCalloutMock {
    global httpresponse respond(httprequest req)
    {
    httpresponse res=new httpresponse();
     res.setStatusCode(200);
    res.setheader('Content-Type','application/json');
    res.setbody('{"animals":["Dog","jackle"]}');
    return res;   
    }
   
    
   
}