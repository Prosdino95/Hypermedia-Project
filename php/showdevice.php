<?php
//get all the course from db and reply using json structure

//echo "I'm the php";

//connection to db
$mysqli = new mysqli("localhost", "root", "", "my_hypertim");

if (mysqli_connect_errno()) { //verify connection
    echo "Error to connect to DBMS: ".mysqli_connect_error(); //notify error
    exit(); //do nothing else 
}
else {
    //Takes the input value for the ID
    $id=$_GET["id"];
    # extract results mysqli_result::fetch_array
    $query = "SELECT * FROM `devices` WHERE `id`='" . $id . "'";
    //query execution
    $result = $mysqli->query($query);
    //if there are data available
    if($result->num_rows >0)
    {
        $myArray = array();//create an array
        while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = $row;
        }
        echo json_encode($myArray);
    }

    //free result
    $result->close();

    //close connection
    $mysqli->close();



}





?>