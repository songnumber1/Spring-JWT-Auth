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
				alert("카테고리 메뉴가 저장되었습니다.");
			}
		}).fail(function(error) {
			alert(JSON.stringify(error));
		}).always(function() {
		});
	});

	$("#btn-dropdown-category").on('click', function() {
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
				var jsonData = JSON.parse(res.data);

				console.log(jsonData);

				for (key in jsonData) {
					dropDownItemsHtml = dropDownItemsHtml +
						`<a 
						class="dropdown-item" 
						href="#" 
						name=`+ jsonData[key].categoryId + ` 
						onclick='
							$("#btn-dropdown-category").text($(this).text());
							$("#btn-dropdown-category").val($(this).text());
							$("#input-hidden-select-category").val($(this).attr("name"));
							$("#category-invalid-feedback").css("display", "none");
						'>` +
						jsonData[key].categoryTitle + '</a>';
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
		$('#btn-dropdown-category').text('Select Category');
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
			menuOneDeptTitle: $('#root-name').val(),
			menuOneDeptUrl: $('#root-url').val(),
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














	$("#btn-dropdown-root").on('click', function() {
		$.ajax({
			type: "GET",
			url: "/jwtauth/menu/onedept/select",
			contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
			dataType: "json" // 요청을 서버로해서 응답이 왔을때 기본적으로 모든것이 문자열로오는데
			// 생긴게 json이라면 => javascript 오브젝트로 변경 해줌
		}).done(function(res) {
			console.log(res.data);
			
			if (res.status === 500) {
				alert("카테고리 메뉴를 불러오지 못했습니다.");
				console.log(res);
			} else {
				var dropDownItemsHtml = '';
				var jsonData = JSON.parse(res.data);
				
				for (key in jsonData) {
					dropDownItemsHtml = dropDownItemsHtml +
						`<a 
						class="dropdown-item" 
						href="#" 
						name=`+ jsonData[key].menuOneDeptid + ` 
						onclick='
							$("#btn-dropdown-root").text($(this).text());
							$("#btn-dropdown-root").val($(this).text());
							$("#input-hidden-select-root").val($(this).attr("name"));
							$("#root-invalid-feedback").css("display", "none");
						'>` +
						jsonData[key].menuOneDeptTitle + '</a>';
				}

				var elm = document.getElementById('dropdown-root-items');

				elm.innerHTML = dropDownItemsHtml;
			}
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	});

	$('#subModal').on('hidden.bs.modal', function() {
		$(this).find('input[type=text], input[type=password], input[type=number], input[type=email], textarea').val('');
		$('#input-hidden-select-root').val('-1');
		$('#btn-dropdown-root').text('Select Root');
		$('#dropdown-root-items').innerHTML = '';
		$("#root-invalid-feedback").css("display", "block");
	});

	$('#btn-root-add').click(function() {
		if ($('#root-name').val() === ''
			|| $('#input-hidden-select-root').val() === '-1') {
			return;
		}

		console.log($('#input-hidden-select-root').val());

		const subMenu = {
			menuTwoDeptTitle: $('#sub-name').val(),
			menuTwoDeptUrl: $('#sub-url').val(),
			menuOneDept: {
				menuOneDeptid: $('#input-hidden-select-root').val()
			}
		};

		// ajax 호출시 default가 비동기 호출
		// ajax 통신을 이용해서 3개의 데이터를 json으로 변경하여 insert 요청
		// ajax가 통신을 성공하고 json을 리턴해주면 서버가 자동으로 자바 오브젝트로 변환
		$.ajax({
			type: "POST",
			url: "/jwtauth/menu/twodept/add",
			data: JSON.stringify(subMenu), // http body 데이터
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