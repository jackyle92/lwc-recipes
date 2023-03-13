trigger LimitsAccountTrigger on Opportunity(before insert) {
  switch on Trigger.operationType {
    when BEFORE_INSERT {
      System.debug(
        'Before SOQL - Total Number of SOQL Queries allowed: ' +
        Limits.getLimitQueries()
      );
      System.debug(
        'Before SOQL - Total Number of SOQL Queries used: ' +
        Limits.getQueries()
      );
      List<Opportunity> wonAndLostOpportunities = [
        SELECT Id
        FROM Opportunity
        WHERE
          AccountId IN :Trigger.newmap.keySet()
          AND (StageName = 'Closed Won'
          OR StageName = 'Closed Lost')
      ];
      System.debug(
        'After SOQL - Total Number of SOQL Queries allowed: ' +
        Limits.getLimitQueries()
      );
      System.debug(
        'After SOQL - Total Number of SOQL Queries used: ' + Limits.getQueries()
      );
      for (Opportunity o : wonAndLostOpportunities) {
        if (o.StageName == 'Closed Won') {
          HelperClass.helperMethodForWonOpportunities(o);
        } else if (o.StageName == 'Closed Lost') {
          HelperClass.helperMethodForLostOpportunities(o);
        }
      }
    }
    when else {
    }
  }
}