$("document").ready(function(){
        console.log("la funzione Ã¨ stata chiamata correttamente");
        $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true,
            
            
            url: "./php/devicesinpromotionsquery.php", //Relative or absolute path to file.php file
            success: function(response) {
                  var device = JSON.parse(response)    
                for(var i=0;i<device.length;i++){ //ogni 3 istanze dovresti cambiare riga
                    $(".results").append("<div class='col-md-4' id='" + i +"'></div>");
                    $("#"+ i).append("<div style='position:relative;' class='thumbnail dev-"+ i +"'></div>");
                    $(".dev-"+i).append("<img src='" + device[i].img + "' style='max-width: 210px; max-height: 228px' class='img-responsive'>");
                    $(".dev-"+i).append("<div class='caption'></div>");
                    $(".dev-"+i+">div").append("<p style='text-align: center;'>"+  device[i].device_name +"</p>");
                    $(".dev-"+i+">div").append("<p style='text-align: center;'> &euro; "+  device[i].price +"</p>");
				    $(".dev-"+i+">div").append("<a type='submit' class='query btn btn-block btn-info' onclick='showdevicedetail(\""+device[i].id+"\");'>Discover it!</a>");
         }
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });