<?php

include "includes/config.php";
include "includes/database.php";
include "includes/functions.php";
secure();
include "includes/header.php";

if (isset($_GET['delete'])) {
    if ($stm = $connect->prepare('DELETE FROM users where id = ?')) {
        $stm->bind_param('i', $_GET['delete']);
        $stm->execute();

        set_message("User " . $_GET['delete'] . " has been deleted successfully!");
        header('Location: users.php');
        $stm->close();
        die();
    } else {
        echo 'Could not prepare statement!';
    }
}

if ($stm = $connect->prepare('SELECT * FROM users')) {
    $stm->execute();

    $result = $stm->get_result();

    if ($result->num_rows > 0) {

?>

        <div class="container mt-5">
            <div class="row justify-content-center">
                <h2 class="display-2">Users Management</h2>
                <table class="table table-striped table-hover">
                    <tr>
                        <th>Id</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Status</th>
                        <th>Edit | Delete</th>
                    </tr>

                    <?php while ($record = mysqli_fetch_assoc($result)) { ?>
                        <tr>
                            <td><?php echo $record['id']; ?></td>
                            <td><?php echo $record['username']; ?></td>
                            <td><?php echo $record['email']; ?></td>
                            <td><?php echo $record['active']; ?></td>
                            <td><a href="users_edit.php?id=<?php echo $record['id']; ?>">Edit </a>|
                                <a href="users.php?delete=<?php echo $record['id']; ?>"> Delete
                            </td>
                        </tr>
                    <?php } ?>
                </table>
                <a href="users_add.php">Add New User</a>
            </div>
        </div>

<?php
    } else {
        echo 'No users found!';
    }
    $stm->close();
} else {
    echo 'Could not prepare statement!';
}
include "includes/footer.php";
?>