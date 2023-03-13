trigger TaskTrigger on Task (after insert, after update) {
    TaskTriggerHandler handler = new TaskTriggerHandler();
    handler.run();
}