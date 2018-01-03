public class ContactSearch {
    public static List<Contact> searchForContacts(String lName, String zip) {
         List<Contact> conList = [SELECT Id, Name, LastName, MailingPostalCode
                                 FROM Contact
                                 WHERE LastName = :lName AND MailingPostalCode = :zip];
        return conList;
        
    }

}