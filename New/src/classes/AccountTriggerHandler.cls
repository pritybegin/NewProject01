public class AccountTriggerHandler
{
public void InsertContactWithoutExceptionHandling(List<Account> listAcc)
{
try
{
Contact objContact= new Contact();
insert objContact;
}

catch(Exception e)
{
//System.debug('the exception is' +e);
for(Account acc:listAcc)
{
acc.addError('Enter valid input');
}
}
}
}