public with sharing class AccountHandler {
    public AccountHandler() {

    }

    public static void insertAccount(Integer numOfNewAccount) {
        List<Account> addAccounts = new List<Account>();
        Integer N = 0;
        while(N < numOfNewAccount) {
            Account store = new Account();
            store.Name = 'Acme' + ' Inc ' + N;
            store.AccountNumber = 'A000' + N;
            addAccounts.add(store);
            N++;
        }
        
        try {
            insert addAccounts;
            System.debug('Data inserted successful');
        } catch (DmlException ex) {

            System.debug('Error' + ex.getMessage());
        }
    }
}