var fileDownloadFunc = function fildDownload(absolutePath) {
	if(absolutePath === null || absolutePath === undefined || absolutePath === ""){
		alert('파일 경로를 확인할 수 없습니다.');
		return;
	}

	location.href = "/jwtauth/file/fileDownload?absolutePath=" + encodeURI(absolutePath);
}