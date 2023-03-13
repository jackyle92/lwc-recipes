public with sharing class MyPageController {
  public MyPageController() {
    Id accountId = ApexPages.currentPage().getParameters().get('acctId');
    acct = [SELECT Name FROM Account WHERE Id = :accountId LIMIT 1];
  }

  public Account acct;
  public Account getAccount() {
    return acct;
  }
}