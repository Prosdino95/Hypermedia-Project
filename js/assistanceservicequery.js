$("document").ready(function(){
        $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true,
            url: "performquery.php", //Relative or absolute path to file.php file
            
            success: function(response) {
                  var assistance = JSON.parse(response)
               var res=""; // el è una stringa in cui metti l'html che verrà mostrato
            for(var i=0;i<assistance.length;i++){ //ogni 3 istanze dovresti cambiare riga
                $(".results").append("<div class='container-fluid row' id='" + i + "'></div>");
                $("#"+ i).append("<h2>"+  assistance[i].nameID +"</h2>");
                $("#"+ i).append("<img src='" + assistance[i].img + "' class='img-responsive gap-right' style='max-width: 210px; max-height: 228px;'>");
                $("#"+ i).append("<p>"+  assistance[i].description +"</p>");
                $("#"+ i).append("<a href='' class='btn btn-info'>Discover More</a>");
                
            }

                
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });