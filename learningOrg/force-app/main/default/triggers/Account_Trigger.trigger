trigger Account_Trigger on Account (before update, after update, after insert) {
  if(Trigger.isupdate) {
    if(Trigger.isbefore){
      AccountUpdateTriggerHandler.accountUpdateHandler(Trigger.new);
    }
  }

  if(Trigger.isInsert) {
    FutureClassAccountUpdateTrigger.accountUpdateAfterTriggerHandler();
  }

  if(Trigger.isInsert) {
    System.debug('Love you so much');
  }
}