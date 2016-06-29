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
            url: "./php/fromdevicetosl.php", //Relative or absolute path to file.php file
            data: {id:value},
            success: function(response) {
                  var sm = JSON.parse(response)
            for(var i=0;i<sm.length;i++){ 
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