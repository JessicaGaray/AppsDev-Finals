<html>
<head><link rel="stylesheet" href="ktrbh.css"></head>

<?php
require 'core.php';
?>
<?php
include('mysqli_connect.php');
if (!isset($_SESSION['username'])){
header('location:adminLog.php');
}
?>
<?php
	$username=$_SESSION['username'];
  $result = mysqli_query($dbconn, "SELECT * FROM emp_details")	or die(mysql_error());

	echo '<link rel="stylesheet" href="ktrbh.css">';

	echo '<form method="POST" action="adminLogout.php">';
	echo "<h2>HI ADMIN, <i>" .$username. "</i> !</h2>";
	echo "<h4></h4>";
  echo "<br><h3>LIST OF EMPLOYEES</h3>";
  echo "<table class='adminTab'>";
  echo "<tr>  <th>Employee ID</th> <th>Name</th> <th>Gender</th> <th>Birth Date</th> <th>Department</th>
        <th>SSS Number</th> <th>Year Employed</th> <th>Position</th> <th>Salary</th>
        <th>Allowed Remaining Leaves</th>";

  // echo "<th><input type='submit' value='ADD'/></th>";
  // echo "<th><input type='button' onclick='location.href=/'add.html/' value='ADD'></th>";
  echo "<th><center><a href='add.html' class='addlink'><h3>ADD</h3></a></th></center>";
  echo "<th><input type='submit' value='LOGOUT'/></th></tr>";

	// loop through results of database query, displaying them in the table
	while($row = mysqli_fetch_array( $result )) {

		echo '<link rel="stylesheet" href="ktrbh.css">';
    echo "<tr>";
		echo '<td>' . $row['employeeID'] . '</td>';
		echo '<td>' . $row['firstName'] ." ".$row['lastName'] . '</td>';
    echo '<td>' . $row['GENDER'] . '</td>';
		echo '<td>' . $row['birthDate'] . '</td>';
		echo '<td>' . $row['department'] . '</td>';
		echo '<td>' . $row['sssNumber'] . '</td>';
		echo '<td>' . $row['yearEmployed'] . '</td>';
		echo '<td>' . $row['position'] . '</td>';
    echo '<td>' . $row['salary'] . '</td>';
		echo '<td>' . $row['allowedRemainingLeaves'] . '</td>';
    echo '<td><a href="edit.html?id=' . $row['id'] . '"><small>EDIT</small></a></td>';
    echo '<td><a href="delete.php?id=' . $row['id'] . '"><small>DELETE</small></a></td>';

	}
  echo '<br><br></center></form>';
	?>
	</html>
