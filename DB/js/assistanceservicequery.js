$("document").ready(function(){
        $.ajax({
            method: "POST",
            //questo script viene chiamato per mostrare tutti gli assistance services

            crossDomain: true,
            url: "./php/performquery.php", //Relative or absolute path to file.php file

            success: function(response) {
                  var assistance = JSON.parse(response)
               var res=""; // el è una stringa in cui metti l'html che verrà mostrato
            for(var i=0;i<assistance.length;i++){ //ogni 3 istanze dovresti cambiare riga
                $(".results").append("<div class='well col-md-6 container-fluid' id='" + i + "'></div>");
                $("#"+ i).append("<h2>"+  assistance[i].nameID +"</h2>");
                $("#"+ i).append("<img src='" + assistance[i].img + "' class='img-responsive pull-left gap-right' style='max-width: 150px; max-height: 178px;'>");
                $("#"+ i).append("<p>"+  assistance[i].description +"</p>");
                $("#"+ i).append('<a type="submit" class="query pull-right btn btn-info" onclick="showdetail(\''+assistance[i].nameID+'\');">Discover More!</a>');


            }


            },
            error: function(request,error)
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });
