public with sharing class CaseTriggerHandler {
  public CaseTriggerHandler() {
  }
  public static void updateLogInformation(List<Case> lstCase) {
    List<Log__c> logs = new List<Log__c>();
    for (Case c : lstCase) {
      Log__c log = new Log__c();
      log.Case_Information__c = 'Subject: ' + c.Subject + '\n' + c.Description;
      logs.add(log);
    }
    insert logs;
  }
}