$("document").ready(function(){
        console.log("la funzione è stata chiamata correttamente");
        $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true,
            
            
            url: "./php/alldevicequery.php", //Relative or absolute path to file.php file
            success: function(response) {
                  var device = JSON.parse(response)
            for(var i=0;i<device.length;i++){ //ogni 3 istanze dovresti cambiare riga
                $(".results").append("<div class='container-fluid row' id='" + i + "'></div>");
                $("#"+ i).append("<h2>"+  device[i].device_name +"</h2>");
                $("#"+ i).append("<img src='" + device[i].img + "' class='img-responsive pull-left gap-right' style='max-width: 210px; max-height: 228px;'>");
                $("#"+ i).append("<p>"+  device[i].price +"</p>");
                $("#"+ i).append("<h3>CIAOSTRONZI</h3>");
                
            }

                
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });