<html>

	<head>
	
		<title>Movie Logout</title>
	
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
		
		<h1>Kdrama Logout</h1>
	
	</head>

</html>

<?php

session_start();

function destroy_session_and_data(){
	$_SESSION = array();
	setcookie(session_name(), '', time()-2592000, '/');
	session_destroy();
}

echo "Please login <a href='kdrama-login.php'><button> HERE </button></a>";

?>