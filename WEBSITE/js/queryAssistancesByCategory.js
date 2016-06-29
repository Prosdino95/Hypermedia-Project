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

// script che viene chiamato per mostrare tutti gli assistance services relativi ad una certa categoria: l'id su cui viene fatta la query
// viene passato tramite l URL
$("document").ready(function(){
        console.log("la funzione loadass stata chiamata correttamente");
         var value = getUrlVars()["id"];
        console.log(value);
        $.ajax({
            method: "GET",
            //dataType: "json", //type of data
            crossDomain: true,
            url: "./php/assistancesByCategory.php", //Relative or absolute path to file.php file
            data: {id:value},
            success: function(response) {
                  var assistance = JSON.parse(response)
            for(var i=0;i<assistance.length;i++){ 
               $(".category").text(""+  value +"");
               $(".results").append("<div class='well container-fluid' id='" + i + "'></div>");
                $("#"+ i).append("<h2>"+  assistance[i].nameID +"</h2>");
                $("#"+ i).append("<img src='" + assistance[i].img + "' class='img-responsive pull-left gap-right' style='max-width: 150px; max-height: 178px;'>");
                $("#"+ i).append("<p style='margin-left:20%; margin-right:10%'>"+  assistance[i].preview +"</p>");
                $("#"+ i).append('<a type="submit" class="query pull-right btn btn-info" onclick="showdetail(\''+assistance[i].nameID+'\');">Discover More!</a>');               
            }

                
            },
            error: function(request,error) 
            {
                console.log(request+":"+error);
            }
        });
        return false;
    });