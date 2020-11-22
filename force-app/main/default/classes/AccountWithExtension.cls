public class AccountWithExtension {
public Account acc {get;set;}
public Contact con {get;set;}
public Opportunity opp {get;set;}

public AccountWithExtension (ApexPages.StandardController stdcontroller){
acc = (Account)stdController.getrecord();
con = new Contact();
opp = new Opportunity();


}

  public pagereference save(){
  insert acc;
  con.accountid = acc.id;
  insert con;
  opp.accountid = acc.id;
  insert opp;
  return null;
 
  }
  }