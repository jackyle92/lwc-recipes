@isTest
private with sharing class ApexTestTrigger {
  @isTest
  static void TestTrigger() {
    List<Contact> lstCont = new List<Contact>();

    for (Integer i = 0; i < 200; i++) {
      Contact cont = new Contact();
      cont.LastName = 'Testing Trigger' + i;
      lstCont.add(cont);
      i++;
    }

    //Test
    Test.startTest();
    insert lstCont;
    Test.stopTest();
  }
}