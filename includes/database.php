<?php

$connect = mysqli_connect('localhost', 'cms', 'admin', 'cms');

if(mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}