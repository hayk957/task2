function getAllJobs(){
    $.ajax({
        url: '../../includes/setjob.php',
        type: 'get',
        data: {
            completed:0
        },

    }).done(function (response) {
        $("#job-items").html(response);

    });
}



function getOpenJobs0(){
    $.ajax({
        url: '../../includes/setjob.php',
        type: 'get',
        data: {
            status:0
        },

    }).done(function (response) {
        $("#count").html(response);

    })
}

function getAllCompletedJobs(){
    $.ajax({
        url: '../../includes/setjob.php',
        type: 'get',
        data: {
            completed:1
        },

    }).done(function (response) {
        $("#ready-job-items").html(response);
    })
}

function getOpenJobs1(){
    $.ajax({
        url: '../../includes/setjob.php',
        type: 'get',
        data: {
            status:1
        },

    }).done(function (response) {
        $("#count").html(response);

    })
}


$(document).ready(function(){
    setInterval(getAllJobs,300000);
    setInterval(getOpenJobs0,300000);
    setInterval(getAllCompletedJobs,300000);
    setInterval(getOpenJobs1,300000);


    $("#post-edit__create").on('click',function (event) {

        event.preventDefault();
        $.ajax({
            url: '../../includes/setjob.php',
            type: "post",
            data: $('#post_insert').serialize() + "&insert=1",
        }).done(function (response) {
            // console.log(response)
            if (response){
                getAllJobs();
                getOpenJobs0();
            }
        }).fail(function (response) {
        })
    });



    $("#post-edit__edit").on('click',function (event)
    {
        event.preventDefault();
        $.ajax({
            url: '../../includes/setjob.php',
            type: "post",
            data: $('#post_insert').serialize() + "&edit=1",
        }).done(function (response) {
                if (response)
                {
                    getAllJobs();
                    getOpenJobs0();

                }
        }).fail(function (response) {
        })
    });


    $("#post-edit__delete").on('click',function ()
    {

        var id = $(this).attr("data-id");

        $.ajax({
            url: '../../includes/setjob.php',
            type: "post",
            data: {id:id,delete:1},
        }).done(function (response) {
            if (response)
            {
                getAllJobs();
                getOpenJobs0();

            }
        }).fail(function (response) {

        })
    })

});