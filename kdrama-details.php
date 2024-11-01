<!-- kdrama-details.html -->


<html>

	<head>
		<title>Kdrama Details</title>
		
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
		<h1>Kdrama Details</h1>
	</body>

</html>

<?php

$page_roles = array('admin','customer');

require_once  'dbinfo.php';
require_once 'checkSession.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_GET['kdrama_id']))
{

$kdrama_id = $_GET['kdrama_id'];

$query = "SELECT * FROM kdrama where kdrama_id=$kdrama_id";

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
	Title: $row[title]
	Description: $row[description]
	Director: $row[director]
	Release Year: $row[release_year]
	Budget: $row[budget]
	Runtime: $row[runtime]
	Rating: $row[rating]
	Genre: $row[genre]
	Kdrama ID: $row[kdrama_id]
	</pre>
_END;
}

}

echo "<a href='kdrama-update.php?kdrama_id=$kdrama_id'><button>UPDATE KDRAMA</button></a>";

echo "<br><br><br><a href='logout.php'><button>LOGOUT</button></a>";

$conn->close();

?>