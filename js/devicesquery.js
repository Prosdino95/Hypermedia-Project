$("document").ready(function(){
    $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true,
            url: "./php/performquery.php", //Relative or absolute path to file.php file
    });
});
