trigger CaseTrigger on Case(after insert, after update) {
  switch on Trigger.operationType {
    when AFTER_INSERT {
      CaseTriggerHandler.updateLogInformation(Trigger.new);
    }
    when AFTER_UPDATE {
      CaseTriggerHandler.updateLogInformation(Trigger.new);
    }
  }
}