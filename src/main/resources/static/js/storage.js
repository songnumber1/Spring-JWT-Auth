$(document).ready(function() {
	$("#data_list").DataTable({

		columns: [
			{ data: "id" },
			{ data: "name" },
			{ data: "location" }
		],

		// 표시 건수기능 숨기기
		lengthChange: true,
		// 검색 기능 숨기기
		searching: true,
		// 정렬 기능 숨기기
		ordering: true,
		// 정보 표시 숨기기
		info: true,
		// 페이징 기능 숨기기
		paging: true
	});

	function folderOpen() {
		$.ajax({
			url: "selectUserList.do",
			type: "POST",
			data: { dept_id: dept_id },
			success: function(data) {
				$("#userList").dataTable({
					data: data,
					columns: [
						{ data: 'user_nm_ko' },
						{ data: 'user_id' },
						{ data: 'email' },
						{ data: 'enable' },
						{ data: 'pos_nm' }
					]
				});

			}, error: function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
			}
		});
	}
});