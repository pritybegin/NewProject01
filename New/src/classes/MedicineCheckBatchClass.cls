global class MedicineCheckBatchClass implements Database.Batchable<sObject>
{
global Database.QueryLocator start(Database.BatchableContext BC)
{
Date expiryDate = System.today();
String strAvailable='In Stock ' ;
String strQuery= 'Select Id, Expiry_Date__c,Availibility__c FROM Medicine__c WHERE Availibility__c=strAvailable AND Expiry_date__c<=expiryDate';
return Database.getQueryLocator(strQuery);
}

global void execute(Database.BatchableContext BC,List<medicine__c>listMedicine)
{
List<Medicine__c> listupdatedMedicine= new list<Medicine__c>();

for(Medicine__c objMedicine:listMedicine)
{
objMedicine.Availibility__c='Out of stock';
listUpdatedMedicine.add(objMedicine);
}
update listUpdatedMedicine;
}
global void finish(Database.BatchableContext BC){

}
}