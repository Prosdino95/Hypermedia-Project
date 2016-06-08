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
            url: "./php/showdevice.php", //Relative or absolute path to file.php file
            data: {id:value},
            success: function(response) {
                  var device = JSON.parse(response)
            for(var i=0;i<device.length;i++){ 
            	$(".devicecategory").append("<a type='submit' class='query' onclick='window.open(\"./devicebycategory.html?id="+device[i].category+"\");'>"+  device[i].category +"</a>");
            	$(".gotodevicecategory").append("<a type='submit' class='query' onclick='window.open(\"./devicebycategory.html?id="+device[i].category+"\");'>Go To "+  device[i].category +"</a>");
                $(".devicename").text(""+  device[i].device_name +"");
                $(".name").append("<h2>"+  device[i].device_name +"</h2>");
                $(".immage").append("<img src='" + device[i].img + "' class='img-responsive pull-left gap-right' style='max-width: 210px; max-height: 228px;'>");
                $(".descriptions").append("<p>"+  device[i].description +"</p>");
                $(".price").append("<p> &euro; "+  device[i].price +"</p>");
                $(".technical").append("<p>"+  device[i].technical +"</p>");  
                $(".tosm").append("<a type='submit' class='pull-right query btn btn-info' onclick='showrelatedas(\""+device[i].id+"\");'>See associated SmartLife!</a>");
            
			}
                
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });
    
    
  