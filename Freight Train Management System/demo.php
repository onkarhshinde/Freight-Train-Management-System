<?php
$to = 'onkarhshinde@gmail.com';  // Change to the recipient's email address
$subject = 'Verification Email';
$message = 'This is your email verification message.';
$headers = 'From: iitguwahati21@gmail.com';  // Change to your configured sender email

if(mail($to, $subject, $message, $headers)) {
    echo "Email sent successfully!";
} else {
    echo "Failed to send email.";
}
?>