global with sharing class FutureClassAccountUpdateTrigger {
    public FutureClassAccountUpdateTrigger() {

    }
    @future
    public static void accountUpdateAfterTriggerHandler() {

        Map<id, Opportunity> mapOpp = new Map<Id, Opportunity>([SELECT Id, Name FROM Opportunity]);
        System.debug(mapOpp);
    }
}