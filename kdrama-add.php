<!-- kdrama-add.php -->

<html>

	<head>
	
		<title>Add Kdrama</title>
	
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
		
		<h1>Add Kdrama</h1>
	
	</head>
	
	<body>
	
		<form method='post' action='kdrama-add.php'>
			<pre>
			Title: <br>
			<input type='text' name='title'><br>
			Description: <br>
			<input type='text' name='description'><br>
			Director: <br>
			<input type='text' name='director'><br>
			Release Year: <br>
			<input type='text' name='release_year'><br>
			Budget: <br>
			<input type='text' name='budget'><br>
			Runtime: <br>
			<input type='text' name='runtime'><br>
			Rating: <br>
			<input type='text' name='rating'><br>
			Genre: <br>
			<input type='text' name='genre'><br><br>
			<input type='submit' value='Add Record'>
			</pre>
		</form>	
	
	</body>

</html>

<?php

	$page_roles = array('admin');

	require_once 'dbinfo.php';
	require_once 'checkSession.php';
	
	$conn = new mysqli($hn, $un, $pw, $db);
	if($conn->connect_error) die($conn->connect_error);

	//import credentials for db
	require_once  'dbinfo.php';

	//connect to db
	$conn = new mysqli($hn, $un, $pw, $db);
	if($conn->connect_error) die($conn->connect_error);

	//check if title exists
	if(isset($_POST['title'])) 
	{
		//Get data from POST object
		$title = $_POST['title'];
		$description = $_POST['description'];
		$director = $_POST['director'];
		$release_year = $_POST['release_year'];
		$budget = $_POST['budget'];
		$runtime = $_POST['runtime'];
		$rating = $_POST['rating'];
		$genre = $_POST['genre'];
	
		$query = "INSERT INTO kdrama (title, description, director, release_year, budget, runtime, rating, genre) VALUES ('$title', '$description','$director', '$release_year', '$budget', '$runtime', '$rating', '$genre')";
	
		//echo $query.'<br>';
		$result = $conn->query($query); 
		if(!$result) die($conn->error);
	
		header("Location: kdrama-homepage.php");//this will return you to the kdrama-homepage
	}
	
	echo "<br><br><br><a href='logout.php'><button>LOGOUT</button></a>";

$conn->close();

?>