trigger emailCheck on Contact (before update,before delete, after update)
 {
 if (trigger.isUpdate)
     {
     if(trigger.isBefore)
         {
         for(Contact con:Trigger.New)
              {
               con.description='before.update';
               }
               Util.demoIsexecuting();
 }        
      else 
         {
  
     Map<Id,Contact> o=new Map<Id,Contact>();
     o=trigger.oldMap;
     for(Contact n:Trigger.New)
        {  
      
        Contact old = new Contact();   
        old = o.get(n.Id); 
        if(old.Email!=null && n.Email != old.Email)
            {
             n.Email.addError('Email cannot be changed');  
            }
         }

     }
     }
     
 else if (trigger.isDelete)
     {
     for(Contact m:trigger.old)
        {
        if(m.AccountId!= NULL)
          {
              m.addError('Contact cannot be changed');
          }
        }
     }
}