<?php

    if($_SERVER('REQUEST_METHOD') != 'POST'){
        exit;
    }
    include 'db_connection.php';

    $request_body('php://input');
    $data = json_decode($request_body);
    $postId = $data-> id;
    $sql = "DELETE FROM appPosts WHERE id = '$postId';";
    $result = mysqli_query($conn, $sql);

    if(!$result){
        echo ("Err desc:". mysqli_error($conn));
    }else{
        echo "The post was deleted successfully";
    }
?>