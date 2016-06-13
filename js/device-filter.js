$(document).ready(function(){
    $(".ez-checkbox").click(function() {
        console.log("ok");
        var re = {Brand: "", Cost: "", OS: ""};
        $("#Brand :checkbox:checked").each(function(){
            re["Brand"] += "'"+$(this).val()+"', ";
        });
        $("#Cost :checkbox:checked").each(function(){
            re["Cost"] += "'"+$(this).val()+"', ";
        });
        $("#OS :checkbox:checked").each(function(){
            re["OS"] += "'"+$(this).val()+"', ";
        });

        $.ajax({
            method: "POST",
            //dataType: "json", //type of data
            crossDomain: true,
            data: re,
            url:"./php/filtered-device-query.php",
            success: function(response) {
                console.log(response);
                if(response!=""){
                    var device = JSON.parse(response)
                    console.log(device);
                    $(".results").html("");
                    for(var i=0;i<device.length;i++){ //ogni 3 istanze dovresti cambiare riga
                        $(".results").append("<div class='col-md-4' id='" + i +"'></div>");
                        $("#"+ i).append("<div style='position:relative;' class='thumbnail dev-"+ i +"'></div>");
                        $(".dev-"+i).append("<img src='" + device[i].img + "' style='max-width: 210px; max-height: 228px' class='img-responsive'>");
                        $(".dev-"+i).append("<div class='caption'></div>")
                        $(".dev-"+i+">div").append("<p style='text-align: center;'>"+  device[i].device_name +"</p>");
                        $(".dev-"+i+">div").append("<p style='text-align: center;'> &euro; "+  device[i].price +"</p>");
                        $(".dev-"+i+">div").append("<a type='submit' class='query btn btn-block btn-info' onclick='showdevicedetail(\'"+device[i].id+"\');'>Discover it!</a>");

                    }
                }
                else{
                	$(".results").html("");
                    $(".results").append("<div class='alert alert-info fade in'>No such device</div>");
                }
            },
            error: function(request,error)
            {
                console.log(request+":"+error);
            }
        });
    });
});