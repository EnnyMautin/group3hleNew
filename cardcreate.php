<?php
include 'dbAphrodite.php' ;

$cardname = $_POST['cardname'];
$cardnumber = $_POST['cardnumber'];
$expmonth = $_POST['expmonth'];
$expyear = $_POST['expyear'];
$cvv = $_POST['cvv'];

$sql="insert into card (cardname, cardnumber, expmonth, expyear, cvv)
    values('$cardname', '$cardnumber','$expmonth','$expyear','$cvv')";

if($conn->query($sql) === TRUE) {
    echo "Payment done";
    header("Location: index.php");
}
else
{
    echo "ERROR: " .$sql. "<br>" . $conn->error;
}

$conn->close();

