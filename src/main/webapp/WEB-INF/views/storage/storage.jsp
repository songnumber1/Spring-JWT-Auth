<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>

<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css">
<link rel="stylesheet" href="/jwtauth/css/storage.css" />

<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<h1 class="mt-4">Storage</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item active">C#</li>
			</ol>

			<hr />

			<div class="row"> 			
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#home">Home</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#favorites">Favorites</a></li>
				</ul>

				<div class="tab-content border border-top-0 rounded">
					<div id="home" class="container-fluid tab-pane active" style="margin-top: 15px;margin-bottom: 15px;">
						<div>
							<div style="float: left;">
								<h4>
									Path : <span class="label label-default lbl-path">My
										computer</span>
								</h4>
							</div>

							<div class="path-container">
								<button type="button" id="btn-path-up"
									class="btn btn-primary btn-circle btn btn-path-control">
									<i class="fas fa-arrow-up" aria-hidden="true"></i>
								</button>
								<button type="button" id="btn-path-back"
									class="btn btn-secondary btn-circle btn btn-path-control">
									<i class="fas fa-arrow-left" aria-hidden="true"></i>
								</button>
								<button type="button" id="btn-path-foward"
									class="btn btn-secondary btn-circle btn btn-path-control">
									<i class="fas fa-arrow-right" aria-hidden="true"></i>
								</button>
								<button type="button" id="btn-path-refresh"
									class="btn btn-success btn-circle btn">
									<i class="fas fa-sync-alt" aria-hidden="true"></i>
								</button>
							</div>
						</div>
						<table id="storage-table">
							<thead>
								<tr>
									<th style="display: none;">AbsolutePath</th>
									<th>Name</th>
									<th>Date</th>
									<th>Type</th>
									<th style="text-align: center;">Work</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th style="display: none;">AbsolutePath</th>
									<th>Name</th>
									<th>Date</th>
									<th>Type</th>
									<th style="text-align: center;">Work</th>
								</tr>
							</tfoot>
							<tbody>
								<tr>
									<td style="display: none;">absolutePath</td>
									<td style="vertical-align: middle;"><a href="#">News <span
											class="badge">5</span>
									</a><br></td>
									<td style="vertical-align: middle;">System Architect</td>
									<td
										style="vertical-align: middle; text-align: center; width: 5%;"><i
										class="fa fa-file" aria-hidden="true"></i></td>
									<td style="text-align: center;">
										<button type="button"
											class="btn btn-primary btn-circle btn-sm">
											<i class="fas fa-download" aria-hidden="true"></i>
										</button>
										<button type="button"
											class="btn btn-secondary btn-circle btn-sm">
											<i class="fas fa-eye" aria-hidden="true"></i>
										</button>
										<button type="button"
											class="btn btn-success btn-circle btn-sm">
											<i class="fas fa-star" aria-hidden="true"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td style="display: none;">absolutePath</td>
									<td style="vertical-align: middle;"><a href="#">Garrett
											Winters <span class="badge">5</span>
									</a><br></td>
									<td style="vertical-align: middle;">Accountant</td>
									<td
										style="vertical-align: middle; text-align: center; width: 5%;"><i
										class="fas fa-folder" aria-hidden="true"></i></td>
									<td style="text-align: center;">
										<button type="button"
											class="btn btn-primary btn-circle btn-sm">
											<i class="fas fa-download" aria-hidden="true"></i>
										</button>
										<button type="button"
											class="btn btn-secondary btn-circle btn-sm">
											<i class="fas fa-eye" aria-hidden="true"></i>
										</button>
										<button type="button"
											class="btn btn-success btn-circle btn-sm">
											<i class="fas fa-star" aria-hidden="true"></i>
										</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div id="favorites" class="container tab-pane fade">
						<br>
						<h3>Menu 1</h3>
						<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
							laboris nisi ut aliquip ex ea commodo consequat.</p>
					</div>
				</div>
			</div>

			<!-- <div class="row" style="display:none;"> -->
			<div class="row">
				<div class="card mb-4">
					<div id="storageData">${reponseData}</div>
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
<script type="text/javascript" src="/jwtauth/js/storage.js"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>

</body>
</html>

