public with sharing class ListOfProduct {
  public ListOfProduct() {
  }
  @AuraEnabled
  public static List<Product2> showListOfProduct(Integer limitNum) {
    try {
      return [SELECT Id, Name, isActive FROM Product2 LIMIT :limitNum];
    } catch (Exception e) {
      throw new AuraHandledException(e.getMessage());
    }
  }
}