<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<div class="col-12">
				<h1 class="mt-4">Profile</h1>
			</div>
						
			<hr/>
			<div id="profile-content">
					<div class="main-body">					
						  <div class="row gutters-sm">
							<div class="col-md-4 mb-3">
							  <div class="card">
								<div class="card-body">
								  <div class="d-flex flex-column align-items-center text-center">
									<img src="../../assets/img/about-bg.jpg" alt="Admin" class="rounded-circle" width="150" height="150">

									<div class="row" style="margin-top: -35px;margin-left: 100px;">
										<div class="btn-group float-right" role="group">
											<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-pen"></i></button>
										</div>
									  </div>
									<div class="mt-3">
									  <h4>송민우</h4>
									  <p class="text-secondary mb-1">Developer</p>
									  <p class="text-muted font-size-sm">경기도 화성시</p>
									</div>
								  </div>
								</div>
							  </div>
							  <div class="card mt-3">
								<div class="card-header">
									<div class="row">
										<div class="col-md-9">
											
											<div style="display: flex;">
												<a class "btn" style="margin-top: 5px;margin-right: 10px;" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
													<i class="fas fa-angle-down"></i>
												</a>

												<p class="card-title" style="margin-top: 7px;font-weight: bold;">스킬</p>
											</div>

											
										</div>
										<div class="col-md-3">
											<div class="btn-group float-right" role="group">
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-plus"></i></button>
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-pen"></i></button>
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-times"></i></button>
											</div>
										</div>
									  </div>
								</div>

								<div class="collapse" id="collapseExample">
									<div class="card-body">
										
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="">
											<label class="form-check-label">
												<small>Android</small>
											</label>
										</div>

										<div class="progress mb-3" style="height: 5px">
										<div class="progress-bar bg-primary" role="progressbar" style="width: 50%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
										</div>

										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="">
											<label class="form-check-label">
												<small>C#</small>
											</label>
										</div>
										<div class="progress mb-3" style="height: 5px">
										<div class="progress-bar bg-primary" role="progressbar" style="width: 90%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="">
											<label class="form-check-label">
												<small>DB</small>
											</label>
										</div>

										<div class="progress mb-3" style="height: 5px">
										<div class="progress-bar bg-primary" role="progressbar" style="width: 50%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
										</div>

										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="">
											<label class="form-check-label">
												<small>Java</small>
											</label>
										</div>

										<div class="progress mb-3" style="height: 5px">
										<div class="progress-bar bg-primary" role="progressbar" style="width: 70%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="">
											<label class="form-check-label">
												<small>Javascript</small>
											</label>
										</div>

										<div class="progress mb-3" style="height: 5px">
										<div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
							  </div>

							  <div class="card mt-3">
								<div class="card-header">
									<div class="row">
										<div class="col-md-9">
											<p class="card-title" style="margin-top: 7px;font-weight: bold;">학력</p>
										</div>
										<div class="col-md-3">
											<div class="btn-group float-right" role="group">
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-plus"></i></button>
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-pen"></i></button>
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-times"></i></button>
											</div>
										</div>
									  </div>
								</div>

								<div class="card-body">
									
									<div class="form-check mb-3">
										<div class="hstack gap-3">
											<input class="form-check-input" type="checkbox" value="">
											<label class="form-check-label">
												<small>장안대학교</small>
											</label>
											
											<div class="ms-auto">2010.01.01</div>
										</div>
									</div>

									<div class="form-check mb-3">
										<div class="hstack gap-3">
											<input class="form-check-input" type="checkbox" value="">
											<label class="form-check-label">
												<small>수원고등학교</small>
											</label>
											
											<div class="ms-auto">2010.01.01</div>
										</div>
									</div>
									
								  </div>
							  </div>







							  <div class="card mt-3">
								<div class="card-header">
									<div class="row">
										<div class="col-md-9">
											<p class="card-title" style="margin-top: 7px;font-weight: bold;">자격증</p>
										</div>
										<div class="col-md-3">
											<div class="btn-group float-right" role="group">
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-plus"></i></button>
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-pen"></i></button>
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-times"></i></button>
											</div>
										</div>
									  </div>
								</div>

								<div class="card-body">
									
									<div class="form-check mb-3">
										<div class="hstack gap-3">
											<input class="form-check-input" type="checkbox" value="">
											<label class="form-check-label">
												<small>정보처리기사</small>
											</label>
											
											<div class="ms-auto">2010.01.01</div>
										</div>
									</div>

									<div class="form-check mb-3">
										<div class="hstack gap-3">
											<input class="form-check-input" type="checkbox" value="">
											<label class="form-check-label">
												<small>CCNA</small>
											</label>
											
											<div class="ms-auto">2010.01.01</div>
										</div>
									</div>
									
								  </div>
							  </div>
							</div>
							<div class="col-md-8">
							  <div class="card mb-3">
								<div class="card-header">
									<div class="row">
										<div class="col-md-9">
											<p class="card-title" style="margin-top: 7px;font-weight: bold;">기본</p>
										</div>
										<div class="col-md-3">
											<div class="btn-group float-right" role="group">
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-plus"></i></button>
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-pen"></i></button>
												<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-times"></i></button>
											</div>
										</div>
									  </div>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-sm-1">
										<h6 class="mb-0" style="font-weight: bold;">이름</h6>
										</div>
										<div class="col-sm-11 text-secondary">
										송민우
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-1">
										<h6 class="mb-0" style="font-weight: bold;">생년월일</h6>
										</div>
										<div class="col-sm-11 text-secondary">
										1983.11.21
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-1">
											<h6 class="mb-0" style="font-weight: bold;">메일</h6>
										</div>
										<div class="col-sm-11 text-secondary">
											songnumber1@naver.com
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-1">
										<h6 class="mb-0" style="font-weight: bold;">전화</h6>
										</div>
										<div class="col-sm-11 text-secondary">
										010-9494-2998
										</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-1">
										<h6 class="mb-0" style="font-weight: bold;">주소</h6>
										</div>
										<div class="col-sm-11 text-secondary">
										경기도 화성시 병점동
										</div>
									</div>
									
								</div>
							  </div>
				
								<div class="card mb-3">
									<div class="card-header">
										<div class="row">
											<div class="col-md-9">
												<p class="card-title" style="margin-top: 7px;font-weight: bold;">경력</p>
											</div>
											<div class="col-md-3">

												<div class="btn-group float-right" role="group">
													<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-plus"></i></button>
													<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-pen"></i></button>
													<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-times"></i></button>
												</div>
											</div>
										  </div>
									</div>
									<div class="card-body">							
										<div class="row">
											<div class="col-sm-2">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
													<label class="form-check-label" for="flexCheckDefault">
														<p class="text-secondary mb-1" style="font-weight: bold;">단감소프트</p>
													</label>
												</div>
												<small>2021.11 ~ 2022.05</small>
											</div>
							
											<div class="col-sm-10">
												<h6 style="font-weight: bold; margin-bottom: 30px;">TCS 개발</h6>
							
												<p>- 역할
												</p>
												<p>- 프로그램 개발
												</p>
												<p>- 관련기술
												</p>
												<p>- Mendix
												</p>
											</div>

											<div class="card-footer" style="display: flex;">
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">Java</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">Java</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">Java</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary mr-2">Java</span></h6>
											</div>
										</div>

										<div class="row" style="margin-top: 10px;">
											<div class="col-sm-2">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
													<label class="form-check-label" for="flexCheckDefault">
														<p class="text-secondary mb-1" style="font-weight: bold;">단감소프트</p>
													</label>
												</div>
												<small>2021.11 ~ 2022.05</small>
											</div>
							
											<div class="col-sm-10">
												<h6 style="font-weight: bold; margin-bottom: 30px;">TCS 개발</h6>
							
												<p>- 역할
												</p>
												<p>- 프로그램 개발
												</p>
												<p>- 관련기술
												</p>
												<p>- Mendix
												</p>
							
											</div>

											<div class="card-footer" style="display: flex;">
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">Java</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">Java</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">Java</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary mr-2">Java</span></h6>
											</div>
										</div>

										

										<div class="row" style="margin-top: 10px;">
											<div class="col-sm-2">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
													<label class="form-check-label" for="flexCheckDefault">
														<p class="text-secondary mb-1" style="font-weight: bold;">단감소프트</p>
													</label>
												</div>
												<small>2021.11 ~ 2022.05</small>
											</div>
							
											<div class="col-sm-10">
												<h6 style="font-weight: bold; margin-bottom: 30px;">TCS 개발</h6>
							
												<p>- 역할
												</p>
												<p>- 프로그램 개발
												</p>
												<p>- 관련기술
												</p>
												<p>- Mendix
												</p>
							
											</div>

											<div class="card-footer" style="display: flex;">
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">Java</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">Java</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">Java</span></h6>
												<h6><span class="badge badge-primary float-right mr-2">C#</span></h6>
												<h6><span class="badge badge-primary mr-2">Java</span></h6>
											</div>
										</div>


										
									</div>
								</div>
				
				
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
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>
<script src="/jwtauth/js/profile/profile.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="/jwtauth/js/datatables-simple-demo.js"></script>

</body>
</html>
