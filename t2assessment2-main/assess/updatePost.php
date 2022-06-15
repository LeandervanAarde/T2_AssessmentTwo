<?php
    if($_SERVER['REQUEST_METHOD']!= 'POST'){
        exit();
    }
    include 'db_connection.php';
    $request_body = file_get_contents('php://input');
    $data = json_decode($request_body);
    $updatePost = $data->newMessage;
    $id = $data->id;
    $sql = "UPDATE appPosts SET timestamp= CURRENT_TIMESTAMP , message='$updatePost' WHERE id='$id';";
    $result = mysqli_query($conn, $sql);
    echo $result;
    if(!$result){
        // echo ("Err desc: ". mysqli_error($conn));
    } else{
        // echo "The post was updated successfully";
    }
?>