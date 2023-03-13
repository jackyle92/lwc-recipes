public without sharing class Message {
  @AuraEnabled
  public static string getInputMessage() {
    try {
      return 'Input message from Apex';
    } catch (Exception e) {
      throw new AuraHandledException(e.getMessage());
    }
  }
}