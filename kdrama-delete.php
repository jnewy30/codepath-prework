<html>

	<head>
	
		<title>Delete Kdrama</title>
	
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
		
		<h1>Delete Kdrama</h1>
	
	</head>

</html>

<?php

$page_roles = array('admin');

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
	
echo <<<_END
	<pre>
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
	
	<form action='kdrama-delete.php' method='post'>
		<input type='hidden' name='delete' value='yes'>
		<input type='hidden' name='kdrama_id' value='$row[kdrama_id]'>
		<input type='submit' value='DELETE KDRAMA'>	
	</form>
	
_END;
}

}

	if(isset($_POST['delete']))
	{
		$kdrama_id = $_POST['kdrama_id'];

		$query = "DELETE FROM kdrama WHERE kdrama_id='$kdrama_id'";
	
		//Run the query
		$result = $conn->query($query); 
		if(!$result) die($conn->error);
	
		//Return to the kdrama-homepage
		header("Location: kdrama-homepage.php");
	
	}

echo "<br><br><br><a href='logout.php'><button>LOGOUT</button></a>";

$conn->close();

?>