<?php

include "includes/config.php";
include "includes/database.php";
include "includes/functions.php";
secure();
include "includes/header.php";


?>

<div class="container mt-5">
    <div class="row justify-content-center">
        <h4 class="display-6">Welcome to Dashboard</h4>
        <hr>
        <!-- <a href="users.php">Users Management</a>
        <a href="posts.php">Posts Management</a> -->
        <div class="row">

            <div class="col-md-6 col-lg-3">
                <div class="panel panel-post">
                    <div class="panel-heading">
                        <div class="row">
                            <?php
                            $query = "SELECT * FROM posts";
                            $result = mysqli_query($connect, $query) or die(mysqli_error($connect));
                            $post_num = mysqli_num_rows($result);
                            echo "<div class='text-right huge'>{$post_num}</div>";
                            ?>
                            <div class="text-right">Posts</div>
                        </div>
                    </div>
                    <a href="posts.php">
                        <div class="panel-footer">
                            <span class="pull-left">View All Posts</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>


            <div class="col-md-6 col-lg-3">
                <div class="panel panel-user">
                    <div class="panel-heading">
                        <div class="row">
                            <?php
                            $query = "SELECT * FROM users";
                            $result = mysqli_query($connect, $query) or die(mysqli_error($connect));
                            $user_num = mysqli_num_rows($result);
                            echo "<div class='text-right huge'>{$user_num}</div>"; ?>
                            <div class="text-right">Users</div>
                        </div>
                    </div>
                    <a href="users.php">
                        <div class="panel-footer">
                            <span class="pull-left">View All Users</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>
<?php
include "includes/footer.php";
?>