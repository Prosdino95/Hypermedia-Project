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


$("document").ready(function(){
        console.log("la funzione loadass stata chiamata correttamente");
         var value = getUrlVars()["id"];
        console.log(value);
        $.ajax({
            method: "GET",
            //dataType: "json", //type of data
            crossDomain: true,
            url: "./php/show.php", //Riprendi da qui, devi definire il file php
            data: {id:value},
            success: function(response) {
                  var device = JSON.parse(response)
            for(var i=0;i<device.length;i++){
                $(".name").append("<h2>"+  device[i].device_name +"</h2>");
                $(".immage").append("<img src='" + device[i].img + "' class='img-responsive pull-left gap-right' style='max-width: 210px; max-height: 228px;'>");
                $(".descriptions").append("<p>"+  device[i].description +"</p>");
                $(".price").append("<p> &euro; "+  device[i].price +"</p>");
                $(".technical").append("<p>"+  device[i].technical +"</p>");
            }


            },
            error: function(request,error)
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });
