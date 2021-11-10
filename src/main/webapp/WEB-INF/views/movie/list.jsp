<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>

<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css">
<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<div class="col-11">
				<h1 class="mt-4">Movies</h1>

				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active" style="padding-top: 5px;">list</li>
					&nbsp;&nbsp;&nbsp;
					<form action="/jwtauth/movie/add" method="get">
						<button type="submit" class="btn btn-info btn-circle btn-sm">
							<i class="fas fa-plus"></i>
						</button>
					</form>
				</ol>

			</div>

			<hr />
			<div class="row">
				<div class="col-xl-12">
					<div class="card mb-4">

						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th class="col-4">Title</th>
										<th class="col-5">Content</th>
										<th class="col-3">WriteDate</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th class="col-4">Title</th>
										<th class="col-5">Content</th>
										<th class="col-3">WriteDate</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="item" items="${items}">
										<tr>
											<td>${item.title}</td>
											<td>${item.content}</td>
											<td>${item.writeDate}</td>
											<td class="text-center"><button type="button"
													class="btn btn-primary btn-circle">
													<i class="fas fa-info"></i>
												</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
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
<script type="text/javascript" src="/jwtauth/js/treeview.js"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>
<script src="/jwtauth/js/datatables-simple-demo.js"></script>

</body>
</html>

