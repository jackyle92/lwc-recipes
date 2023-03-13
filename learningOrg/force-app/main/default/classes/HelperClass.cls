public with sharing class HelperClass {
  public HelperClass() {
  }

  public static void helperMethodForWonOpportunities(List<Opportunity> opp) {
    System.debug('Print this one: ' + opp);
  }

  public static void helperMethodForWonOpportunities(Opportunity opp) {
    System.debug('This is the method that only get one param');
  }
  // Method run for lost opportunities
  public static void helperMethodForLostOpportunities(Opportunity lstOpp) {
    System.debug(lstOpp);
  }
}