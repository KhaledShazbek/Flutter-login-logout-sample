<?php
include 'config.php';
$email = $_POST['email'];
$password = $_POST['password'];

$query = "SELECT * FROM Users WHERE email='".$email."' ";
$result = mysqli_query($db,$query);
$row = mysqli_fetch_assoc($result);
if(isset($row)){
    if($row['password'] == $password){
        echo json_encode('found');
    }else{
        echo json_encode('Check your password');
    }
}else{
    echo json_encode('check your email');
}
?>