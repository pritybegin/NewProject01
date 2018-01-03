public class RandomContactFactory {
public static List<Contact> generateRandomContacts(Integer CNumber,string PostalCode)
{
List<Contact> lstContact = new List<Contact>();
for(Integer i = 0 ; i< CNumber;i++)
{
   lstContact.add(new Contact (FirstName = 'Test' + i,LastName = PostalCode ));

}
insert lstContact;
return lstContact;
}

}