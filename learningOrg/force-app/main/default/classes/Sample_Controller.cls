public with sharing class Sample_Controller {
  public Sample_Controller() {
  }

  @AuraEnabled(cacheable=true)
  public static List<String> getPicklistValue() {
    try {
      Map<String, schema.SObjectType> mapObjects = Schema.getGlobalDescribe();
      Map<String, Schema.SObjectField> accountFields = mapObjects.get('lead')
        .getDescribe()
        .fields.getMap();
      List<schema.PicklistEntry> lstLeadSource = accountFields.get('Industry')
        .getDescribe()
        .getPicklistValues();
      List<String> pickListValue = new List<String>();
      for (schema.PicklistEntry str : lstLeadSource) {
        pickListValue.add(str.label);
        System.debug('Picklistvalue ' + str.label);
      }
      return pickListValue;
    } catch (Exception e) {
      System.debug('Exception: ' + e.getMessage());
      return new List<String>();
    }
  }

  @AuraEnabled
  public static List<Lead> getListOfLeadRecords(String industryValue) {
    try {
      return [
        SELECT Id, Name, Industry
        FROM Lead
        WHERE Industry = :industryValue
      ];
    } catch (Exception e) {
      throw new AuraHandledException(e.getMessage());
    }
  }

  @AuraEnabled(cacheable=true)
  public static List<String> getListProduct(String priceBookId) {
    try {
      // List<PricebookEntry> lstPriceBookEntry = ;
      List<String> productListName = new List<String>();

      for (PricebookEntry pEntry : [
        SELECT Id, Product2Id, Product2.Name
        FROM PricebookEntry
        WHERE Pricebook2Id = :priceBookId
      ]) {
        productListName.add(pEntry.Product2.Name);
      }
      return productListName;
    } catch (Exception e) {
      throw new AuraHandledException(e.getMessage());
    }
  }
}