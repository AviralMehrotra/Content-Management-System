<?php

function secure()
{
    if (!isset($_SESSION['id'])) {
        set_message('You must be logged in to access the dashboard!');
        header('Location: /cms');
        die();
    }
}

function set_message($message)
{ {
        $_SESSION['message'] = $message;
    }
}
function get_message()
{
    if (isset($_SESSION['message'])) {
        echo "<script type='text/javascript'> showToast('" . $_SESSION['message'] . "','top right' , 'success') </script>";
        unset($_SESSION['message']);
    }
}
