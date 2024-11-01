<html>
	<head>
	
	<title>Kdrama Users</title>
	
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
		<h1>Kdrama Users</h1>
		<h1 style="color:black;">See listings below</h1>
	</body>
</html>


<?php

$page_roles = array('admin');

require_once  'dbinfo.php';
require_once 'checkSession.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM users";

$result = $conn->query($query);
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$row = $result->fetch_array(MYSQLI_ASSOC);
	
echo <<<_END
	<pre>
	First Name: $row[first_name]
	Last Name: $row[last_name]
	</pre>
_END;
}

echo "<br><br><br><a href='logout.php'><button>LOGOUT</button></a>";

$conn->close();

?>