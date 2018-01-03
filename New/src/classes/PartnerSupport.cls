public class PartnerSupport
{
    public string Ids{get; set;}
  public Account strName{get; set;}
 public void Support()
     {
     Ids= ApexPages.currentPage().getParameters().get('Id');
     strName= [SELECT  Name FROM Account WHERE Id= : Ids];
     this.strName=strName;
     }
 }