public with sharing class CustomController {
  public List<Account> getAccounts() {
    List<Account> result = [
      SELECT Id, Name, BillingCity
      FROM Account
      WHERE BillingCity != NULL
      LIMIT 10
    ];
    return result;
  }
}