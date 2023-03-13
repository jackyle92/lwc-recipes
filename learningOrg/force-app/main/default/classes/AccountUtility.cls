public with sharing class AccountUtility {
    public AccountUtility() {

    }

    public static void viewAnnualRevenue() {
        List<Account> accountsList = new List<Account>();
        accountsList = [SELECT Name, AnnualRevenue FROM Account];
        for (Account theAccount: accountsList) {
            String acctRev = theAccount.Name + ':' + theAccount.AnnualRevenue;
            System.debug(acctRev);
        }

    }
}