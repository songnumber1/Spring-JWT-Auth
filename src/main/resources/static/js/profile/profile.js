var isEdit = false;
var id = null;
var InitSiteType = null;

$(document).ready(function() {
    ProfileOpen();
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