@isTest
public class PreventDeletionHandlerTest {
    
    @isTest
    public static void testPreventAccountDeletion() {
        // Setup account and related contact
        Account acc = new Account(Name = 'Pramod', Phone = '12345');
        insert acc;
        
        Contact con = new Contact(LastName = 'Limma', Phone = '987456', AccountId = acc.Id);
        insert con;

        // Attempt to delete the account
        Test.startTest();
        Database.DeleteResult result = Database.delete(acc, false);
        Test.stopTest();

        // Check for deletion failure
        System.assertEquals(false, result.isSuccess(), 'Deletion should fail due to related contact.');
        System.assertEquals('You can not delete this account', result.getErrors()[0].getMessage());
    }

    @isTest
    public static void testAllowAccountDeletion() {
        // Setup account without contact
        Account acc = new Account(Name = 'NoContact');
        insert acc;

        // Attempt to delete the account
        Test.startTest();
        Database.DeleteResult result = Database.delete(acc, false);
        Test.stopTest();

        // Check for successful deletion
        System.assertEquals(true, result.issuccess(), 'Account should be deleted as it has no related contacts.');
    }
}