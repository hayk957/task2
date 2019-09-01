<?php
include_once './conn.class.php';
include_once './job.class.php';
include_once './crud.class.php';

$object = new Jobs;

if (isset($_GET['completed']) && $_GET['completed'] == 0){
    $object->getAllJobs();
}

if (isset($_GET['status']) && $_GET['status'] == 0){
    $object->getOpenJobs(0);
}

if (isset($_GET['status']) && $_GET['status'] == 1){
    $object->getOpenJobs(1);
}

if (isset($_GET['completed']) && $_GET['completed'] == 1){
    $object->getAllCompletedJobs();
}



if (isset($_POST['insert']) && $_POST['insert'] == 1) {
    $crud = new Crud();
    echo $crud->insert();
}


if (isset($_POST['edit']) && $_POST['edit'] == 1) {
    $crud = new Crud();
    echo $crud->edit();
}

if (isset($_POST['delete']) && $_POST['delete'] == 1) {
    $crud = new Crud();
    echo $crud->delete($_POST['id']);
}

// TODO organize CRUD here




?>
