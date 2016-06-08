// Read a page's GET URL variables and return them as an associative array.
function getUrlVars()
{
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}
// script che viene chiamato per mostrare un determinato device: l'id su cui viene fatta la query
// viene passato tramite l URL
$("document").ready(function(){
        console.log("la funzione loadass stata chiamata correttamente");
         var value = getUrlVars()["id"];
        console.log(value);
        $.ajax({
            method: "GET",
            //dataType: "json", //type of data
            crossDomain: true,
            url: "./php/fromsltodevice.php", //Relative or absolute path to file.php file
            data: {id:value},
            success: function(response) {
                  var device = JSON.parse(response)
            for(var i=0;i<device.length;i++){ 
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