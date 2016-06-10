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
                
                $(".results").append("<div class='well container-fluid' id='" + i + "'></div>");
                $("#"+ i).append("<h2>"+  sm[i].nameID +"</h2>");
                $("#"+ i).append("<img src='" + sm[i].img + "' class='img-responsive ' style='max-width: 150px; max-height: 178px;'>");
                if(sm[i].Price!=0 && sm[i].Abbonamento==1 )$("#"+ i).append("<p style='margin-left:20%; margin-right:15%; font-size:20px; font-weight:bold;'>da &euro; "+  sm[i].Price +"/mese</p>");
                if(sm[i].Price!=0 && sm[i].Abbonamento==0 )$("#"+ i).append("<p style='margin-left:20%; margin-right:15%; font-size:20px; font-weight:bold;'>&euro; "+  sm[i].Price +"</p>"); 
                $("#"+ i).append('<a type="submit" class="query pull-right pull-down btn btn-info" onclick="showsmartlife(\''+sm[i].nameID+'\');">Discover More!</a>');
                
            }    
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });