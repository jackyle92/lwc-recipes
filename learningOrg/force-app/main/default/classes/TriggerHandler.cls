public with sharing virtual class TriggerHandler {
    
    protected public virtual void beforeInsert(){}
    protected public virtual void beforeUpdate(){}
    protected public virtual void beforeDelete(){}
    protected public virtual void afterInsert(List<Task> newTasks){}
    protected public virtual void afterUpdate(List<Task> newTasks, Map<Id, sObject> oldTaskMap){}
    protected public virtual void afterDelete(){}
    protected public virtual void afterUndelete(){}
    public void run(){
        switch on Trigger.operationType {
            when AFTER_INSERT {
                this.afterInsert((List<Task>)Trigger.new);
            }
            when AFTER_UPDATE {
                this.afterUpdate((List<Task>)Trigger.new, Trigger.oldMap);
            }
        }
    }
}