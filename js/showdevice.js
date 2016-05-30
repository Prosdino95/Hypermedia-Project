$("document").ready(function(){
        console.log("la funzione Ã¨ stata chiamata correttamente");
        $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true,
            
            
            url: "./php/alldevicequery.php", //Relative or absolute path to file.php file
            success: function(response) {
                  var device = JSON.parse(response)
            	for(var i=0;i<device.length;i++){ //ogni 3 istanze dovresti cambiare riga     
                $(".results").append("<div class='col-md-4 container-fluid' id='" + i +"'></div>");
                $("#"+ i).append("<div class='col-md-4 container-fluid' id='" + i +"'></div>");
                $("#"+ i).append("<div class='container'>"+  device[i].device_name +"</div>");
                $("#"+ i).append("<img src='" + device[i].img + "' class='img-responsive pull-left gap-right' style='max-width: 210px; max-height: 228px;'>");
                $("#"+ i).append("<p>"+  device[i].price +"</p>");
				$("#"+ i).append("<a href='#' class='btn btn-info' role='button'>Link Button</a>");
              
            }    
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });