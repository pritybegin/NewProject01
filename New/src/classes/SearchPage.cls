public class SearchPage {
   public List<dept__c> lstDept{get;set;}
        public String strItems{get;set;}
    public String strRegion{get;set;}
    public String strBudget{get;set;}
    public boolean render{get;set;}
    public SearchPage(){
    lstDept= new List<dept__c>();
     }
    
}