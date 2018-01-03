public class Casetest {

    public Case supportCase {get;set;}
    public Casetest(ApexPages.StandardController Controller) {
    supportCase = New Case();
    this.supportCase = (Case)Controller.getRecord();
    System.debug('account name' + this.supportCase .CaseNumber);
    System.debug('account id' + this.supportCase.id);
   }



    public pagereference Save()
    {
        insert supportCase;
        PageReference pg = Page.PartnerSupportThankYou;
        pg.setredirect(true);
        return pg;
    }


}