$(document).ready(function() {
	$('#categoryModal').on('hidden.bs.modal', function() {
		$(this).find('input[type=text], input[type=password], input[type=number], input[type=email], textarea').val('');
	});

	$('#btn-category-add').click(function() {
		if ($('#category-name').val() === '') {
			return;
		}

		const categoryMenu = {
			categoryTitle: $('#category-name').val()
		};

		// ajax 호출시 default가 비동기 호출
		// ajax 통신을 이용해서 3개의 데이터를 json으로 변경하여 insert 요청
		// ajax가 통신을 성공하고 json을 리턴해주면 서버가 자동으로 자바 오브젝트로 변환
		$.ajax({
			type: "POST",
			url: "/jwtauth/menu/category/add",
			data: JSON.stringify(categoryMenu), // http body 데이터
			contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
			dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
			// 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
		}).done(function(res) {
			if (res.status === 500) {
				alert("카테고리 메뉴가 실패하였습니다.");
				console.log(res);
			} else {

				console.log($("##categoryModal").find('form'));
				$("##categoryModal").find('form')[0].reset()
				alert("카테고리 메뉴가 저장되었습니다.");
			}
		}).fail(function(error) {
			alert(JSON.stringify(error));
		}).always(function() {
		});
	});

	$("#dropdownMenuButton").on('click', function() {
		console.log('dropdownMenuButton_click');

		$.ajax({
			type: "GET",
			url: "/jwtauth/menu/category/select",
			contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
			dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
			// 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
		}).done(function(res) {
			if (res.status === 500) {
				alert("카테고리 메뉴를 불러오지 못했습니다.");
				console.log(res);
			} else {
				var dropDownItemsHtml = '';

				for (key in res.data) {
					dropDownItemsHtml = dropDownItemsHtml +
						`<a 
						class="dropdown-item" 
						href="#" 
						name=`+ res.data[key].categoryId + ` 
						onclick='
							$("#dropdownMenuButton").text($(this).text());
							$("#dropdownMenuButton").val($(this).text());
							$("#input-hidden-select-category").val($(this).attr("name"));
							$("#category-invalid-feedback").css("display", "none");
						'>` +
						res.data[key].categoryTitle + '</a>';
				}

				var elm = document.getElementById('dropdown-category-items');

				elm.innerHTML = dropDownItemsHtml;
			}
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	});

	$('#rootModal').on('hidden.bs.modal', function() {
		$(this).find('input[type=text], input[type=password], input[type=number], input[type=email], textarea').val('');
		$('#input-hidden-select-category').val('-1');
		$('#dropdownMenuButton').text('Select Category');
		$('#dropdown-category-items').innerHTML = '';
		$("#category-invalid-feedback").css("display", "block");
	});
	
	$('#btn-root-add').click(function() {
		if ($('#root-name').val() === ''
			|| $('#input-hidden-select-category').val() === '-1') {
			return;
		}

		console.log($('#input-hidden-select-category').val());

		const rootMenu = {
			menuOneTitle: $('#root-name').val(),
			menuOneUrl: $('#root-url').val(),
			menuCategory: {
				categoryId: $('#input-hidden-select-category').val()
			}
		};

		// ajax 호출시 default가 비동기 호출
		// ajax 통신을 이용해서 3개의 데이터를 json으로 변경하여 insert 요청
		// ajax가 통신을 성공하고 json을 리턴해주면 서버가 자동으로 자바 오브젝트로 변환
		$.ajax({
			type: "POST",
			url: "/jwtauth/menu/onedept/add",
			data: JSON.stringify(rootMenu), // http body 데이터
			contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
			dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
			// 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
		}).done(function(res) {
			if (res.status === 500) {
				alert("루트 메뉴가 실패하였습니다.");
				console.log(res);
			} else {
				alert("루트 메뉴가 저장되었습니다.");
			}
		}).fail(function(error) {
			alert(JSON.stringify(error));
		}).always(function() {

		});
	});
});