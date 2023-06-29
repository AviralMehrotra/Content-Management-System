<?php

include("includes/config.php");
session_destroy();
header('location: /cms');
die();
