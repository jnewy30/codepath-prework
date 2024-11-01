<!-- kdrama-login.php -->

<html>

	<head>
	
		<title>Kdrama Login</title>
		
		<style>
			body 
			{
				background-color: #e6f2ff;
			}
	
			h1
			{
				color: black;
				text-align: center;
			}

			p
			{
				font-family: verdana;
				font-size: 30px;
			}
		</style>
	
	</head>

	<body>
		
		<style>
			form
			{
				background-color: white;
				padding-left: 9px;
			}
		</style>
	
		<h1>Kdrama Login</h1>
	
		<form method='post' action='kdrama-login.php'>
			Username: <input type='text' name='username'><br>
			Password: <input type='password' name='password'>
			<input type='submit' value='Login'>
		</form>
	</body>

</html>

<?php

require_once 'dbinfo.php';
require_once 'User.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if (isset($_POST['username']) && isset($_POST['password'])) {
	
	//Get values from login screen
	$tmp_username = mysql_entities_fix_string($conn, $_POST['username']);
	$tmp_password = mysql_entities_fix_string($conn, $_POST['password']);
	
	//get password from DB w/ SQL
	$query = "SELECT password FROM users WHERE username = '$tmp_username'";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	$rows = $result->num_rows;
	$passwordFromDB="";
	for($j=0; $j<$rows; $j++)
	{
		$row = $result->fetch_array(MYSQLI_ASSOC);
		$passwordFromDB = $row['password'];
	
	}
	
	//Compare passwords
	if(password_verify($tmp_password,$passwordFromDB))
	{
		echo "Successful login!<br>";
		
		$user = new User($tmp_username);
		
		session_start();
		
		$_SESSION['user'] = $user;
		
		header("Location: kdrama-homepage.php");
	}
	else
	{
		echo "Login error :(<br>";
	}	
	
}

$conn->close();


//sanitization functions
function mysql_entities_fix_string($conn, $string){
	return htmlentities(mysql_fix_string($conn, $string));	
}

function mysql_fix_string($conn, $string){
	$string = stripslashes($string);
	return $conn->real_escape_string($string);
}


?>