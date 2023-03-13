public with sharing class ControllerExtension {
  public Account acc;
  public ControllerExtension(ApexPages.StandardController stdController) {
    this.acc = (Account) stdController.getRecord();
  }

  public String getName() {
    String str = acc.name;
    return str;
  }
}