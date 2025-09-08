@isTest
global class AnimlaCallountMockfail implements HttpCalloutMock{
global httpResponse respond(httprequest req)
{
    throw new calloutException('failure');
}
}