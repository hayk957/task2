<?php

class Crud extends Dbh
{
    public function insert()
    {
        $connect = new Dbh();
        $DB = $connect->connect();

        $job_category_id = isset($_POST['post-edit-categoryId']) ? $_POST['post-edit-categoryId'] : 1;
        $course_id = $_SESSION["courseid"];
        $job_name = empty($_POST['post-edit-title']) ? '' : $_POST['post-edit-title'];
        isset($_POST['post-edit-date']) ? $date = date_create($_POST['post-edit-date']) : $date = new DateTime();
        if (isset($_POST['post-edit-from'])) {
            $time_from = date_format(date_create(date_format($date, "Y-m-d") . ' ' . $_POST['post-edit-from']), 'Y-m-d H:i:s');
        }
        if (isset($_POST['post-edit-to'])) {
            $time_to = date_format(date_create(date_format($date, "Y-m-d") . ' ' . $_POST['post-edit-to']), 'Y-m-d H:i:s');
        }
        $period = empty($_POST['post-edit-meetTime']) ? '' : $_POST['post-edit-meetTime'];
        $contact_person = empty($_POST['post-edit-contactPerson']) ? '' : $_POST['post-edit-contactPerson'];
        $persons = empty($_POST['post-edit-hand']) ? 0 : $_POST['post-edit-hand'];
        $persons_found = 0;
        $alert = '00:00:00';
        $notification_alert = '00:00:00';
        $urgent = (isset($_POST['post-edit-urgent']) && $_POST['post-edit-urgent'] == 'on') ? 1 : 0;
        $urgent_message = '';
        $repeat = 1;
        $location = empty($_POST['post-edit-meetPlace']) ? '' : $_POST['post-edit-meetPlace'];
        $active = ((isset($_POST['post-edit-active'])) && ($_POST['post-edit-urgent'] == 'on')) ? 1 : 0;
        $completed = 0;


        $query = "INSERT INTO `jobs` (`jobcategoryid`, `courseid`, `jobname`, `timefrom`, `timeto`, `period`, `persons`, `persons_found`, `alert`, `notification_alert`, `urgent`, `urgentmessage`, `repeat`, `location`, `active`, `completed`, `contactPerson`) VALUES
                                     (:jobcategoryid, :courseid, :title, :time_from, :time_to, :period, :persons, :persons_found, :alert, :notification_alert, :urgent, :message, :repeat, :location, :active, :completed, :contact_person)";

        $prepared = $DB->prepare($query);
        $prepared->bindParam(':jobcategoryid', $job_category_id);
        $prepared->bindParam(':courseid', $course_id);
        $prepared->bindParam(':title', $job_name);
        $prepared->bindParam(':time_from', $time_from);
        $prepared->bindParam(':time_to', $time_to);
        $prepared->bindParam(':period', $period);
        $prepared->bindParam(':persons', $persons);
        $prepared->bindParam(':persons_found', $persons_found);
        $prepared->bindParam(':alert', $alert);
        $prepared->bindParam(':notification_alert', $notification_alert);
        $prepared->bindParam(':urgent', $urgent);
        $prepared->bindParam(':message', $urgent_message);
        $prepared->bindParam(':repeat', $repeat);
        $prepared->bindParam(':location', $location);
        $prepared->bindParam(':active', $active);
        $prepared->bindParam(':completed', $completed);
        $prepared->bindParam(':contact_person', $contact_person);

        if ($prepared->execute())
        {
            return true;
        }



    }

//
    public function edit()
    {
        $connect = new Dbh();
        $DB = $connect->connect();
        $id = isset($_POST['post-edit-id']) ? $_POST['post-edit-id'] : '';

        $job_category_id = isset($_POST['post-edit-categoryId']) ? $_POST['post-edit-categoryId'] : '';
        $job_name = empty($_POST['post-edit-title']) ? $_POST['post-edit-title'] : $_POST['post-edit-title'];
        isset($_POST['post-edit-date']) ? $date = date_create($_POST['post-edit-date']) : $date = new DateTime();

        if (isset($_POST['post-edit-from'])) {
            $time_from = date_format(date_create(date_format($date, "Y-m-d") . ' ' . $_POST['post-edit-from']), 'Y-m-d H:i:s');
        }


         if (isset($_POST['post-edit-to'])) {
            $time_to = date_format(date_create(date_format($date, "Y-m-d") . ' ' . $_POST['post-edit-to']), 'Y-m-d H:i:s');
        }

        $period = isset($_POST['post-edit-meetTime']) ? $_POST['post-edit-meetTime'] : '';
        $contact_person = empty($_POST['post-edit-contactPerson']) ? '' : $_POST['post-edit-contactPerson'];
        $persons = empty($_POST['post-edit-hand']) ? '' : $_POST['post-edit-hand'];
         (isset($_POST['post-edit-urgent']) && ($_POST['post-edit-urgent'] == 'on')) ? $urgent = 1 : $urgent = 0;
        $location = empty($_POST['post-edit-meetPlace']) ? '' : $_POST['post-edit-meetPlace'];
         (isset($_POST['post-edit-active'])) && ($_POST['post-edit-urgent'] == 'on') ? $active= 1 : $active = 0;


//        var_dump($_POST['post-edit-from']);die();

        $query = "UPDATE `jobs` SET 
            `jobcategoryid` = :jobcategoryid, 
            `jobname` = :title,  
            `timefrom` = :time_from,  
            `timeto` = :time_to,  
            `period` = :period,  
            `persons` = :persons,
            `urgent` = :urgent, 
            `location` = :location,  
            `active` = :active,  
            `contactPerson` = :contact_person
            WHERE `jobid` = :id";

        $prepared = $DB->prepare($query);
        $prepared->bindParam(':id', $id);
        $prepared->bindParam(':jobcategoryid', $job_category_id);
        $prepared->bindParam(':title', $job_name);
        $prepared->bindParam(':time_from', $time_from);
        $prepared->bindParam(':time_to', $time_to);
        $prepared->bindParam(':period', $period);
        $prepared->bindParam(':persons', $persons);
        $prepared->bindParam(':urgent', $urgent);
        $prepared->bindParam(':location', $location);
        $prepared->bindParam(':active', $active);
        $prepared->bindParam(':contact_person', $contact_person);

        if ($prepared->execute())
        {
            return true;
        }
    }

    public function delete($id)
    {
        $connect = new Dbh();
        $DB = $connect->connect();
//        $id = isset($_POST['post-edit-id']) ? $_POST['post-edit-id'] : '';
        $query = "DELETE FROM `jobs` WHERE `jobid` =  :id";
        $prepared = $DB->prepare($query);
        $prepared->bindParam(':id', $id);

        $prepared->execute();
        if ($prepared->execute())
        {
            return true;
        }

    }

}


