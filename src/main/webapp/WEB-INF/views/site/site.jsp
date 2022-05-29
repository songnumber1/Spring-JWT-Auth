<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>

<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css">
<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<div class="col-12">
				<h1 class="mt-4">Site Account</h1>
				
				<div class="row">
					<div class="col-md-12">
						<form action="" class="search-form">
							<div class = "input-group" > <input type="text" class="form-control" placeholder="Search" id="input-site_search">
								<div class="input-group-append">
									<button class="btn btn-outline-secondary" id="btn-site-search" type="button">
										<span class="glyphicon glyphicon-search"></span>
									</button>

									<button class="btn btn-outline-secondary" id="btn-site-search-reset" type="button">
										<span class="glyphicon glyphicon-remove"></span>
									</button>

									<button class="btn btn-outline-secondary" id="btn-site-refresh" type="button">
										<span class="glyphicon glyphicon-refresh"></span>
									</button>

									<button type="button" class="btn btn-outline-secondary" id="btn-site-add-modal-show">
										<i class="fas fa-plus" aria-hidden="true"></i>
									</button>

									<div class="modal fade" id="siteModal" role="dialog">
										<div class="modal-dialog modal-dialog-centered">
											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title">Site Add</h5>
													<button type="button" class="close"
														data-dismiss="modal">&times;</button>
												</div>
												<div class="modal-body">
													<div class="form-group was-validated">
														<label class="control-label col-sm-12">* Name</label>
														<div class="col-sm-12">
															<input type="text" class="form-control"
																id="site-name" placeholder="Enter site name"
																name="site-name" required>
															
																<div class="valid-feedback"></div>
																<div class="invalid-feedback">Please fill out
																	this field.</div>
														</div>

														<label class="control-label col-sm-12">* ID</label>
														<div class="col-sm-12">
															<input type="text" class="form-control"
																id="site-id" placeholder="Enter account id"
																name="site-id" required>

															<div class="valid-feedback"></div>
															<div class="invalid-feedback">Please fill out
																this field.</div>
														</div>

														<label class="control-label col-sm-12">* PW</label>
														<div class="col-sm-12">
															<input type="text" class="form-control"
																id="site-pw" placeholder="Enter account pw"
																name="site-pw" required>

															<div class="valid-feedback"></div>
															<div class="invalid-feedback">Please fill out
																this field.</div>
														</div>
													</div>
											   
											   </div> 
													<label class="control-label col-sm-12">Url</label>
														<div class="col-sm-12">
															<input type="text" class="form-control"
																id="site-url" placeholder="Enter account url"
																name="site-url">
														</div>

													<label class="control-label col-sm-12">Remark</label>
														<div class="col-sm-12">
															<textarea class="form-control" id="site-remark" name="site-remark" rows="3"></textarea>
														</div>

													<div class="col-sm-12" style="margin-top: 10px; margin-bottom: 10px;">
														<div class="dropdown" id="dropdown-category">
															<button
																class="btn btn-secondary dropdown-toggle col-sm-12"
																type="button" id="btn-dropdown-category"
																data-toggle="dropdown" aria-expanded="false">
																Select Type</button>

															<input id="input-hidden-select-category"
																type="hidden" value='-1' />

															<div id="div-category-dropdown-menu"
																class="dropdown-menu col-sm-12"
																aria-labelledby="btn-dropdown-category">
																<a class="dropdown-item" href="#">bg_primary</a>
																<a class="dropdown-item" href="#">bg_secondary</a>
																<a class="dropdown-item" href="#">bg_success</a>
																<a class="dropdown-item" href="#">bg_danger</a>
																<a class="dropdown-item" href="#">bg_warning</a>
																<a class="dropdown-item" href="#">bg_info</a>
																<a class="dropdown-item" href="#">bg_light</a>
																<a class="dropdown-item" href="#">bg_dark</a>
															</div>
														</div>
													</div>

												<div class="modal-footer">
													<button type="button" class="btn btn-primary"
														id="btn-site-add">Save</button>

													<button type="button" class="btn btn-success" 
														id="btn-site-close"
														data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				
			</div>
						
			<hr/>
			<div id="site-content">

				<div class="row" style="margin-top: 10px;">
					
						<div class="col-md-3 col-lg-3 column">
							<div class="card gr-1">
								<div class="card-header text-white bg-primary">
									<div class="d-flex align-items-center">
									  <p class="mr-auto" style="margin-top: 20px; font-weight: bold;">Naver</p>
									  <div class="btn-group" role="group">
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-plus"></i></button>
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-pen"></i></button>
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-times"></i></button>
									  </div>
									</div>
								  </div>
								<div class="card-body">
									  <p class="card-text">ID : songnumber1@naver.com</p>
									<p class="card-text">PW : Apassword!1</p>
								</div>
								<div class="card-footer">
									<small class="text-muted">WriteDate : 2022-05-27 11:43:10</small>
								</div>
							</div>
						</div>
	
	
						<div class="col-md-3 col-lg-3 column">
							<div class="card gr-1">
								<div class="card-header text-white bg-primary">
									<div class="d-flex align-items-center">
									  <p class="mr-auto" style="margin-top: 20px; font-weight: bold;">Naver</p>
									  <div class="btn-group" role="group">
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-plus"></i></button>
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-pen"></i></button>
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-times"></i></button>
									  </div>
									</div>
								  </div>
								<div class="card-body">
									  <p class="card-text">ID : songnumber1@naver.com</p>
									<p class="card-text">PW : Apassword!1</p>
								</div>
								<div class="card-footer">
									<small class="text-muted">WriteDate : 2022-05-27 11:43:10</small>
								</div>
							</div>
						</div>
	
	
						<div class="col-md-3 col-lg-3 column">
							<div class="card gr-1">
								<div class="card-header text-white bg-primary">
									<div class="d-flex align-items-center">
									  <p class="mr-auto" style="margin-top: 20px; font-weight: bold;">Naver</p>
									  <div class="btn-group" role="group">
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-plus"></i></button>
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-pen"></i></button>
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-times"></i></button>
									  </div>
									</div>
								  </div>
								<div class="card-body">
									  <p class="card-text">ID : songnumber1@naver.com</p>
									<p class="card-text">PW : Apassword!1</p>
								</div>
								<div class="card-footer">
									<small class="text-muted">WriteDate : 2022-05-27 11:43:10</small>
								</div>
							</div>
						</div>
	
						<div class="col-md-3 col-lg-3 column">
							<div class="card gr-1">
								<div class="card-header text-white bg-primary">
									<div class="d-flex align-items-center">
									  <p class="mr-auto" style="margin-top: 20px; font-weight: bold;">Naver</p>
									  <div class="btn-group" role="group">
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-plus"></i></button>
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-pen"></i></button>
										<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-times"></i></button>
									  </div>
									</div>
								  </div>
								<div class="card-body">
									  <p class="card-text">ID : songnumber1@naver.com</p>
									<p class="card-text">PW : Apassword!1</p>
								</div>
								<div class="card-footer">
									<small class="text-muted">WriteDate : 2022-05-27 11:43:10</small>
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
<script src="/jwtauth/js/site/site.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="/jwtauth/js/datatables-simple-demo.js"></script>

</body>
</html>

