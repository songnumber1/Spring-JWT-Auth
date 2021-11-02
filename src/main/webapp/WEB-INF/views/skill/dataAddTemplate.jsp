<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>

<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css">

<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<div class="col-11">
				<h1 class="mt-4">Skills</h1>

				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active" style="padding-top: 5px;">Write</li>
				</ol>

			</div>

			<hr />
			<div class="row">
				<div class="col-xl-12">
					<div class="card mb-4">
						<div class="card-body">
							<form action="/action_page.php">
								<div class="form-group">
									<label for="email">Title</label> <input type="email"
										class="form-control" id="title" placeholder="Enter title"
										name="email">
								</div>
								<div class="form-group">
									<label for="pwd">Content</label>
									<div id="summernote"></div>
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@include file="../layout/footer.jsp"%>
</div>

<script>
	$('#summernote').summernote({
		lang : 'ko-KR', //메뉴 한글화 
		height : 300, // set editor height
		minHeight : null, // set minimum height of editor
		maxHeight : null, // set maximum height of editor
		focus : true
	});
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="/jwtauth/js/scripts.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>
<script type="text/javascript" src="/jwtauth/js/treeview.js"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>
<script src="/jwtauth/js/datatables-simple-demo.js"></script>
</body>
</html>

