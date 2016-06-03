$("document").ready(function(){
        console.log("la funzione Ã¨ stata chiamata correttamente");
        $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true,


            url: "./php/allpromotionsquery.php", //Relative or absolute path to file.php file
            success: function(response) {
                  var device = JSON.parse(response)
            	for(var i=0;i<device.length;i++){ //ogni 3 istanze dovresti cambiare riga
                $(".results").append("<div class='col-md-4 container-fluid' id='" + i +"'></div>");
                $("#"+ i).append("<div class='col-md-4 container-fluid' id='" + i +"'></div>");
                $("#"+ i).append("<div class='container'>"+  device[i].device_name +"</div>");
                $("#"+ i).append("<img src='" + device[i].img + "' class='img-responsive' style='max-width: 210px; max-height: 228px;'>");
                $("#"+ i).append("<p> &euro; "+  device[i].price +"</p>");
				$("#"+ i).append('<a type="submit" class="query pull-right btn btn-info" onclick="showdevicedetail(\''+device[i].id+'\');">Discover it!</a>');

            }
            },
            error: function(request,error)
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });
