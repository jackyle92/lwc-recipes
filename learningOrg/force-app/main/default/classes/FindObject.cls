public with sharing class FindObject {
    public FindObject() {

    }
    // find all object
    @AuraEnabled
    public static List<String> getAllObject() {
        try {
            List<String> stdObjectNames = new List<String>();
        for (Schema.SObjectType type: Schema.getGlobalDescribe().values()) {
            String sobjectName = String.valueOf(type);
                stdObjectNames.add(sobjectName);
        }
        stdObjectNames.sort();
        return stdObjectNames;
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
        return null;

        // System.debug(FindObject.getAllObject()[0]);
        
    }
    @AuraEnabled
    public static List<Contact> getContacts(){
        try {
            List<Contact> conts = [SELECT Id, Name, Email FROM Contact LIMIT 10];
            return conts;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}