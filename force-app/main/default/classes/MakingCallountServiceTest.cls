@isTest
public class MakingCallountServiceTest {
@isTest
    public static void positiveTesting()
    {
        Test.setMock(HttpCalloutMock.class,new AnimalMockResponse());
        test.startTest();
        MakingCallountService.makeCallout();
        test.stopTest();
        system.assertequals(true,true,'successfull');
    }
    @istest
    public static void negativeTesting()
    {
        Test.setMock(HttpCalloutMock.class,new AnimlaCallountMockfail());
        test.startTest();
        MakingCallountService.makeCallout();
        test.stopTest();
        system.assertequals(true,true,'error block');
    }
}