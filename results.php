<html>
<head><title></title></head>
<body>
<h1>Results search</h1>
<?php
$searchtype = $_POST['searchtype'];
$searchterm = trim($_POST['searchterm']);
if (!$searchtype || !$searchterm) {
echo 'uncorrect param, try more';
exit;
}
if (!get_magic_quotes_gpc()) {
$searchtype = addslashes($searchtype);
$searchterm = addslashes($searchterm);
}
@ $db = new mysqli("localhost", "root", "", "books");

if (mysqli_connect_errno()){
echo 'Error connect';
exit;
}

$query = "select * from books where ".$searchtype." like '%'".$searchterm."%'";
$result = $db->query($query);
$num_results = $db->num_rows($result);
echo "<p>Searched books: ".$num_results."</p>";

while($row = $db->fetch_assoc($result)) {
printf('Name: ', $row['title'],'Author: ' ,$row['author'],'Price: ', $row['price']);
}

$result->free();
$db->close();
?>
</body>
</html>