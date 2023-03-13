public with sharing class account_Methods {
    public account_Methods() {

    }

    public static void afterInsert(List <Account> newList) {
        for (Account a: newList) {
            // code here
        }
    }
    public static void afterUpdate(List<Account> newList, Map<id, Account> oldMap) {
        // for (Integer i = 0; i < newList.size(); i++ ) {
        //     if (newList[i].name != oldList[i].name) {
                
        //     }
        // }

        for (Account a: newList) {
            Account oldAccount = oldMap.get(a.id);
            if (a.name != oldAccount.name){
                
            }
        }
    }
}