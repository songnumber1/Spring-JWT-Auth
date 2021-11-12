$(document).ready(function() {
    const absolutePath = document.getElementById("div-absolutePath").innerHTML;

    $("#source").attr("src", `/jwtauth/movie/play?absolutePath=` + encodeURI(absolutePath));

    var vedio = $("video").get(0);
    vedio.load();
});
