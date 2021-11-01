<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>

<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css">

<link rel="stylesheet" href="/jwtauth/css/setting.css" />
<script>
	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";
	}
</script>

<div class="container">
	<div class="row justify-content-center">

		<div class="col-12 col-lg-10 col-xl-8 mx-auto">
			<h2 class="h3 mb-4page-title">Settings</h2>
			<div class="my-4">
				<ul class="nav nav-tabs mb-4" id="myTab" role="tablist"
					style="padding-top: 15px;">
					<li class="nav-item" role="presentation">
						<button class="nav-link active" id="pills-menu-tab"
							data-bs-toggle="pill" data-bs-target="#pills-menu" type="button"
							role="tab" aria-controls="#pills-menu" aria-selected="true">Menu</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="pills-profile-tab"
							data-bs-toggle="pill" data-bs-target="#pills-account"
							type="button" role="tab" aria-controls="pills-account"
							aria-selected="false">Account</button>
					</li>
				</ul>

				<div class="tab-content" id="pills-tabContent">
					<div class="tab-pane fade show active" id="pills-menu"
						role="tabpanel" aria-labelledby="pills-menu-tab">
						<strong class="mb-0">Navigation</strong>
						<p></p>

						<div class="list-group mb-5 shadow menu-setting">
							<div class="list-group-item">
								<div class="row align-items-center">
									<div class="col">
										<strong class="mb-0">Gategory Menu</strong>
										
									</div>

									<div class="col-auto">
										<div class="card-body">
											<div class="panel panel-default">
												<!-- /.panel-heading -->
												<div class="panel-body">
													<button type="button"
														class="btn btn-primary btn-circle btn-sm">
														<i class="fas fa-cog" aria-hidden="true"></i>
													</button>
												</div>
												<!-- /.panel-body -->
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="list-group-item">
								<div class="row align-items-center">
									<div class="col">
										<strong class="mb-0">Root Menu</strong>
										
									</div>

									<div class="col-auto">
										<div class="card-body">
											<div class="panel panel-default">
												<!-- /.panel-heading -->
												<div class="panel-body">
													<button type="button"
														class="btn btn-primary btn-circle btn-sm">
														<i class="fas fa-cog" aria-hidden="true"></i>
													</button>
												</div>
												<!-- /.panel-body -->
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="list-group-item">
								<div class="row align-items-center">
									<div class="col">
										<strong class="mb-0">Sub Menu</strong>
									</div>

									<div class="col-auto">
										<div class="card-body">
											<div class="panel panel-default">
												<!-- /.panel-heading -->
												<div class="panel-body">
													<button type="button"
														class="btn btn-primary btn-circle btn-sm">
														<i class="fas fa-cog" aria-hidden="true"></i>
													</button>
												</div>
												<!-- /.panel-body -->
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="list-group-item">
								<div class="row align-items-center">
									<div class="col">
										<strong class="mb-0">Last Menu</strong>
									</div>

									<div class="col-auto">
										<div class="card-body">
											<div class="panel panel-default">
												<!-- /.panel-heading -->
												<div class="panel-body">
													<button type="button"
														class="btn btn-primary btn-circle btn-sm">
														<i class="fas fa-cog" aria-hidden="true"></i>
													</button>
												</div>
												<!-- /.panel-body -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- ======================================================================================================================= -->
					
					<div class="tab-pane fade" id="pills-account" role="tabpanel"
						aria-labelledby="pills-account-tab">
						<strong class="mb-0">User</strong>
						<p></p>

						<div class="list-group mb-5 shadow menu-setting">
							<div class="list-group-item">
								<div class="row align-items-center">
									<div class="col">
										<strong class="mb-0">Admin User</strong>
										<p class="text-muted mb-0" style="padding-top: 5px;">Add an administrator account.</p>
									</div>

									<div class="col-auto">
										<div class="card-body">
											<div class="panel panel-default">
												<!-- /.panel-heading -->
												<div class="panel-body">
													<button type="button"
														class="btn btn-primary btn-circle btn-sm">
														<i class="fas fa-cog" aria-hidden="true"></i>
													</button>
												</div>
												<!-- /.panel-body -->
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="list-group-item">
								<div class="row align-items-center">
									<div class="col">
										<strong class="mb-0">User</strong>
										<p class="text-muted mb-0" style="padding-top: 5px;">Add an user account.</p>
									</div>

									<div class="col-auto">
										<div class="card-body">
											<div class="panel panel-default">
												<!-- /.panel-heading -->
												<div class="panel-body">
													<button type="button"
														class="btn btn-primary btn-circle btn-sm">
														<i class="fas fa-cog" aria-hidden="true"></i>
													</button>
												</div>
												<!-- /.panel-body -->
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="list-group-item">
								<div class="row align-items-center">
									<div class="col">
										<strong class="mb-0">Guest</strong>
										<p class="text-muted mb-0" style="padding-top: 5px;">Add an guest account.</p>
									</div>

									<div class="col-auto">
										<div class="card-body">
											<div class="panel panel-default">
												<!-- /.panel-heading -->
												<div class="panel-body">
													<button type="button"
														class="btn btn-primary btn-circle btn-sm">
														<i class="fas fa-cog" aria-hidden="true"></i>
													</button>
												</div>
												<!-- /.panel-body -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>

</body>
</html>

