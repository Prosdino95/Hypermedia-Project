$("document").ready(function(){
        
    $(".query").on("click",function(){
        var value=$(".value").val();//inizializza il valore da passare ad ajax
        console.log("la funzione è stata chiamata correttamente");
        $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true,
            
            
            url: "./php/showassistance.php", //Relative or absolute path to file.php file
            data: {number:value},
            success: function(response) {
                  var assistance = JSON.parse(response)
            for(var i=0;i<assistance.length;i++){ //ogni 2 istanze dovresti cambiare riga
                $(".results").append("<div class='container-fluid row' id='" + i + "'></div>");
                $("#"+ i).append("<h2>"+  assistance[i].nameID +"</h2>");
                $("#"+ i).append("<img src='" + assistance[i].img + "' class='img-responsive pull-left gap-right' style='max-width: 210px; max-height: 228px;'>");
                $("#"+ i).append("<p>"+  assistance[i].description +"</p>");
                
            }

                
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });
    });