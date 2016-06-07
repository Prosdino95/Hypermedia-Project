$("document").ready(function(){
        console.log("la funzione Ã¨ stata chiamata correttamente");
        $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true,
            
            
            url: "./php/allsmservicesquery.php", //Relative or absolute path to file.php file
            success: function(response) {
                  var sm = JSON.parse(response)
            	for(var i=0;i<sm.length;i++){ //ogni 3 istanze dovresti cambiare riga     
              	$(".results").append("<div class='col-md-4' id='" + i +"'></div>");
                $("#"+ i).append("<div style='position:relative;' class='thumbnail dev-"+ i +"'></div>");
                $(".dev-"+i).append("<img src='" + sm[i].img + "' class='img-responsive' style='max-width: 210px; max-height: 228px; display: block;'>");
                $(".dev-"+i).append("<div class='caption'></div>")
                $(".dev-"+i+">div").append("<p style='text-align: center;'>"+  sm[i].nameID +"</p>");
                $(".dev-"+i+">div").append("<a type='submit' class='query btn btn-block btn-info' onclick='showsmartlife(\""+sm[i].nameID+"\");'>Discover it!</a>");
            }    
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });