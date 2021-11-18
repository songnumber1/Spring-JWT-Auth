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

													<button type="button"
														class="btn btn-info btn-circle btn-sm"
														data-toggle="collapse" data-target="#collapse-categorymenu">
														<i class="fas fas fa-arrow-down" aria-hidden="true"></i>
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

									<div class="container-fluid">
										<div id="collapse-categorymenu" class="collapse">
											<hr>
														
											<div class="card-body">
												<div class="container">

													<ul class="list-group">
														<li class="list-group-item">
															First item

															<div class="btn-group btn-toggle" id="btn-category-switch" style="float: right;margin-left: 10px;"> 
																<button class="btn btn-sm btn-default">ON</button>
																<button class="btn btn-sm btn-info active">OFF</button>
															</div>

															<div style="float: right;"> 
																<button type="button"
																	class="btn btn-info btn-circle btn-sm"
																	data-toggle="modal" data-target="#categoryModal">
																	<i class="fas fa-user" aria-hidden="true"></i>
																</button>
															</div>
														</li>

														<li class="list-group-item">
															Second item

															<div class="btn-group btn-toggle" id="btn-category-switch" style="float: right;margin-left: 10px;"> 
																<button class="btn btn-sm btn-default">ON</button>
																<button class="btn btn-sm btn-info active">OFF</button>
															</div>

															<div style="float: right;"> 
																<button type="button"
																	class="btn btn-info btn-circle btn-sm"
																	data-toggle="modal" data-target="#categoryModal">
																	<i class="fas fa-user" aria-hidden="true"></i>
																</button>
															</div>
														</li>
														
														<li class="list-group-item">
															Third item
															
															<div class="btn-group btn-toggle" id="btn-category-switch" style="float: right;margin-left: 10px;"> 
																<button class="btn btn-sm btn-default">ON</button>
																<button class="btn btn-sm btn-info active">OFF</button>
															</div>

															<div style="float: right;"> 
																<button type="button"
																	class="btn btn-info btn-circle btn-sm"
																	data-toggle="modal" data-target="#categoryModal">
																	<i class="fas fa-user" aria-hidden="true"></i>
																</button>
															</div>
														</li>
													  </ul>
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