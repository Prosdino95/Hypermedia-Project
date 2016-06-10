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
            url: "./php/fromdevicetoas.php", //Relative or absolute path to file.php file
            data: {id:value},
            success: function(response) {
                  var as = JSON.parse(response)
            for(var i=0;i<as.length;i++){ 
                $(".toas").append('<a type="submit" class="query pull-right btn btn-info" onclick="showdetail(\''+as[i].nameID+'\');">'+as[i].nameID+'</a>');
      			
			}
                
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });