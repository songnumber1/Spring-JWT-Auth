var isEdit = false;
var id = null;
var InitSiteType = null;

$(document).ready(function() {
    ProfileOpen();

    $('#btn-profile-edit').click(function() {
        $("#profileModal").modal("show");
    });

    $('#btn-profile-close').click(function() {
        $("#profileModal").modal("hide");
    });

    $('#btn-profileModal-close').click(function() {
        $("#profileModal").modal("hide");
    });

    $('#profileModal').on('hidden.bs.modal', function() {
        $(this).find('input[type=text], input[type=file], input[type=password], input[type=number], input[type=email], textarea').val('');
    });
    
    $('#btn-profile-add').click(function() {
        if($('#profile-image').val().trim() === '' ||
        $('#profile-name').val().trim() === '' ||
        $('#profile-job').val().trim() === '')
            return;

        var file = $('#profile-image')[0].files[0];
        var fileData = new FormData();

        fileData.append('fileData', file);
        fileData.append('name', $('#profile-name').val());
        fileData.append('job', $('#profile-job').val());
        fileData.append('address', $('#profile-address').val());
        fileData.append('image', file.name);

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/jwtauth/profile/api/profile_save",
            data: fileData,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function (data) {
                alert("성공");
            },
            error: function (e) {
                alert("실패");
            }
        });
    });


    $('#btn-skill-add').click(function() {
        $("#skillModal").modal("show");
    });

    $('#btn-skill-edit').click(function() {
        $("#skillModal").modal("show");
    });

    $('#btn-skill-delete').click(function() {
        
    });

    $('#btn-skill-close').click(function() {
        $("#skillModal").modal("hide");
    });

    $('#btn-skillModal-close').click(function() {
        $("#skillModal").modal("hide");
    });

    $('#skillModal').on('hidden.bs.modal', function() {
        $(this).find('input[type=text], input[type=file], input[type=password], input[type=number], input[type=email], textarea').val('');
    });
    
    $("#skill-level").change(function() {
        $("#skill-level-title span").text($(this).val());
    });

    $('#btn-skill-add').click(function() {
        if($('#skill-title').val().trim() === '' ||
        $("#skill-level-title span").text().trim() === '')
            return;

        var title = $('#skill-title').val().trim();
        var level = $("#skill-level-title span").text().trim();

        var data = {
            title : title,
            level : level
        };

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/jwtauth/profile/api/profile_save",
            data: fileData,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function (data) {
                alert("성공");
            },
            error: function (e) {
                alert("실패");
            }
        });
    });

    $("#education-datepicker").datepicker({ 
        format: 'yyyy-mm-dd',
        autoclose: true, 
        todayHighlight: true
    }).datepicker('update', new Date());

    $('#btn-education-add').click(function() {
        $("#educationModal").modal("show");
    });

    $('#btn-education-edit').click(function() {
        $("#educationModal").modal("show");
    });

    $('#btn-education-delete').click(function() {
        
    });

    $('#btn-education-close').click(function() {
        $("#educationModal").modal("hide");
    });

    $('#btn-educationModal-close').click(function() {
        $("#educationModal").modal("hide");
    });

    $('#educationModal').on('hidden.bs.modal', function() {
        $(this).find('input[type=text], input[type=file], input[type=password], input[type=number], input[type=email], textarea').val('');
    });
    
    $("#education-level").change(function() {
        $("#education-level-title span").text($(this).val());
    });

    $('#btn-education-add').click(function() {
        if($('#education-title').val().trim() === '' ||
        $("#education-level-title span").text().trim() === '')
            return;

        var title = $('#education-title').val().trim();
        var level = $("#education-level-title span").text().trim();

        var data = {
            title : title,
            level : level
        };

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/jwtauth/profile/api/profile_save",
            data: fileData,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function (data) {
                alert("성공");
            },
            error: function (e) {
                alert("실패");
            }
        });
    });






    $("#license-datepicker").datepicker({ 
        format: 'yyyy-mm-dd',
        autoclose: true, 
        todayHighlight: true
    }).datepicker('update', new Date());

    $('#btn-license-add').click(function() {
        $("#licenseModal").modal("show");
    });

    $('#btn-license-edit').click(function() {
        $("#licenseModal").modal("show");
    });

    $('#btn-license-delete').click(function() {
        
    });

    $('#btn-license-close').click(function() {
        $("#licenseModal").modal("hide");
    });

    $('#btn-licenseModal-close').click(function() {
        $("#licenseModal").modal("hide");
    });

    $('#licenseModal').on('hidden.bs.modal', function() {
        $(this).find('input[type=text], input[type=file], input[type=password], input[type=number], input[type=email], textarea').val('');
    });
    
    $("#license-level").change(function() {
        $("#license-level-title span").text($(this).val());
    });

    $('#btn-license-add').click(function() {
        if($('#license-title').val().trim() === '' ||
        $("#license-level-title span").text().trim() === '')
            return;

        var title = $('#license-title').val().trim();
        var level = $("#license-level-title span").text().trim();

        var data = {
            title : title,
            level : level
        };

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/jwtauth/profile/api/profile_save",
            data: fileData,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function (data) {
                alert("성공");
            },
            error: function (e) {
                alert("실패");
            }
        });
    });



    










    
});

function ProfileOpen() {
    $.ajax({
        type: "GET",
        url: "/jwtauth/profile/api/select",
        contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
        dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
        // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
    }).done(function(res) {
        if (res.status === 500) {
            alert("카테고리 메뉴를 불러오지 못했습니다.");
            console.log(res);
        } else {
            console.log(res.data);
        }
    })
    .fail(function(error) {
        alert(JSON.stringify(error));
    })
    .always(function() {
    });
}