var datatable;
const rootPath = "My Computer"
let explorerPath = rootPath;
let pathHistory = [];
let pathHistoryIndex = 0;
let pathAction = Object.freeze({ MOVE: 0, BACK: 1, FOWARD: 2, UP: 3, REFRESH: 4 });
const tableAbsolutePathTdIndex = 0;
const tableNameTdIndex = 1;

window.addEventListener('DOMContentLoaded', event => {
	// Simple-DataTables
	// https://github.com/fiduswriter/Simple-DataTables/wiki
	// 옵션 관련 : https://datatables.net/manual/options

	if (document.getElementById('storage-table')) {
		datatable = new simpleDatatables.DataTable(document.getElementById('storage-table'), {
			paging: false, // 페이징 숨김 
			perPage: 1 // 보여줄 페이지 수 
		});
	}
});

let setPathFunc = function setPath(path, action) {
	explorerPath = path;
	$('.lbl-path').html(explorerPath);

	if (action == pathAction.MOVE) {
		pathHistory.push(path);
	}
}

let pathMoveFunc = function pathMove(path, absolutePath, action) {
	$.ajax({
		url: "/jwtauth/storage/getdirinfo",
		type: "POST",
		data: { parentId: path, path: absolutePath },
		success: function(res) {
			if (res.status === 200) {
				//console.log(res.data);
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
					
					if (res.data[key].directory === true) {
						html += '<td style="vertical-align : middle;"><a id="path" href="javascript:void(0);">' + res.data[key].text + '</a></td>';
						html += '<td style="vertical-align : middle;"></td>';
						html += '<td style="vertical-align : middle; text-align: center;width: 5%;"><i class="fas fa-folder" aria-hidden="true"></i></td>';

						html += `<td style="text-align: center;">
							<button type="button" id="btn-dir" class="btn btn-secondary btn-circle btn-sm"><i class="fas fa-folder-open" aria-hidden="true"></i></button>
							<button type="button" class="btn btn-success btn-circle btn-sm"><i class="fas fa-star" aria-hidden="true"></i></button> 
						</td>`;
					}
					else {
						html += '<td style="vertical-align : middle;">' + res.data[key].text + '</td>';
						html += '<td style="vertical-align : middle;text-align: right">' + res.data[key].length + ' K</td>';
						html += '<td style="vertical-align : middle; text-align: center;width: 5%;"><i class="fas fa-file" aria-hidden="true"></i></td>';

						html += `<td style="text-align: center;">
							<button type="button" id="btn-download" class="btn btn-primary btn-circle btn-sm"><i class="fas fa-download" aria-hidden="true"></i></button>
							<button type="button" class="btn btn-secondary btn-circle btn-sm"><i class="fas fa-eye" aria-hidden="true"></i></button>
							<button type="button" class="btn btn-success btn-circle btn-sm"><i class="fas fa-star" aria-hidden="true"></i></button> 
						</td>`;
					}

					html += '</tr>';
				}

				$("#storage-table").empty();
				$("#storage-table").append(html);

				datatable = new simpleDatatables.DataTable(document.getElementById('storage-table'));
				document.getElementById('btn-path-up').disabled = false;

				setPathFunc(absolutePath, action);

				switch (action) {
					case pathAction.MOVE:
						pathHistoryIndex = pathHistoryIndex + 1;

						document.getElementById('btn-path-foward').disabled = pathHistory.length - 1 === pathHistoryIndex;
						document.getElementById('btn-path-back').disabled = pathHistoryIndex === 0;
						break;

					case pathAction.BACK:
						pathBeforeMoveFunc();
						break;

					case pathAction.FOWARD:
						pathFowardMoveFunc();
						break;
				}

/*
				if (isPathHistorySave) {
					pathHistoryIndex = pathHistoryIndex + 1;

					document.getElementById('btn-path-foward').disabled = pathHistory.length - 1 === pathHistoryIndex;
					document.getElementById('btn-path-back').disabled = pathHistoryIndex === 0;
				}
				else {
					console.log(isFowardPath);

					if (isFowardPath) {
						pathFowardMoveFunc();
					}
					else {
						pathBeforeMoveFunc();
					}
				}
*/
				logFunc('setPath');
			}
		}, error: function(error) {
			console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		}
	});
}

