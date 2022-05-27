$(document).ready(function() {
    console.log("site page ready");

    $('#siteModal').on('hidden.bs.modal', function() {
        console.log("siteModal hidden.bs.modal");
        $(this).find('input[type=text], input[type=password], input[type=number], input[type=email], textarea').val('');
    });
});
