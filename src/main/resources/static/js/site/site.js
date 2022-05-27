var isEdit = false;
var id = null;

$(document).ready(function() {
    console.log("site page ready");
    
    $('#site-content').html('');

    SiteOpen();

    $('#siteModal').on('hidden.bs.modal', function() {
        console.log("siteModal hidden.bs.modal");
        $(this).find('input[type=text], input[type=password], input[type=number], input[type=email], textarea').val('');
    });

    $('#btn-site-add-modal-show').click(function() {
        isEdit = false;
        $("#siteModal").modal("show");
    });

    $('#btn-site-close').click(function() {
        $("#siteModal").modal("hide");    
    });

    $('#btn-site-add').click(function() {
        SiteAddEdit()
    });

    $('#btn-site-refresh').click(function() {
        SiteOpen();
    });

    function SiteAddEdit() {
        var url = "/jwtauth/site/api/edit";

        if(!isEdit){
            url = "/jwtauth/site/api/add";
        }

        console.log(url);

        if($('#site-name').val().trim() === '' ||
        $('#site-id').val().trim() === '' ||
        $('#site-pw').val().trim() === '')
            return;

        const siteInfo = {
            id: id,
            siteName: $('#site-name').val(),
            siteId: $('#site-id').val(),
            sitePw: $('#site-pw').val(),
            siteUrl: $('#site-url').val(),
            remark: $('#site-remark').val()
        };

        $.ajax({
            type: "POST",
            url: url,
            data: JSON.stringify(siteInfo),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        })
        .done(function(res) {
            $("#siteModal").modal("hide");
            SiteOpen();

            if(!isEdit){
                alert("카테고리 메뉴가 저장되었습니다.");
            }
            else {
                alert("카테고리 메뉴가 수정되었습니다.");
            }
        })
        .fail(function(error) {
            alert(JSON.stringify(error));
        })
        .always(function() {
            id = null;
        });      
    }
});

function SiteOpen() {
    $.ajax({
        type: "GET",
        url: "/jwtauth/site/api/select",
        contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
        dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
        // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
    }).done(function(res) {
        if (res.status === 500) {
            alert("카테고리 메뉴를 불러오지 못했습니다.");
            console.log(res);
        } else {
            var sitesItemsCardDeckHtml = `<div class="row" style="margin-top: 10px;">`;
            var sitesItemsHtml = sitesItemsCardDeckHtml;
            var siteItemHtml = '';
            var jsonData = JSON.parse(res.data);

            var colCount = 4;
            var curIndex = 0;

            for (key in jsonData) {
                if(curIndex % colCount === 0 && curIndex != 0) {
                    sitesItemsHtml = sitesItemsHtml + '</div>' + sitesItemsCardDeckHtml;
                }

                siteItemHtml = `
                    <div class="col-md-3 col-lg-3 column">
                        <div class="card-header text-white bg-primary">
                            <div class="d-flex align-items-center">
                                <p class="mr-auto" style="margin-top: 20px; font-weight: bold;">` + jsonData[key].siteName + `</p>
                                <div class="btn-group" role="group">`

                                if(jsonData[key].siteUrl)
                                    siteItemHtml = siteItemHtml + `<button class="btn btn-info btn-circle btn-sm btn-site-connect" value='` + jsonData[key].id + `' id="btn-site-connect" name="btn-site-connect"><i class="fas fa-share"></i></button>`;

                                siteItemHtml = siteItemHtml + `<button class="btn btn-info btn-circle btn-sm btn-site-edit" value='` + jsonData[key].id + `' id="btn-site-edit" name="btn-site-edit"><i class="fas fa-pen"></i></button>
                                <button class="btn btn-info btn-circle btn-sm btn-site-delete" value='` + jsonData[key].id + `' id="btn-site-delete" name="btn-site-delete"><i class="fas fa-times"></i></button>
                                </div>

                                <input type="hidden" id="id_` + jsonData[key].id + `" name=id="id_` + jsonData[key].id + `" value="` + jsonData[key].id + `">
                            </div>
                            </div>
                        <div class="card-body">
                            <p class="card-title" id="siteId_` + jsonData[key].id + `" name="siteId_` + jsonData[key].id + `" >ID : ` + jsonData[key].siteId + `</p>
                            <p class="card-title" id="sitePw_` + jsonData[key].id + `" name="sitePw_` + jsonData[key].id + `" >PW : ` + jsonData[key].sitePw + `</p>
                            <p class="card-title" id="siteUrl_` + jsonData[key].id + `" name="siteUrl_` + jsonData[key].id + `" >Url : ` + jsonData[key].siteUrl + `</p>`
                            
                        if(jsonData[key].remark){
                            siteItemHtml = siteItemHtml + `<hr> <p class="card-text" id="siteRemark_` + jsonData[key].id + `" name="siteRemark` + jsonData[key].id + `">` + jsonData[key].remark + `</p>`;
                        }

                        siteItemHtml = siteItemHtml + `</div>
                            <div class="card-footer">
                                <small class="text-muted">` + 
                                jsonData[key].writeDate[0] + `-` + 
                                jsonData[key].writeDate[1].toString().padStart(2,'0') + `-` + 
                                jsonData[key].writeDate[2].toString().padStart(2,'0') + 
                                ` ` +
                                jsonData[key].writeDate[3].toString().padStart(2,'0') + 
                                `:` +
                                jsonData[key].writeDate[4].toString().padStart(2,'0') + 
                                `:` +
                                jsonData[key].writeDate[5].toString().padStart(2,'0') + 
                                `</small>
                            </div>
                        </div>
                    `;

                    sitesItemsHtml = sitesItemsHtml + siteItemHtml;

                    curIndex = curIndex + 1;
            }
           

            sitesItemsHtml = sitesItemsHtml + '</div></div>';

            var elm = document.getElementById('site-content');

            elm.innerHTML = sitesItemsHtml;
        }
    })
    .fail(function(error) {
        alert(JSON.stringify(error));
    })
    .always(function() {
    });
}

