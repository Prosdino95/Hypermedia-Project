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
            url: "./php/showassistance.php", //Relative or absolute path to file.php file
            data: {id:value},
            success: function(response) {
                  var assistance = JSON.parse(response)
            for(var i=0;i<assistance.length;i++){ //ogni 3 istanze dovresti cambiare riga
               $(".results").append("<div class='container-fluid row' id='" + i + "'></div>");
                $("#"+ i).append("<h2>"+  assistance[i].nameID +"</h2>");
                $("#"+ i).append("<img src='" + assistance[i].img + "' class='img-responsive pull-left gap-right' style='max-width: 210px; max-height: 228px;'>");
                $("#"+ i).append("<p>"+  assistance[i].description +"</p>");
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


