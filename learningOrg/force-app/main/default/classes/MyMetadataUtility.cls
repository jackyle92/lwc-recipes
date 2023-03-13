public with sharing class MyMetadataUtility {
    public MyMetadataUtility() {

    }

    private static My_Metadata__mdt myMetadata;
    static {
        myMetadata = [SELECT  Id, Name__c FROM My_Metadata__mdt LIMIT 1];
    }
    public static My_Metadata__mdt getMyMetadata() {
        return myMetadata;
    }
}