let index= {
    init: function () {
        $("#btn-save").on("click", () => {// function(){}, ()=> {} this를 바인딩하기 위해서
            this.save();
        });
        $("#btn-update").on("click", () => {// function(){}, ()=> {} this를 바인딩하기 위해서
            this.update();
        });
        $("#btn-login").on("click", ()=> {
			this.login();
		});
    },

    save: function () {
        var username = $("#username").val();
        var email = $("#email").val();
        var password = $("#password").val();
        var password_confirm = $("#password-confirm").val();

        if(username === null || username === undefined || username.trim() === '' || 
            email === null || email === undefined || email.trim() === '' || 
            password === null || password === undefined || password.trim() === '') {
            return;
        }

        if(password.length < 10) {
            alert('비밀번호는 최소 10자리를 입력하여야 합니다.')
            return;
        }

        if(password !== password_confirm) {
            alert('비밀번호를 확인 후 다시 시도하십시요.')
            return;
        }

        // alert('user의 save함수 호출됨');
        let data={
            username:username,
            email:$("#email").val(),
            password:$("#password").val()
        };
        
        // ajax 호출시 default가 비동기 호출
        // ajax 통신을 이용해서 3개의 데이터를 json으로 변경하여 insert 요청
        // ajax가 통신을 성공하고 json을 리턴해주면 서버가 자동으로 자바 오브젝트로 변환
        $.ajax({
            type: "POST",
            url: "/jwtauth/auth/joinProc",
            data: JSON.stringify(data), // http body 데이터
            contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
            dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
            // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
        }).done(function (resp) {			
            if (resp.status === 500) {
                alert("회원가입이 실패하였습니다 \n아이디가 중복되었습니다.")
            } else {
                alert("회원가입이 완료되었습니다.");
                // console.log(resp)
                location.href = "/jwtauth/index";
            }
        }).fail(function (error) {
            alert(JSON.stringify(error));
        });
    },
    update: function () {
        // alert('user의 save함수 호출됨');
        let data={
            id: $("#id").val(),
            username: $("#username").val(),
            password:$("#password").val(),
            email:$("#email").val(),
        };
        // ajax 호출시 default가 비동기 호출
        // ajax 통신을 이용해서 3개의 데이터를 json으로 변경하여 insert 요청
        // ajax가 통신을 성공하고 json을 리턴해주면 서버가 자동으로 자바 오브젝트로 변환
        $.ajax({
            type: "PUT",
            url: "/jwtauth/user",
            data: JSON.stringify(data), // http body 데이터
            contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
            dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
            // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
        }).done(function (resp) {
            alert("회원수정이 완료되었습니다.");
            // console.log(resp)
            location.href = "/jwtauth/index";
        }).fail(function (error) {
            alert(JSON.stringify(error));
        });
    },
    login: function () {
       // alert('user의 save함수 호출됨');
        let data={
            username:$("#username").val(),
            password:$("#password").val()
        };
        
        // ajax 호출시 default가 비동기 호출
        // ajax 통신을 이용해서 3개의 데이터를 json으로 변경하여 insert 요청
        // ajax가 통신을 성공하고 json을 리턴해주면 서버가 자동으로 자바 오브젝트로 변환
        $.ajax({
            type: "POST",
            url: "/jwtauth/auth/loginProc",
            data: JSON.stringify(data), // http body 데이터
            contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
            dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
            // 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
        }).done(function (resp) {
			console.log(resp);
			
            if (resp.status !== 200) {
                alert("로그인에 실패하였습니다. 다시 시도하십시요.")
            } else {
                location.href = "/jwtauth/index";
            }
        }).fail(function (error) {
            alert(JSON.stringify(error));
        });
    }
}

index.init()