<!-- kdrama-update.php -->

<html>

	<head>
		<title>Kdrama Movie update</title>
		
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
		<h1>Update Kdrama Details</h1>
	</body>
	

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

$query = "SELECT * FROM kdrama WHERE kdrama_id='$kdrama_id'";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$row = $result->fetch_array(MYSQLI_ASSOC);
	
echo <<<_END
	<pre>
	<form action='kdrama-update.php' method='post'>
	Title: <input type='text' name='title' value='$row[title]'>
	Description: <input type='text' name='description' value='$row[description]'>	
	Director: <input type='text' name='director' value='$row[director]'>	
	Release Year: <input type='text' name='release_year' value='$row[release_year]'>
	Budget: <input type='text' name='budget' value='$row[budget]'>
	Runtime: <input type='text' name='runtime' value='$row[runtime]'>
	Rating: <input type='text' name='rating' value='$row[rating]'>
	Genre: <input type='text' name='genre' value='$row[genre]'>
	Kdrama ID: $row[kdrama_id]
	</pre>
	
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='kdrama_id' value='$row[kdrama_id]'>
		<input type='submit' value='UPDATE KDRAMA'>	
	</form>
_END;

}

}

if(isset($_POST['update']))
{
    $title = $_POST['title'];
    $description = $_POST['description'];
    $director = $_POST['director'];
    $release_year = $_POST['release_year'];
    $budget = $_POST['budget'];
    $runtime = $_POST['runtime'];
    $rating = $_POST['rating'];
    $genre = $_POST['genre'];
	$kdrama_id = $_POST['kdrama_id'];

	$query = "UPDATE kdrama SET title='$title', description='$description', director='$director', release_year='$release_year', budget='$budget', runtime='$runtime', rating='$rating', genre='$genre' WHERE kdrama_id = $kdrama_id";
    
	$result = $conn->query($query);
    if(!$result) die($conn->error);

    header("Location: kdrama-homepage.php");
}

echo "<br><br><br><a href='kdrama-delete.php?kdrama_id=$kdrama_id'><button>DELETE KDRAMA</button></a>";

echo "<br><br><br><a href='logout.php'><button>LOGOUT</button></a>";

$conn->close();

?>