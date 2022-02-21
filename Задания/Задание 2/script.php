<?php
$to = "";//Указать почтовый ящик куда отправлять
  $subject = "Проверка";
  $message = "Message, сообщение!";
  $headers = "Content-type: text/plain; charset=utf-8 \r\n";
 
 
if($_SERVER["REQUEST_METHOD"] == "POST")
{
   
    if(isset($_POST["username"])
	{
      $name     =trim(strip_tags($_POST["username"]));
    }
	if(isset($_POST["useraddress"]))
    {
      $addres   = trim(strip_tags($_POST["useraddress"]));
    }
	if(isset($_POST["usermail"]))
    {
      $mail   = trim(strip_tags($_POST["usermail"]));
    }
    if(isset($_POST["usernumber"]))
    {
      $number   = trim(strip_tags($_POST["usernumber"]));
    }
    if (isset( $_POST["usercomments"])) 
	{
      $comments   = trim(strip_tags($usercomments));
    }
     
      $message  = "<html>";
        $message  .= "<body>";
        $message  .= "Телефон: ".$number;
        $message  .= "<br />";
        $message  .= "Имя: ".$name;
        $message  .= "<br />";
		$message  .= "Адрес: ".$addres;
        $message  .= "<br />";
        $message  .= "Вопрос: ".$comments;
        $message  .= "</body>";
      $message  .= "</html>";
           
      mail ($to, $subject, $message, $headers);
}
else
{
  exit;
} 
?>