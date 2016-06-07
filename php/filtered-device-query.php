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
        //echo "Successful connection"; // connection ok
        $brand = rtrim($_POST['Brand'], ", ");
        $cost = rtrim($_POST['Cost'], ", ");
        $os = rtrim($_POST['OS'], ", ");
        $foo=false;
        $query=" SELECT * FROM `devices` ";

        if(strlen($brand) >0){
            $query.="WHERE `Brand` IN ($brand) ";
            $foo=true;
        }   
    
        if(strlen($cost) > 0){
            if($foo==false){
                $query.="WHERE ";
                $foo = true;
            }
            else{ $query.="AND ";}
            
            $query.="`Price` IN ($cost) ";
        }
        
        if(strlen($os) > 0){
            if($foo==false){
                $query .="WHERE ";
                $foo = true;
            }
            else{ $query.="AND ";}
        
            $query.="`OS` IN ($os) ";
        }
        
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
        else{
        	json_encode((object) null);
        }

        //free result
        $result->close();

        //close connection
        $mysqli->close();
    }
?>