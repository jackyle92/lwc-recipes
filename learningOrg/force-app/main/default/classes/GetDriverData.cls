public with sharing class GetDriverData {
  @AuraEnabled(cacheable=true)
  public static List<sObject> fetchLookUpValues(
    String searchKey,
    String fieldName,
    String ObjectName,
    String keyField
  ) {
    List<sObject> returnList = new List<sObject>();
    String sQuery =
      'select ' +
      fieldName +
      ',' +
      keyField +
      ' from ' +
      ObjectName +
      ' LIMIT 5000';
    List<sObject> lstOfRecords = Database.query(sQuery);
    for (sObject obj : lstOfRecords) {
      returnList.add(obj);
    }
    return returnList;
  }
}