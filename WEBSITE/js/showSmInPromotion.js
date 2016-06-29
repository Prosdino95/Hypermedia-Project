$("document").ready(function(){
        console.log("la funzione stata chiamata correttamente");
        $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true,
            
            
            url: "./php/sminpromotionsquery.php", //Relative or absolute path to file.php file
            success: function(response) {
                  var smartlife = JSON.parse(response)
            	for(var i=0;i<smartlife.length;i++){ //ogni 3 istanze dovresti cambiare riga     
                $(".smresults").append("<div class='col-md-4' id='" + i +"'></div>");
                $("#"+ i).append("<div style='position:relative;' class='thumbnail sm-"+ i +"'></div>");
                 $(".sm-"+i).append("<img src='" + smartlife[i].img + "' style='max-width: 210px; max-height: 228px' class='img-responsive'>");
                 $(".sm-"+i).append("<div class='caption'></div>");
                 $(".sm-"+i+">div").append("<p style='text-align: center;'>"+  smartlife[i].nameID +"</p>");
                 $(".sm-"+i+">div").append("<p style='text-align: center;'> &euro; "+  smartlife[i].Price +"</p>");
               $(".sm-"+i+">div").append('<a type="submit" class="query btn btn-block btn-info" onclick="showsmartlife(\''+smartlife[i].nameID+'\');">Discover More!</a>');
              
            }    
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });