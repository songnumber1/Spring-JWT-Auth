<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>

<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<div class="col-12" id="container-title">
				<h1 class="mt-4">Movies</h1>
			</div>

			<hr id= "title-content-line"/>

			<div class="row" id="container-root">
				<div class="col-xl-3">
					<div class="card mb-4">
						<div class="card-body" id="tree-container" style="overflow:auto; height: 100vh;">
							<div id="movietree"></div>
						</div>
					</div>
				</div>

				<div class="col-xl-9">
					<div class="card mb-4">
						<div class="card-body">
							<table id="movie-table" data-searching="false">
								<thead>
									<tr>
										<th style="display:none;">AbsolutePath</th>
										<th class="col-4">Title</th>
										<th class="col-3">WriteDate</th>
										<th>Type</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th style="display:none;">AbsolutePath</th>
										<th class="col-4">Title</th>
										<th class="col-3">WriteDate</th>
										<th>Type</th>
									</tr>
								</tfoot>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<!-- <div class="row" style="display: none;"> -->
			<div class="row">
				<button class="btn btn-primary" id="btn-node-add">Node Add</button>
				<div class="card mb-4">
					<div id="movieTreeData">${reponseTreeData}</div>
				</div>
			</div>

		</div>
	</main>

	<%@include file="../layout/footer.jsp"%>
</div>


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
	
<script type="text/javascript" src="/jwtauth/js/movie/movie.js"></script>

<script type="text/javascript" src="/jwtauth/js/file/download.js"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>
<script src="/jwtauth/js/datatables-simple-demo.js"></script>
</body>
</html>

