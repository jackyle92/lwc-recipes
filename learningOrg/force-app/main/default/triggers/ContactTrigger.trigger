trigger ContactTrigger on Contact(before insert) {
  for (Contact cont : Trigger.new) {
    System.debug(cont.Id);
  }
}