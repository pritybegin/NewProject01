trigger AccountTrigger on Account (after Insert,before insert) {
if(Trigger.isInsert && Trigger.isBefore)
{
    for(Account acc:trigger.new)
    {
        //acc.LastName = 'test123';
    }
}
if(Trigger.isInsert && Trigger.isAfter)
{
AccountTriggerHandler objAccountTriggerHandler=new AccountTriggerHandler();
objAccountTriggerHandler.insertContactwithoutExceptionHandling(Trigger.new);
}
}