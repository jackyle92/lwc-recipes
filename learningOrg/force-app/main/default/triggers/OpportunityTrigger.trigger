trigger OpportunityTrigger on Opportunity (after update) {

    List<Invoice__c> newInvoices = new List<Invoice__c>();


    for (Opportunity opp:Trigger.new) {
        if(opp.StageName == 'Closed Won' && Trigger.oldMap.get(opp.Id).StageName != 'Closed Won') {
            Invoice__c firstInvoice = new Invoice__c();
            firstInvoice.Amount__c = opp.Amount * 0.5;
            firstInvoice.Opportunity__c = opp.Id;
            newInvoices.add(firstInvoice);

            Invoice__c secondInvoice = new Invoice__c();
            secondInvoice.Amount__c = opp.Amount * 0.3;
            secondInvoice.Opportunity__c = opp.Id;
            newInvoices.add(secondInvoice);

            Invoice__c thirdInvoice = new Invoice__c();
            thirdInvoice.Amount__c = opp.Amount * 0.2;
            thirdInvoice.Opportunity__c = opp.Id;
            newInvoices.add(thirdInvoice);

        }
    }
    insert newInvoices;


}