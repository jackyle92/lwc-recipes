public with sharing class AccountListController {
  public AccountListController() {
  }

  // instantiate the standardSetController
  public ApexPages.StandardController con {
    get {
      if (con == null) {
        List<Account> accs = [
          SELECT Id, Name, Type
          FROM Account
          WHERE Name LIKE 'A%'
          LIMIT 10
        ];
      }
      return con;
    }
    set;
  }

  //   public List<Account> getAccounts() {
  //     return (List<Account>) con.getRecords();
  //   }
}