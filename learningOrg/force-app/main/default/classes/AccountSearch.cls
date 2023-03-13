public with sharing class AccountSearch {
  public AccountSearch() {
  }

  @AuraEnabled
  public static List<Account> getAccountData(String textSearch) {
    try {
      textSearch = '%' + textSearch + '%';
      List<Account> accLists = [
        SELECT Id, Name, Industry, Phone, Type
        FROM Account
        WHERE Name LIKE :textSearch
      ];
      return accLists;
    } catch (Exception e) {
      throw new AuraHandledException(e.getMessage());
    }
  }
}