$(document).on("click", "#btn-dir", function() {
	// 현재 클릭된 Row(<tr>)
	var tr = $(this).parent().parent()
	var td = tr.children();

	// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
	//console.log("클릭한 Row의 모든 데이터 : " + tr.text());

	// td.eq(index)를 통해 값을 가져올 수도 있다.
	var absolutePath = td.eq(tableAbsolutePathTdIndex).text();
	var path = td.eq(tableNameTdIndex).text();

	if (path === undefined ||
		path === null ||
		path === "") {
		return;
	}

	pathMoveFunc(path, absolutePath, pathAction.MOVE);
});

$(document).on("click", "#path", function() {
	// 현재 클릭된 Row(<tr>)
	var tr = $(this).parent().parent();

	var td = tr.children();

	// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
	//console.log("클릭한 Row의 모든 데이터 : " + tr.text());

	// td.eq(index)를 통해 값을 가져올 수도 있다.
	var absolutePath = td.eq(tableAbsolutePathTdIndex).text();
	
	let path = $(this).text();

	if (path === undefined ||
		path === null ||
		path === "") {
		return;
	}

	pathMoveFunc(path, absolutePath, pathAction.MOVE);
});

$(document).on("click", "#btn-download", function() {
	// 현재 클릭된 Row(<tr>)
	var tr = $(this).parent().parent()
	var td = tr.children();

	var absolutePath = td.eq(tableAbsolutePathTdIndex).text();

    fileDownloadFunc(absolutePath);
});