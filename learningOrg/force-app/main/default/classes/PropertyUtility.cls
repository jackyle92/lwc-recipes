public with sharing class PropertyUtility {
    public PropertyUtility() {

    }

    public static void newListedProperties() {
        List<Property__c> newPropList = new List<Property__c>(
            [SELECT Name, Broker__r.Email__c, Days_On_Market__c FROM Property__c WHERE Date_Listed__c = LAST_N_DAYS:30]
        );

        for (Property__c theProperty: newPropList) {
            String propEmail = theProperty.Name + ':' + theProperty.Broker__r.Email__c;
            System.debug(propEmail);
        }
    }
}