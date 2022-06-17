package email;


import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class SendEmail {
   public void send(String toEmail) {
      //provide sender's email ID
      String fromEmail = "anhcqhe160244@fpt.edu.vn";
      String fromPassword="oorhqdrsodkdbffm";
      
      //provide Mailtrap's host address
      String host = "smtp.gmail.com";
      //configure Mailtrap's SMTP server details
      Properties props = new Properties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", "587");

      //create the Session object
      Session session = Session.getInstance(props,
         new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(fromEmail, fromPassword);
    }
         });

      try {
    //create a MimeMessage object
    Message message = new MimeMessage(session);

    //set From email field
    message.setFrom(new InternetAddress(fromEmail));

    //set To email field
    message.setRecipients(Message.RecipientType.TO,
               InternetAddress.parse(toEmail));

    //set email subject field
    message.setSubject("Here comes The Coffee Maker!");

    //set the content of the email message
    message.setContent("<h1>Thank you for being one of our precious customers</h1>"
            + "<p>Please click the following button to verify your email address</p>"
            + "<button><a href='http://localhost:9990/OnlineShopProject/verify'>Click me</a></button>"
            ,"text/html");

    //send the email message
    Transport.send(message);


      } catch (MessagingException e) {
         throw new RuntimeException(e);
      }
   }
}