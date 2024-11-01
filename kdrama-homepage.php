<!-- kdrama-homepage.php -->

<html>

	<head>
	
	<title>Kdrama Listings</title>
	
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
		<h1>Kdrama Listings</h1>
		<h1 style="color:black;">See listings below</h1>
	</body>
	
</html>

<?php

$page_roles = array('admin','customer');

require_once  'dbinfo.php';
require_once 'checkSession.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT * FROM kdrama";

$result = $conn->query($query);
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$row = $result->fetch_array(MYSQLI_ASSOC);
	
	$imagepath = $row['imagepath'];
	
echo <<<_END
	<pre>
	<img src='$imagepath' width='200' height='300'>
	<a href='kdrama-details.php?kdrama_id=$row[kdrama_id]'>$row[title]</a>
	Kdrama ID: $row[kdrama_id]
	</pre>
_END;
}

echo "<br><a href='kdrama-add.php'><button>ADD KDRAMA</button></a>";

echo "<br><br><br><a href='kdrama-users.php'><button>KDRAMA USERS</button></a>";

echo "<br><br><br><a href='logout.php'><button>LOGOUT</button></a>";

$conn->close();

?>