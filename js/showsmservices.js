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
                $(".results").append("<div class='col-md-4 container-fluid' id='" + i +"'></div>");
                $("#"+ i).append("<div class='col-md-4 container-fluid' id='" + i +"'></div>");
                $("#"+ i).append("<div class='container'>"+  sm[i].nameID +"</div>");
                $("#"+ i).append("<img src='" + sm[i].img + "' class='img-responsive pull-left gap-right' style='max-width: 210px; max-height: 228px;'>");
				$("#"+ i).append('<a type="submit" class="query pull-right btn btn-info" onclick="showsmartlife(\''+sm[i].nameID+'\');">Discover More!</a>');
              
            }    
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });