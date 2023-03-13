public with sharing class AccountUpdateTriggerHandler {
  public AccountUpdateTriggerHandler() {
  }

  public final static Integer INTE = 123;

  public static void accountUpdateHandler(List<Account> lstAcct) {
    List<Account> newList = new List<Account>();
    Integer counter = 1;
    for (Account acct : lstAcct) {
      acct.Name += counter;
      counter++;
      newList.add(acct);
    }

    try {
      insert newList;
    } catch (Exception e) {
      System.debug('The insert was failed');
    }
  }
}