<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>

<link rel="stylesheet" href="/jwtauth/css/setting.css" />
<link rel="stylesheet" href="/jwtauth/css/switch.css" />


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
						
						<%@include file="../setting/menu.jsp"%>
					</div>



					<div class="tab-pane fade" id="pills-account" role="tabpanel"
						aria-labelledby="pills-account-tab">
						<%@include file="../setting/account.jsp"%>
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

<script src="/jwtauth/js/setting/menu.js"></script>

</body>
</html>

