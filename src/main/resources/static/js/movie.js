var datatable;
const tableId ='movie-table';

window.addEventListener('DOMContentLoaded', event => {
	// Simple-DataTables
	// https://github.com/fiduswriter/Simple-DataTables/wiki
	// 옵션 관련 : https://datatables.net/manual/options

	if (document.getElementById(tableId)) {
		datatable = new simpleDatatables.DataTable(document.getElementById(tableId), {
			paging: false, // 페이징 숨김 
			perPage: 1 // 보여줄 페이지 수 
		});
	}
});

function createTable() {
	if (datatable !== undefined && datatable !== null) {
		datatable.destroy();
		datatable = new simpleDatatables.DataTable(document.getElementById(tableId), {
			paging: false, // 페이징 숨김 
			perPage: 1 // 보여줄 페이지 수 
		});
	}

	var html = `<thead>
		<tr>
			<th style="display:none;">AbsolutePath</th>
			<th class="col-5">Title</th>
			<th class="col-3">Type</th>
			<th class="col-2">WriteDate</th>
			<th class="col-2" style="text-align: center;">View</th>
		</tr>
	</thead>`;

	$("#movie-table").empty();
	$("#movie-table").append(html);
}

$(document).ready(function() {
	createTable();

	var titleHeight = $('#container-title').outerHeight(true);
	var documentHeight = $(window).height();
	var navHeight = $('#navbar-main').outerHeight(true);
	var lineHeight = $('#title-content-line').outerHeight(true);
	var footerHeight = $('#container-footer').outerHeight(true);
	var lineMarginBottom = parseInt($("#title-content-line").css("marginBottom"));
	var lineMarginTop = parseInt($("#title-content-line").css("marginTop"));

	$('#tree-container').css('height', documentHeight -
		titleHeight -
		navHeight -
		lineHeight -
		footerHeight -
		lineMarginBottom - 
		lineMarginTop - 20);

  	$('#movietree').treeview({
		color: "#428bca",
		//expandIcon: 'fa fa-plus',
		//collapseIcon: 'fa fa-minus',
		levels: 0,
		expandIcon: 'glyphicon glyphicon-chevron-right',
		collapseIcon: 'glyphicon glyphicon-chevron-down',
		data: getTree()
	})
	// https://openbase.com/js/bootstrap-treeview/documentation - List of Events
	.on('nodeExpanded', function(event, node) {
		console.log("nodeExpanded", node);
		var childrenNodes = _getChildren(node);
		console.log("nodeExpanded - childrenNodes", childrenNodes);
	})
	.on('nodeCollapsed', function(event, node) {
		console.log("nodeCollapsed", node);
		var childrenNodes = _getChildren(node);
		console.log("nodeCollapsed - childrenNodes", childrenNodes);
	    
	})
	.on('nodeSelected', function(event, node) {
		if(node.tags.length === 0 || node.tags[0] === ''|| node.tags[0] === undefined) {
			alert('태그 정보를 확인할 수 없습니다.')
			return;
		}

		console.log("nodeSelected", node);
		// var childrenNodes = _getChildren(node);
		// console.log("nodeSelected - childrenNodes", childrenNodes);

		pathMoveFunc(node.tags[0]);
		
	});

	function _getChildren(node) {
		if (node.nodes === undefined) return [];
		var childrenNodes = node.nodes;
		node.nodes.forEach(function(n) {
			childrenNodes = childrenNodes.concat(_getChildren(n));
		});
		return childrenNodes;
	}

	function getTree() {
		return JSON.parse(document.getElementById("movieTreeData").innerHTML);
	}
});

let pathMoveFunc = function pathMove(absolutePath) {
	console.log(absolutePath);

	$.ajax({
		url: "/jwtauth/movie/getdirinfo",
		type: "POST",
		data: { absolutePath: absolutePath },
		success: function(res) {
			if (res.status === 200) {
				console.log(res.data);


				datatable.destroy();

				var html = `<thead>
					<tr>
						<th style="display:none;">AbsolutePath</th>
						<th class="col-5">Title</th>
						<th class="col-3">Type</th>
						<th class="col-2">WriteDate</th>
						<th class="col-2" style="text-align: center;">View</th>
					</tr>
				</thead>`;

				for (key in res.data) {
					html += '<tr>';
					html += '<td style="display:none;">' + res.data[key].absolutePath + '</td>';
					html += '<td style="vertical-align : middle;">' + res.data[key].name + '</td>';

					if (res.data[key].dir === true) {
						html += '<td style="vertical-align : middle; text-align: center;width: 5%;"><i class="fas fa-folder" aria-hidden="true"></i></td>';
					}
					else {
						html += '<td style="vertical-align : middle; text-align: center;width: 5%;"><i class="fas fa-file" aria-hidden="true"></i></td>';
					}

					html += '<td style="text-align: center;">' + res.data[key].writeDate + '</td>';

					if (res.data[key].dir !== true) {
						html += `<td style="text-align: center;">
							<button type="button" class="btn btn-primary btn-circle btn-sm"><i class="fas fa-download" aria-hidden="true"></i></button>
							<button type="button" class="btn btn-secondary btn-circle btn-sm"><i class="fas fa-eye" aria-hidden="true"></i></button>
						</td>`;
					} else {
						html += `<td style="text-align: center;">
							<button type="button" class="btn btn-info btn-circle btn-sm"><i class="fas fa-folder-open" aria-hidden="true"></i></button>
						</td>`;
					}
					

					html += '</tr>';
				}

				$("#movie-table").empty();
				$("#movie-table").append(html);

				datatable = new simpleDatatables.DataTable(document.getElementById(tableId), {
					paging: false, // 페이징 숨김 
					perPage: 1 // 보여줄 페이지 수 
				});
			}
		}, error: function(error) {
			console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		}
	});
}
  