function createTable(action) {
	document.getElementById('btn-path-up').disabled = true;
	document.getElementById('btn-path-back').disabled = pathHistoryIndex <= 0;
	document.getElementById('btn-path-foward').disabled = pathHistoryIndex > pathHistory.length - 1;

	if (datatable !== undefined && datatable !== null) {
		datatable.destroy();
		datatable = new simpleDatatables.DataTable(document.getElementById('storage-table'), {
			paging: false, // 페이징 숨김 
			perPage: 1 // 보여줄 페이지 수 
		});
	}

	let tc = JSON.parse(document.getElementById("storageData").innerHTML);
	setPathFunc(rootPath, action);

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
	createTable(pathAction.MOVE);

	$('#btn-path-up').click(function() {
		logFunc('up');
		if (explorerPath.length <= 0) {
			return;
		}

		if (explorerPath.length === 3) {
			pathBeforeMoveFunc();
			createTable(pathAction.REFRESH);
			setPath = rootPath;
			return;
		}

		let pathLastIndexOf = explorerPath.lastIndexOf('\\');
		let path = explorerPath.substring(0, pathLastIndexOf + 1);

		pathMoveFunc(path, path, pathAction.UP);
	});

	$('#btn-path-back').click(function() {
		logFunc('back');

		if (pathHistory.length === 0) {
			return;
		}

		if (pathHistoryIndex - 1 === 0) {
			pathBeforeMoveFunc();
			createTable(pathAction.BACK);
			return;
		}

		if (pathHistory[pathHistoryIndex - 1] === undefined ||
			pathHistory[pathHistoryIndex - 1] === null) {
			pathHistory.length = 0;
			pathHistoryIndex = 0;
			return;
		}

		pathMoveFunc(pathHistory[pathHistoryIndex - 1], pathHistory[pathHistoryIndex - 1], pathAction.BACK);
	});

	$('#btn-path-foward').click(function() {
		logFunc('foward');

		if (pathHistory.length - 1 === pathHistoryIndex) {
			return;
		}

		if (pathHistory[pathHistoryIndex + 1] === undefined ||
			pathHistory[pathHistoryIndex + 1] === null) {
			console.log('foward-2', pathHistory.length, pathHistoryIndex);
			pathHistoryIndex = pathHistory.length - 1;
			return;
		}

		if (pathHistory[pathHistoryIndex + 1] === rootPath) {
			createTable(pathAction.FOWARD);
			pathFowardMoveFunc();
			return;
		}

		pathMoveFunc(pathHistory[pathHistoryIndex + 1], pathHistory[pathHistoryIndex + 1], pathAction.FOWARD);
	});

	$('#btn-path-refresh').click(function() {
		if (explorerPath === rootPath) {
			createTable(pathAction.REFRESH);
			return;
		}

		pathMoveFunc(explorerPath, explorerPath, pathAction.REFRESH);
	});
});

let pathBeforeMoveFunc = function pathBeforeMove() {
	if (pathHistoryIndex >= 1) {
		pathHistoryIndex = pathHistoryIndex - 1;
	}

	document.getElementById('btn-path-foward').disabled = !(pathHistory.length > pathHistoryIndex + 1);
	document.getElementById('btn-path-back').disabled = pathHistoryIndex === 0;
}

let pathFowardMoveFunc = function pathFowardMove() {
	if (pathHistoryIndex - 1 <= pathHistory.length) {
		pathHistoryIndex = pathHistoryIndex + 1;
	}

	document.getElementById('btn-path-foward').disabled = !(pathHistory.length > pathHistoryIndex + 1);
	document.getElementById('btn-path-back').disabled = pathHistoryIndex === 0;
}

let logFunc = function log(functionName) {
	let logData = 'Function : ' + functionName + ' / pathHistory : ' + pathHistory + ' / pathHistory.Length : ' + pathHistory.length + ' / pathHistoryIndex : ' + pathHistoryIndex;
	console.log(logData);
}