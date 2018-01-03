public with Sharing class  AccountSearch  {
    public List<Account> lstAccount{get; set;}
    
    public String strAccNum{get; set;}
    public String AccountId {get; set;}
    public String strName{get; set;}
    public Account strNamePS{get; set;}
    public String strPhone{get; set;}
    public boolean render{get; set;}
    public AccountSearch() {
        lstAccount = new List<Account>();
        render = false;
        system.debug('____render'+render);
        this.strAccNum = strAccNum;
        this.strName = strName;
        this.strPhone = strPhone ;
        
        //FetchData();
        
    }
    public void FetchData() {
        try{
            System.debug('namw--------------------------------------------------------------->' +strName);
            lstAccount = new List<Account>();
            String strQuery = '';
            strQuery += 'SELECT id,Name,accountnumber,phone FROM Account WHERE ';
            if(strAccNum != null && !string.isblank(strAccNum)) {
                strQuery += 'AccountNumber =\''+String.escapesinglequotes(strAccNum)+'\' AND';
            }
            if(strName!= null && strName!= '') {
                strQuery += ' Name =\''+String.escapesinglequotes(strName) +'\' AND';
    
            }
            if(strPhone!= null && strPhone!= '') {
                strQuery += ' Phone =\''+String.escapesinglequotes(strPhone) +'\' AND';
            }
            if(strQuery.endsWith('AND')) {
                system.debug('____Inside AND');
                strQuery = strQuery.removeEndIgnoreCase('AND');
                
            }
            
            system.debug('_____strQuery'+strQuery); 
            lstAccount= Database.query(strQuery);
            system.debug('____lstAccount'+lstAccount);
            render = true;
            
            system.debug('____render2'+render);
            
        }
        catch(exception e){
        
    }  
    }
    public void clearPage()
    {
        strAccNum = ' ';
        strName= ' ';
        strPhone= ' ';
        render=false;
    }
    
   }