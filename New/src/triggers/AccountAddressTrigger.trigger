trigger AccountAddressTrigger on Account (before insert) {
     for(Account a : Trigger.new){
        If (a.Match_Billing_Address__c == true) {
            a.ShippingPostalCode = a.BillingPostalCode;
        }  
     }
}