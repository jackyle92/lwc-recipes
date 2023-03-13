// Send a business proposal to each new Contact
trigger Proposal on Contact (before insert) {
  // 1. --> Create master list to hold the emails we'll send
  List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();

  for(Contact myCont: Trigger.new) {
    if(myCont.Email != null && myCont.FirstName != null) {
      // 2. --> Create new Email
      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

      // 2 --> Set list of people who should get the email
      List<String> sendTo = new List<String>();
      sendTo.add(myCont.Email);
      mail.setToAddresses(sendTo);

      // 3 --> set who the email is sent from
      mail.setReplyTo('jacky.lee@crosscloudpartners.com');
      mail.setSenderDisplayName('Jacky Lee');

      // (Optional) Set list of people who should be CC'ed
      List<String> ccTo = new List<String>();
      ccTo.add('lehongthang.hue@gmail.com');
      mail.setCcAddresses(ccTo);

      // --> Set email contents
      mail.setSubject('BUSINESS PROPOSAL');
      String body = 'Dear ' + myCont.FirstName + ', ';
      body += 'I confess this will come as a surprise to you.';
      body += 'I am John Alliston CEO of the Bank of Nigeria.';
      body += 'I write to request your cooperation in this ';
      body += 'urgent matter as I need a foreign partner ';
      body += 'in the assistance of transferring $47,110,000 ';
      body += 'to a US bank account. Please respond with ';
      body += 'your bank account # so I may deposit these funds.';
      mail.setHtmlBody(body);

      mails.add(mail);
    }
  }
  System.debug('Send email to: '+ mails);

  Messaging.sendEmail(mails);
}