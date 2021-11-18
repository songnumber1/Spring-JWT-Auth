<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>

<link rel="stylesheet" href="/jwtauth/css/setting.css" />

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


						<!-- ==================================================== Category =================================================================== -->
						<div class="list-group mb-5 shadow menu-setting">
							<div class="list-group-item">
								<div class="row align-items-center">
									<div class="col">
										<strong class="mb-0">Category Menu</strong>
									</div>

									<div class="col-auto">
										<div class="card-body">
											<div class="panel panel-default">
												<!-- /.panel-heading -->
												<div class="panel-body">
													<button type="button"
														class="btn btn-primary btn-circle btn-sm"
														data-toggle="modal" data-target="#categoryModal">
														<i class="fas fa-cog" aria-hidden="true"></i>
													</button>

													<div class="modal fade" id="categoryModal" role="dialog">
														<div class="modal-dialog modal-dialog-centered">
															<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title">Category Menu</h5>
																	<button type="button" class="close"
																		data-dismiss="modal">&times;</button>
																</div>
																<div class="modal-body">
																	<div class="form-group was-validated">
																		<label class="control-label col-sm-12">* Name</label>
																		<div class="col-sm-12">
																			<input type="text" class="form-control"
																				id="category-name" placeholder="Enter category name"
																				name="category-name" required>

																			<div class="valid-feedback"></div>
																			<div class="invalid-feedback">Please fill out
																				this field.</div>
																		</div>
																	</div>
																</div>

																<div class="modal-footer">
																	<button type="button" class="btn btn-primary"
																		id="btn-category-add">Save</button>

																	<button type="button" class="btn btn-success"
																		data-dismiss="modal">Close</button>
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


							<!-- ==================================================== Root =================================================================== -->
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
													<button type="button" id="btn-root-setting"
														class="btn btn-primary btn-circle btn-sm"
														data-toggle="modal" data-target="#rootModal">
														<i class="fas fa-cog" aria-hidden="true"></i>
													</button>

													<div class="modal fade" id="rootModal" role="dialog">
														<div class="modal-dialog modal-dialog-centered">
															<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title">Root Menu</h5>
																	<button type="button" class="close"
																		data-dismiss="modal">&times;</button>
																</div>
																<div class="modal-body">
																	<div class="form-group was-validated">
																		<label class="control-label col-sm-12">*
																			Category</label>

																		<div class="col-sm-12 was-validated">
																			<div class="dropdown" id="dropdown-category">
																				<button
																					class="btn btn-secondary dropdown-toggle col-sm-12"
																					type="button" id="btn-dropdown-category"
																					data-toggle="dropdown" aria-expanded="false">
																					Select category</button>

																				<input id="input-hidden-select-category"
																					type="hidden" value='-1' />

																				<div id="dropdown-category-items"
																					class="dropdown-menu col-sm-12"
																					aria-labelledby="btn-dropdown-category">
																					<!-- 
																				  <a class="dropdown-item" href="#">Action</a>
																				  <a class="dropdown-item" href="#">Another action</a>
																				  <a class="dropdown-item" href="#">Something else here</a>
																				   -->
																				</div>

																				<div id="category-invalid-feedback"
																					class="invalid-feedback" style="display: block;">Please
																					fill out this field.</div>
																			</div>
																		</div>
																	</div>

																	<div class="form-group was-validated">
																		<label class="control-label col-sm-12">* Name</label>
																		<div class="col-sm-12">
																			<input type="text" class="form-control"
																				id="root-name" placeholder="Enter root name"
																				name="root-name" required>

																			<div class="valid-feedback"></div>
																			<div class="invalid-feedback">Please fill out
																				this field.</div>
																		</div>
																	</div>

																	<div class="form-group">
																		<label class="control-label col-sm-12">Url</label>
																		<div class="col-sm-12">
																			<input type="text" class="form-control" id="root-url"
																				placeholder="Enter Url" name="root-url">
																		</div>
																	</div>
																</div>

																<div class="modal-footer">
																	<button type="button" class="btn btn-primary"
																		id="btn-root-add">Save</button>

																	<button type="button" class="btn btn-success"
																		data-dismiss="modal">Close</button>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- /.panel-body -->
											</div>
										</div>
									</div>
								</div>
							</div>


							<!-- ==================================================== Sub =================================================================== -->
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
													<div class="panel-body">
														<button type="button" id="btn-sub-setting"
															class="btn btn-primary btn-circle btn-sm"
															data-toggle="modal" data-target="#subModal">
															<i class="fas fa-cog" aria-hidden="true"></i>
														</button>

														<div class="modal fade" id="subModal" role="dialog">
															<div class="modal-dialog modal-dialog-centered">
																<!-- Modal content-->
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title">Sub Menu</h5>
																		<button type="button" class="close"
																			data-dismiss="modal">&times;</button>
																	</div>
																	<div class="modal-body">
																		<div class="form-group was-validated">
																			<label class="control-label col-sm-12">*
																				Root</label>

																			<div class="col-sm-12 was-validated">
																				<div class="dropdown" id="dropdown-root">
																					<button
																						class="btn btn-secondary dropdown-toggle col-sm-12"
																						type="button" id="btn-dropdown-root"
																						data-toggle="dropdown" aria-expanded="false">
																						Select root menu</button>

																					<input id="input-hidden-select-root"
																						type="hidden" value='-1' />

																					<div id="dropdown-root-items"
																						class="dropdown-menu col-sm-12"
																						aria-labelledby="btn-dropdown-root">
																					</div>

																					<div id="root-invalid-feedback"
																						class="invalid-feedback" style="display: block;">Please
																						fill out this field.</div>
																				</div>
																			</div>
																		</div>

																		<div class="form-group was-validated">
																			<label class="control-label col-sm-12">* Name</label>
																			<div class="col-sm-12">
																				<input type="text" class="form-control"
																					id="sub-name" placeholder="Enter sub name"
																					name="sub-name" required>

																				<div class="valid-feedback"></div>
																				<div class="invalid-feedback">Please fill out
																					this field.</div>
																			</div>
																		</div>

																		<div class="form-group">
																			<label class="control-label col-sm-12">Url</label>
																			<div class="col-sm-12">
																				<input type="text" class="form-control" id="sub-url"
																					placeholder="Enter Url" name="sub-url">
																			</div>
																		</div>
																	</div>

																	<div class="modal-footer">
																		<button type="button" class="btn btn-primary"
																			id="btn-sub-add">Save</button>

																		<button type="button" class="btn btn-success"
																			data-dismiss="modal">Close</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- /.panel-body -->
											</div>
										</div>
									</div>
								</div>
							</div>


							<!-- ==================================================== Last =================================================================== -->
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
													<div class="panel-body">
														<button type="button" id="btn-last-setting"
															class="btn btn-primary btn-circle btn-sm"
															data-toggle="modal" data-target="#lastModal">
															<i class="fas fa-cog" aria-hidden="true"></i>
														</button>

														<div class="modal fade" id="lastModal" role="dialog">
															<div class="modal-dialog modal-dialog-centered">
																<!-- Modal content-->
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title">Last Menu</h5>
																		<button type="button" class="close"
																			data-dismiss="modal">&times;</button>
																	</div>
																	<div class="modal-body">
																		<div class="form-group was-validated">
																			<label class="control-label col-sm-12">*
																				Sub</label>

																			<div class="col-sm-12 was-validated">
																				<div class="dropdown" id="dropdown-sub">
																					<button
																						class="btn btn-secondary dropdown-toggle col-sm-12"
																						type="button" id="btn-dropdown-sub"
																						data-toggle="dropdown" aria-expanded="false">
																						Select sub menu</button>

																					<input id="input-hidden-select-sub"
																						type="hidden" value='-1' />

																					<div id="dropdown-sub-items"
																						class="dropdown-menu col-sm-12"
																						aria-labelledby="btn-dropdown-sub">
																					</div>

																					<div id="sub-invalid-feedback"
																						class="invalid-feedback" style="display: block;">Please
																						fill out this field.</div>
																				</div>
																			</div>
																		</div>

																		<div class="form-group was-validated">
																			<label class="control-label col-sm-12">* Name</label>
																			<div class="col-sm-12">
																				<input type="text" class="form-control"
																					id="last-name" placeholder="Enter last name"
																					name="last-name" required>

																				<div class="valid-feedback"></div>
																				<div class="invalid-feedback">Please fill out
																					this field.</div>
																			</div>
																		</div>

																		<div class="form-group was-validated">
																			<label class="control-label col-sm-12">* Url</label>
																			<div class="col-sm-12">
																				<input type="text" class="form-control" id="last-url"
																					placeholder="Enter Url" name="last-url" required>

																				<div class="valid-feedback"></div>
																				<div class="invalid-feedback">Please fill out
																					this field.</div>
																			</div>
																		</div>
																	</div>

																	<div class="modal-footer">
																		<button type="button" class="btn btn-primary"
																			id="btn-last-add">Save</button>

																		<button type="button" class="btn btn-success"
																			data-dismiss="modal">Close</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- /.panel-body -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



					<div class="tab-pane fade" id="pills-account" role="tabpanel"
						aria-labelledby="pills-account-tab">
						<strong class="mb-0">User</strong>
						<p></p>

						<div class="list-group mb-5 shadow menu-setting">
							<div class="list-group-item">
								<div class="row align-items-center">
									<div class="col">
										<strong class="mb-0">Admin User</strong>
										<p class="text-muted mb-0" style="padding-top: 5px;">Add
											an administrator account.</p>
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
										<p class="text-muted mb-0" style="padding-top: 5px;">Add
											an user account.</p>
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
										<p class="text-muted mb-0" style="padding-top: 5px;">Add
											an guest account.</p>
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

<script src="/jwtauth/js/setting/menu.js"></script>

</body>
</html>

