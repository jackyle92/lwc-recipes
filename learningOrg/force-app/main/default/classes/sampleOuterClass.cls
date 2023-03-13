public with sharing class sampleOuterClass {
    public sampleOuterClass() {

    }

    public class stateWrapper {
        public string stateName;
        public Integer contactCount;
        public Integer accountCount;

        // default constructor for innerClass
        public stateWrapper (string stateName, Integer contactCount, Integer accountCount) {
            this.stateName = stateName;
            if (contactCount == null) {
                contactCount = 0;
            }
            this.contactCount = contactCount;
            if (accountCount == null) {
                accountCount = 0;
            }
            this.accountCount = accountCount;
        }
    }

    public static Map<String, stateWrapper> calculateMetrics() {
        Map<string, stateWrapper> stateMap = new Map<String, stateWrapper> ();
        for (AggregateResult ar: [
            SELECT Count(id) cnt, BillingState state 
            FROM  Account 
            WHERE BillingState != null 
            GROUP BY BillingState]) {
                // AggregateResult values are generic objects that need
                // to be casted to specific primitive types
                stateWrapper sw = new stateWrapper((string) ar.get('state'), (Integer)ar.get('cnt'), null);
                stateMap.put(sw.stateName, sw);
        }

        for (AggregateResult ar : [
            SELECT Count(id) cnt, MailingState state 
            FROM Contact 
            WHERE MailingState != null 
            GROUP BY MailingState
        ]) {
            stateWrapper sw = new stateWrapper((string) ar.get('state'), null, null);
            if (stateMap.containsKey(sw.stateName)) {
                sw = stateMap.get(sw.stateName);
            }
            sw.contactCount = (Integer)ar.get('cnt');
            stateMap.put(sw.stateName, sw);
        }
        return stateMap;
        
    }
}