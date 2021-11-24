$(document).ready(function() {
    $("#btn-admin-add").click(function() {
        let name = $('#admin-name').val();
        let email = $('#admin-email').val();
        let password = $('#admin-password').val();
        let password_confirm = $('#admin-password-confirm').val();
        let active = false;

        if($("#btn-admin-active-switch").hasClass("active")){
            active = true;
        }

        if(password !== password_confirm) {
            alert('비밀번호를 다시 확인하십시요.');
            return;
        }

        userAdd(name, email, password, password_confirm, active, "ROLE_ADMIN");
    });

    $("#btn-manager-add").click(function() {
        let name = $('#manager-name').val();
        let email = $('#manager-email').val();
        let password = $('#manager-password').val();
        let password_confirm = $('#manager-password-confirm').val();
        let active = false;

        if($("#btn-manager-active-switch").hasClass("active")){
            active = true;
        }

        if(password !== password_confirm) {
            alert('비밀번호를 다시 확인하십시요.');
            return;
        }

        userAdd(name, email, password, password_confirm, active, "ROLE_MANAGER");
    });

    $("#btn-userguest-add").click(function() {
        let name = $('#userguest-name').val();
        let email = $('#userguest-email').val();
        let password = $('#userguest-password').val();
        let password_confirm = $('#userguest-password-confirm').val();
        let active = false;

        if($("#btn-userguest-active-switch").hasClass("active")){
            active = true;
        }

        if(password !== password_confirm) {
            alert('비밀번호를 다시 확인하십시요.');
            return;
        }

        userAdd(name, email, password, password_confirm, active, "ROLE_USER");
    });

    function userAdd(name, email, password, password_confirm, active, role) { 
        if(name === null || 
            name === undefined || 
            name.trim() === '' || 
            email === null || 
            email === undefined || 
            email.trim() === '' || 
            password === null || 
            password === undefined || 
            password.trim() === '' || 
            password_confirm === null || 
            password_confirm === undefined || 
            password_confirm.trim() === '' || 
            role === null || 
            role === undefined || 
            role.trim() === '') {
            return;
        }

        const user = {
            username : name,
            email: email,
            password : password,
            active : active,
            roles : role
        };

        // ajax 호출시 default가 비동기 호출
        // ajax 통신을 이용해서 3개의 데이터를 json으로 변경하여 insert 요청
        // ajax가 통신을 성공하고 json을 리턴해주면 서버가 자동으로 자바 오브젝트로 변환
        $.ajax({
            type: "POST",
            url: "/jwtauth/setting/api/userAccount/join/Proc",
            data: JSON.stringify(user), // http body 데이터
            contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
            dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
            // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
        }).done(function(res) {
            if (res.status === 500) {
                alert("오류가 발생하였습니다.");
                console.log(res);
            } else {
                alert("정상적으로 저장하였습니다.");
            }
        }).fail(function(error) {
            alert(JSON.stringify(error));
        }).always(function() {});
    }


    $('#adminModal').on('hidden.bs.modal', function() {
        $(this).find('input[type=text], input[type=password], input[type=number], input[type=email], textarea').val('');
        if($('#btn-admin-active-switch').hasClass('active') == true) { 
            $('#btn-admin-active-switch').removeClass('active')   
        }
    });

    $('#managerModal').on('hidden.bs.modal', function() {
        $(this).find('input[type=text], input[type=password], input[type=number], input[type=email], textarea').val('');
        if($('#btn-manager-active-switch').hasClass('active') == true) { 
            $('#btn-manager-active-switch').removeClass('active')   
        }
    });

    $('#userguestModal').on('hidden.bs.modal', function() {
        $(this).find('input[type=text], input[type=password], input[type=number], input[type=email], textarea').val('');
        if($('#btn-userguest-active-switch').hasClass('active') == true) { 
            $('#btn-userguest-active-switch').removeClass('active')   
        }
    });

    $('#btn-admin-toggle').click(function() {
        $.ajax({
            type: "GET",
            url: "/jwtauth/setting/api/userAccount/admin/select",
            contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
            dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
            // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
        }).done(function(res) {
            if (res.status === 500) {
                alert("admin 사용자를 불러오지 못했습니다.");
                console.log(res);
            } else {
                var dropDownItemsHtml = `<ul class="list-group">`;

                var jsonData = JSON.parse(res.data);

                for (key in jsonData) {
                    dropDownItemsHtml = dropDownItemsHtml +
                        `
                            <li class="list-group-item">
                                <span style="display:none;">` + jsonData[key].id + `</span>
                                <span>` + jsonData[key].username + `</span>`;
            
                                dropDownItemsHtml = dropDownItemsHtml + `<div style="float: right;">
                                    <button type="button" id="btn-admin-setting-role" class="btn btn-sm btn-primary dropdown-toggle"  data-toggle="dropdown" aria-expanded="false"><i class="fas fa-user" aria-hidden="true"></i></button>
                                    <button type="button" id="btn-admin-setting-save" class="btn btn-warning btn-sm" style="float:right;margin-left:10px;"><i class="fas fa-save" aria-hidden="true"></i></button>
            
                                    <div id="dropdown-admin-detail-user-items-"` + jsonData[key].username + ` class="dropdown-menu" aria-labelledby="btn-dropdown-admin-detail">
                                        <a class="dropdown-item" href="#">Admin</a>
                                        <a class="dropdown-item" href="#">Manager</a>
                                        <a class="dropdown-item" href="#">User</a>
                                    </div>
                                </div>
                            
                        `;

                        if(jsonData[key].active === true) {
                            dropDownItemsHtml = dropDownItemsHtml +`
                                <button type="button" class="btn btn-sm btn-toggle active" id="btn-admin-detail-switch" data-toggle="button" aria-pressed="false" style="float: right;margin-rigth: 20px;margin-top:3px;"> 
                                <div class="handle"></div>
                            </button> `;
                        }
                        else { 
                            dropDownItemsHtml = dropDownItemsHtml +`
                                <button type="button" class="btn btn-sm btn-toggle" id="btn-admin-detail-switch" data-toggle="button" aria-pressed="false" autocomplete="off" style="float: right;margin-rigth: 20px;margin-top:3px;"> 
                                <div class="handle"></div>
                            </button> `;
                        }
                }
                dropDownItemsHtml = dropDownItemsHtml + `</li></ul>`;

                var elm = document.getElementById('admin-detail-setting-container');
                elm.innerHTML = dropDownItemsHtml;
            }
        }).fail(function(error) {
            alert(JSON.stringify(error));
        });
    });

    $('#btn-manager-toggle').click(function() {
        $.ajax({
            type: "GET",
            url: "/jwtauth/setting/api/userAccount/manager/select",
            contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
            dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
            // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
        }).done(function(res) {
            if (res.status === 500) {
                alert("관리자 사용자를 불러오지 못했습니다.");
                console.log(res);
            } else {
                var dropDownItemsHtml = `<ul class="list-group">`;

                var jsonData = JSON.parse(res.data);

                for (key in jsonData) {
                    dropDownItemsHtml = dropDownItemsHtml +
                        `
                            <li class="list-group-item">
                                <span style="display:none;">` + jsonData[key].id + `</span>
                                <span>` + jsonData[key].username + `</span>`;
            
                                dropDownItemsHtml = dropDownItemsHtml + `<div style="float: right;">
                                    <button type="button" id="btn-manager-setting-role" class="btn btn-sm btn-primary dropdown-toggle"  data-toggle="dropdown" aria-expanded="false"><i class="fas fa-user" aria-hidden="true"></i></button>
                                    <button type="button" id="btn-manager-setting-save" class="btn btn-warning btn-sm" style="float:right;margin-left:10px;"><i class="fas fa-save" aria-hidden="true"></i></button>
            
                                    <div id="dropdown-manager-detail-user-items-"` + jsonData[key].username + ` class="dropdown-menu" aria-labelledby="btn-dropdown-manager-detail">
                                        <a class="dropdown-item" href="#">Admin</a>
                                        <a class="dropdown-item" href="#">Manager</a>
                                        <a class="dropdown-item" href="#">User</a>
                                    </div>
                                </div>
                            
                        `;

                        if(jsonData[key].active === true) {
                            dropDownItemsHtml = dropDownItemsHtml +`
                                <button type="button" class="btn btn-sm btn-toggle active" id="btn-manager-detail-switch" data-toggle="button" aria-pressed="false" style="float: right;margin-rigth: 20px;margin-top:3px;"> 
                                <div class="handle"></div>
                            </button> `;
                        }
                        else { 
                            dropDownItemsHtml = dropDownItemsHtml +`
                                <button type="button" class="btn btn-sm btn-toggle" id="btn-manager-detail-switch" data-toggle="button" aria-pressed="false" autocomplete="off" style="float: right;margin-rigth: 20px;margin-top:3px;"> 
                                <div class="handle"></div>
                            </button> `;
                        }
                }
                dropDownItemsHtml = dropDownItemsHtml + `</li></ul>`;

                var elm = document.getElementById('manager-detail-setting-container');
                elm.innerHTML = dropDownItemsHtml;
            }
        }).fail(function(error) {
            alert(JSON.stringify(error));
        });
    });


    $('#btn-userguest-toggle').click(function() {
        $.ajax({
            type: "GET",
            url: "/jwtauth/setting/api/userAccount/user/select",
            contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
            dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
            // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
        }).done(function(res) {
            if (res.status === 500) {
                alert("일반 사용자를 불러오지 못했습니다.");
                console.log(res);
            } else {
                var dropDownItemsHtml = `<ul class="list-group">`;

                var jsonData = JSON.parse(res.data);

                for (key in jsonData) {
                    dropDownItemsHtml = dropDownItemsHtml +
                        `
                            <li class="list-group-item">
                                <span style="display:none;">` + jsonData[key].id + `</span>
                                <span>` + jsonData[key].username + `</span>`;
            
                                dropDownItemsHtml = dropDownItemsHtml + `<div style="float: right;">
                                    <button type="button" id="btn-userguest-setting-role" class="btn btn-sm btn-primary dropdown-toggle"  data-toggle="dropdown" aria-expanded="false"><i class="fas fa-user" aria-hidden="true"></i></button>
                                    <button type="button" id="btn-userguest-setting-save" class="btn btn-warning btn-sm" style="float:right;margin-left:10px;"><i class="fas fa-save" aria-hidden="true"></i></button>
            
                                    <div id="dropdown-userguest-detail-user-items-"` + jsonData[key].username + ` class="dropdown-menu" aria-labelledby="btn-dropdown-userguest-detail">
                                        <a class="dropdown-item" href="#">Admin</a>
                                        <a class="dropdown-item" href="#">Manager</a>
                                        <a class="dropdown-item" href="#">User</a>
                                    </div>
                                </div>
                            
                        `;

                        if(jsonData[key].active === true) {
                            dropDownItemsHtml = dropDownItemsHtml +`
                                <button type="button" class="btn btn-sm btn-toggle active" id="btn-userguest-detail-switch" data-toggle="button" aria-pressed="false" style="float: right;margin-rigth: 20px;margin-top:3px;"> 
                                <div class="handle"></div>
                            </button> `;
                        }
                        else { 
                            dropDownItemsHtml = dropDownItemsHtml +`
                                <button type="button" class="btn btn-sm btn-toggle" id="btn-userguest-detail-switch" data-toggle="button" aria-pressed="false" autocomplete="off" style="float: right;margin-rigth: 20px;margin-top:3px;"> 
                                <div class="handle"></div>
                            </button> `;
                        }
                }
                dropDownItemsHtml = dropDownItemsHtml + `</li></ul>`;

                var elm = document.getElementById('userguest-detail-setting-container');
                elm.innerHTML = dropDownItemsHtml;
            }
        }).fail(function(error) {
            alert(JSON.stringify(error));
        });
    });
});