$(document).on("click", "#btn-site-connect", function(e) {
    
	var url = $('#siteUrl_'+ $(this).val()).text();

    if(!url || url.length <= 7) return;

    e.preventDefault();
    window.open(url.substring(5), "_blank");
});

$(document).on("click", "#btn-site-edit", function() {
    if(!$(this).val()) return;
    
    var siteInfo = {id : $(this).val() };

    $.ajax({
        type: "POST",
        url: "/jwtauth/site/api/getInfo",
        data: JSON.stringify(siteInfo),
        contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
        dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
        // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
    }).done(function(res) {
        if (res.status === 500) {
            alert("카테고리 메뉴를 불러오지 못했습니다.");
            console.log(res);
        } else {
            var jsonData = JSON.parse(res.data);

            console.log(jsonData);

            isEdit = true;
            id = siteInfo.id;

            $("#siteModal").modal("show");

            $("#site-name").val(jsonData.siteName);
            $("#site-id").val(jsonData.siteId);
            $("#site-pw").val(jsonData.sitePw);
            $("#site-url").val(jsonData.siteUrl);
            $("#site-remark").val(jsonData.remark);
        }
    })
    .fail(function(error) {
        alert(JSON.stringify(error));
    })
    .always(function() {
    });
});

$(document).on("click", "#btn-site-delete", function() {
    if(!$(this).val()) return;

    var result = confirm('삭제 후 복구가 불가능합니다. 진행하시겠습니까?');

    if(!result) return;
    
    var siteInfo = {id : $(this).val() };

    $.ajax({
        type: "POST",
        url: "/jwtauth/site/api/delete",
        data: JSON.stringify(siteInfo),
        contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
        dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
        // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
    }).done(function(res) {
        if (res.status === 500) {
            alert("카테고리 메뉴를 불러오지 못했습니다.");
            console.log(res);
        } else {
            SiteOpen();
        }
    })
    .fail(function(error) {
        alert(JSON.stringify(error));
    })
    .always(function() {
    });
});
