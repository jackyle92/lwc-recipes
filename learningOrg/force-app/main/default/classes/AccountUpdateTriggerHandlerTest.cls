@isTest
private with sharing class AccountUpdateTriggerHandlerTest {
    public AccountUpdateTriggerHandlerTest() {

    }

    @TestSetup
    static void makeData(){
        List<Account> lstAcct = new List<Account>();
        Account acc1 = new Account(Name = 'Jacky 1');
        lstAcct.add(acc1);
        Account acc2 = new Account(Name = 'Jacky 2');
        lstAcct.add(acc2);
        
        insert lstAcct;
    }

    @isTest
    private static void accountUpdateHandlerTest() {
        List<Account> lstAcct = [SELECT Id, Name FROM Account Limit 10];

        AccountUpdateTriggerHandler.accountUpdateHandler(lstAcct);
    }
}