<?php



$fName = $_POST["fName"];
$lName = $_POST["lName"];
$email = $_POST["email"];
$role = $_POST["role"];





if ($_POST["industry_interest"] === 'Interested') {
    $industry_interest = 'Interested';
} else {
    $industry_interest = 'Not Interested';
}

if ($_POST["technical_interest"] === 'Interested') {
    $technical_interest = 'Interested';
} else {
    $technical_interest = 'Not Interested';
}

if ($_POST["career_interest"] === 'Interested') {
    $career_interest = 'Interested';
} else {
    $career_interest = 'Not Interested';
}





//saves the user data to the database table

$dsn = "mysql:host=localhost;dbname=contactform;charset=utf8mb4";
$dbusername = "root";  
$dbpassword = "";

//connect
$pdo = new PDO($dsn, $dbusername, $dbpassword);



//prepare
$stmt = $pdo->prepare("INSERT INTO `contactform` 
	(`id`, `fName`, `lName`, `email`,`industry_interest`,`technical_interest`,`career_interest`,`role`) 
	VALUES 
	(NULL, '$fName', '$lName', '$email','$industry_interest','$technical_interest','$career_interest','$role');");




//execute
if($stmt->execute()){ 
	echo('{ "success":"true" }');
}else{ 
	echo('{ "success":"false" }');
}


