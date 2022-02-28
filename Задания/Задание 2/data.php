<?php

	$a = $_POST['username'];
	$b = $_POST['usernumber'];
	$c = $_POST['usermail'];

	$mail = '@gmail';
	$result = strpos($c, $mail); 

	if(empty($a))
	{
		echo "Заполните поле ФИО";
	} 
	else if (empty($b))
		{
			echo "Заполните номер телефона";
		} 
		else if ($result === false)
			{
				echo "Все ок";
				
			} 
			else
				{
					echo "Регистрация пользователей с таким почтовым адресом невозможна";
				}

?>