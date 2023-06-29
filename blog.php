<?php

include('includes/config.php');
include('includes/database.php');
include('includes/functions.php');

if ($stm = $connect->prepare('SELECT * from posts')) {
    $stm->execute();

    $result = $stm->get_result();
    $posts = $result->fetch_all(MYSQLI_ASSOC);

    if ($posts) {
        $title = "My Blogs";
    } else {
        echo "No blogs found";
        die();
    }
    $stm->close();
} else {
    echo 'Could not prepare statement!';
    die();
}

include('includes/header.php');
?>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <h4 class="display-6"><?php echo $title ?></h4>
            <hr>
            <?php foreach ($posts as $post) { ?>
                <div class="card mb-3">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $post['title'] ?></h5>
                        <div class="row">
                            <div class="col-6">
                                <p class="card-text">ID: <?php echo $post['id'] ?></p>
                            </div>
                            <div class="col-6">
                                <p class="card-text text-end">Date: <?php echo $post['date'] ?></p>
                            </div>
                        </div>

                        <p class="card-text"><?php echo $post['content'] ?></p>
                    </div>
                </div>

            <?php } ?>
        </div>
    </div>
</div>

<?php
include('includes/footer.php');
?>