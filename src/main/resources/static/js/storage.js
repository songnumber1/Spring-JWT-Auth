var datatable;

window.addEventListener('DOMContentLoaded', event => {
	// Simple-DataTables
	// https://github.com/fiduswriter/Simple-DataTables/wiki
	const storageTable = document.getElementById('storage-table');

	if (storageTable) {
		datatable = new simpleDatatables.DataTable(storageTable);
	}
});

var isDrive = false;

$(document).on("click", "#path", function() {
	// 현재 클릭된 Row(<tr>)
	var tr = $(this).parent().parent()
	var td = tr.children();

	// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
	console.log("클릭한 Row의 모든 데이터 : " + tr.text());

	// td.eq(index)를 통해 값을 가져올 수도 있다.
	var absolutePath = td.eq(0).text();

	console.log(absolutePath);

	let path = $(this).text();

	if (path === undefined ||
		path === null ||
		path === "") {
		return;
	}

	$.ajax({
		url: "/jwtauth/storage/getdirinfo",
		type: "POST",
		data: { parentId: path, path: absolutePath },
		success: function(res) {
			if (res.status === 200) {
				console.log(res.data);
				datatable.destroy();

				var html = `<thead>
					<tr>
						<th style="display:none;">AbsolutePath</th>
						<th>Name</th>
						<th>Size</th>
						<th>Type</th>
						<th style="text-align: center;">Work</th>
					</tr>
				</thead>`;

				for (key in res.data) {
					html += '<tr>';
					html += '<td style="display:none;">' + res.data[key].absolutePath + '</td>';
					html += '<td style="vertical-align : middle;"><a id="path" href="javascript:void(0);">' + res.data[key].text + '</a></td>';
					html += '<td style="vertical-align : middle;">' + res.data[key].length + 'K</td>';
					if (res.data[key].directory === true) {
						html += '<td style="vertical-align : middle; text-align: center;width: 5%;"><i class="fas fa-folder" aria-hidden="true"></i></td>';
						isDrive = true;
					}
					else {
						html += '<td style="vertical-align : middle; text-align: center;width: 5%;"><i class="fas fa-file" aria-hidden="true"></i></td>';
						isDrive = false;
					}

					html += `<td style="text-align: center;">
					<button type="button" class="btn btn-primary btn-circle btn-sm"><i class="fas fa-download" aria-hidden="true"></i></button>
					<button type="button" class="btn btn-secondary btn-circle btn-sm"><i class="fas fa-eye" aria-hidden="true"></i></button>
					<button type="button" class="btn btn-success btn-circle btn-sm"><i class="fas fa-star" aria-hidden="true"></i></button> 
				</td>`;
					html += '</tr>';
				}

				$("#storage-table").empty();
				$("#storage-table").append(html);

				datatable = new simpleDatatables.DataTable(document.getElementById('storage-table'));
			}
		}, error: function(error) {
			console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		}
	});
});

function createTable() {
	let tc = JSON.parse(document.getElementById("storageData").innerHTML);

	var html = `<thead>
		<tr>
			<th style="display:none;">AbsolutePath</th>
			<th>Name</th>
			<th>Size</th>
			<th>Type</th>
		</tr>
	</thead>`;

	for (key in tc) {
		html += '<tr>';
		html += '<td style="display:none;">' + tc[key].absolutePath + '</td>';
		html += '<td><a id="path" href="javascript:void(0); style="vertical-align : middle; ">' + tc[key].text + '</a></td>';
		html += '<td style="vertical-align : middle;">' + tc[key].useSize + ' / ' + tc[key].totalSize + '</td>';
		html += '<td style="vertical-align : middle; text-align: center;width: 5%;"><i class="fas fa-database" aria-hidden="true"></i></td>';
		html += '</tr>';
	}

	$("#storage-table").empty();
	$("#storage-table").append(html);
}

$(document).ready(function() {
	isDrive = true;

	createTable();

	$('#btn-path-up').click(function() {
		alert(isDrive);
	});
});
