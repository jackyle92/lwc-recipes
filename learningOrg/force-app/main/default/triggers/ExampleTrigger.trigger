trigger ExampleTrigger on Contact (after insert, after delete) {
    if (Trigger.isInsert) {
        Integer recordCount = Trigger.New.size();
        // call a utility method from another class
        EmailManager.sendEmail();
    } else if (Trigger.isDelete) {
        // process after delete
    }
}