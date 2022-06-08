<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>


<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />

<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <div class="col-12">
                <h1 class="mt-4">Profile</h1>
            </div>

            <hr />
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
                                                <button type="submit" class="btn btn-info btn-circle btn-sm" id="btn-profile-edit">
                                                    <i class="fas fa-pen"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="mt-3">
                                            <h4>송민우</h4>
                                            <p class="text-secondary mb-1">Developer</p>
                                            <p class="text-muted font-size-sm">경기도 화성시</p>
                                        </div>
                                    </div>

                                    <div class="modal fade" id="profileModal" role="dialog">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Profile Add & Edit</h5>
                                                    <button type="button" class="close" id="btn-profileModal-close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group was-validated">
                                                        <label class="control-label col-sm-12">* Image</label>
                                                        <div class="col-sm-12">
                                                            <input type="file" class="form-control" id="profile-image" placeholder="Enter profile image" name="profile-image" required="required">

                                                            <div class="valid-feedback"></div>
                                                            <div class="invalid-feedback">Please fill out this field.</div>
                                                        </div>

                                                        <label class="control-label col-sm-12">* Name</label>
                                                        <div class="col-sm-12">
                                                            <input type="text" class="form-control" id="profile-name" placeholder="Enter profile name" name="profile-name" required="required">

                                                            <div class="valid-feedback"></div>
                                                            <div class="invalid-feedback">Please fill out this field.</div>
                                                        </div>

                                                        <label class="control-label col-sm-12">* Job</label>
                                                        <div class="col-sm-12">
                                                            <input type="text" class="form-control" id="profile-job" placeholder="Enter profile job" name="profile-job" required="required">

                                                            <div class="valid-feedback"></div>
                                                            <div class="invalid-feedback">Please fill out this field.</div>
                                                        </div>
                                                    </div>

                                                    <label class="control-label col-sm-12">Address</label>
                                                    <div class="col-sm-12">
                                                        <input type="text" class="form-control" id="profile-address" placeholder="Enter profile address" name="profile-address"></div>
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-primary" id="btn-profile-add">Save</button>

                                                    <button type="button" class="btn btn-success" id="btn-profile-close" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="card mt-3">
                                <div class="card-header">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <p class="card-title" style="margin-top: 7px;font-weight: bold;">스킬</p>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="btn-group float-right" role="group">
                                                <button type="submit" class="btn btn-info btn-circle btn-sm" id="btn-skill-add" name="btn-skill-add">
                                                    <i class="fas fa-plus"></i>
                                                </button>
                                                <button type="submit" class="btn btn-info btn-circle btn-sm" id="btn-skill-edit" name="btn-skill-edit">
                                                    <i class="fas fa-pen"></i>
                                                </button>
                                                <button type="submit" class="btn btn-info btn-circle btn-sm" id="btn-skill-delete" name="btn-skill-delete">
                                                    <i class="fas fa-times"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>


								<div class="card-body">

									<sec:authorize access="hasRole('ADMIN')">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="">
											<label class="form-check-label">
												<small>Android</small>
											</label>
										</div>
									</sec:authorize>

									<sec:authorize access="hasRole('USER')">
										<small>Android</small>
									</sec:authorize>

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


								<div class="modal fade" id="skillModal" role="dialog">
									<div class="modal-dialog modal-dialog-centered">
										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">skill Add & Edit</h5>
												<button type="button" class="close" id="btn-skillModal-close" data-dismiss="modal">&times;</button>
											</div>
											<div class="modal-body">
												<div class="form-group was-validated">
													<label class="control-label col-sm-12">* Title</label>
													<div class="col-sm-12" style="margin-bottom: 5px;">
														<input type="text" class="form-control" id="skill-title" placeholder="Enter skill title" name="skill-title" required="required">
								
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">Please fill out this field.</div>
													</div>
								
													<label class="control-label col-sm-12" id="skill-level-title">* Level (Point : <span id="skill-level-value">50</span>)</label>
													<div class="col-sm-12">
														<!-- <input type="text" class="form-control" id="skill-level" placeholder="Enter skill level" name="skill-level" required="required"> -->

														<!-- <input type="range" value="24" min="1" max="100" oninput="this.nextElementSibling.value = this.value"> -->
														<input type="range" value="50" min="1" max="100" class="custom-range" name="skill-level" id="skill-level">
								
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">Please fill out this field.</div>
													</div>
												</div>
											</div>
								
											<div class="modal-footer">
												<button type="button" class="btn btn-primary" id="btn-skill-add">Save</button>
								
												<button type="button" class="btn btn-success" id="btn-skill-close" data-dismiss="modal">Close</button>
											</div>
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
                                                <button type="submit" class="btn btn-info btn-circle btn-sm" id="btn-education-add" name="btn-education-add">
                                                    <i class="fas fa-plus"></i>
                                                </button>
                                                <button type="submit" class="btn btn-info btn-circle btn-sm" id="btn-education-edit" name="btn-education-edit">
                                                    <i class="fas fa-pen"></i>
                                                </button>
                                                <button type="submit" class="btn btn-info btn-circle btn-sm" id="btn-education-delete" name="btn-education-delete">
                                                    <i class="fas fa-times"></i>
                                                </button>
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


                                <div class="modal fade" id="educationModal" role="dialog">
									<div class="modal-dialog modal-dialog-centered">
										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">Education Add & Edit</h5>
												<button type="button" class="close" id="btn-educationModal-close" data-dismiss="modal">&times;</button>
											</div>
											<div class="modal-body">
												<div class="form-group was-validated">
													<label class="control-label col-sm-12">* Name</label>
													<div class="col-sm-12" style="margin-bottom: 5px;">
														<input type="text" class="form-control" id="education-title" placeholder="Enter education title" name="education-title" required="required">
								
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">Please fill out this field.</div>
													</div>
								
													<label class="control-label col-sm-12" id="education-level-title">* Date</label>
													<div class="col-sm-12">
                                                        

                                                        
                                                        <div id="education-datepicker" class="input-group date" data-date-format="yyyy-mm-dd-">
                                                            <input class="form-control" type="text" readonly />
                                                            <button type="button" class="btn btn-primary"><i class="fas fa-calendar"></i></button>
                                                        </div>
                                                
                                                        
								
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">Please fill out this field.</div>
													</div>
												</div>
											</div>
								
											<div class="modal-footer">
												<button type="button" class="btn btn-primary" id="btn-education-add">Save</button>
								
												<button type="button" class="btn btn-success" id="btn-education-close" data-dismiss="modal">Close</button>
											</div>
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
                                                <button type="submit" class="btn btn-info btn-circle btn-sm" id="btn-license-add" name="btn-license-add">
                                                    <i class="fas fa-plus"></i>
                                                </button>
                                                <button type="submit" class="btn btn-info btn-circle btn-sm" id="btn-license-edit" name="btn-license-edit">
                                                    <i class="fas fa-pen"></i>
                                                </button>
                                                <button type="submit" class="btn btn-info btn-circle btn-sm" id="btn-license-delete" name="btn-license-delete">
                                                    <i class="fas fa-times"></i>
                                                </button>
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


                                <div class="modal fade" id="licenseModal" role="dialog">
									<div class="modal-dialog modal-dialog-centered">
										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">License Add & Edit</h5>
												<button type="button" class="close" id="btn-licenseModal-close" data-dismiss="modal">&times;</button>
											</div>
											<div class="modal-body">
												<div class="form-group was-validated">
													<label class="control-label col-sm-12">* Name</label>
													<div class="col-sm-12" style="margin-bottom: 5px;">
														<input type="text" class="form-control" id="license-title" placeholder="Enter license title" name="license-title" required="required">
								
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">Please fill out this field.</div>
													</div>
								
													<label class="control-label col-sm-12" id="license-level-title">* Date</label>
													<div class="col-sm-12">
                                                        

                                                        
                                                        <div id="license-datepicker" class="input-group date" data-date-format="yyyy-mm-dd-">
                                                            <input class="form-control" type="text" readonly />
                                                            <button type="button" class="btn btn-primary"><i class="fas fa-calendar"></i></button>
                                                        </div>
                                                
                                                        
								
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">Please fill out this field.</div>
													</div>
												</div>
											</div>
								
											<div class="modal-footer">
												<button type="button" class="btn btn-primary" id="btn-license-add">Save</button>
								
												<button type="button" class="btn btn-success" id="btn-license-close" data-dismiss="modal">Close</button>
											</div>
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
                                                <button type="submit" class="btn btn-info btn-circle btn-sm">
                                                    <i class="fas fa-plus"></i>
                                                </button>
                                                <button type="submit" class="btn btn-info btn-circle btn-sm">
                                                    <i class="fas fa-pen"></i>
                                                </button>
                                                <button type="submit" class="btn btn-info btn-circle btn-sm">
                                                    <i class="fas fa-times"></i>
                                                </button>
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
                                                <button type="submit" class="btn btn-info btn-circle btn-sm">
                                                    <i class="fas fa-plus"></i>
                                                </button>
                                                <button type="submit" class="btn btn-info btn-circle btn-sm">
                                                    <i class="fas fa-pen"></i>
                                                </button>
                                                <button type="submit" class="btn btn-info btn-circle btn-sm">
                                                    <i class="fas fa-times"></i>
                                                </button>
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
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">Java</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">Java</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">Java</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary mr-2">Java</span>
                                            </h6>
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
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">Java</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">Java</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">Java</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary mr-2">Java</span>
                                            </h6>
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
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">Java</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">Java</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">Java</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary float-right mr-2">C#</span>
                                            </h6>
                                            <h6>
                                                <span class="badge badge-primary mr-2">Java</span>
                                            </h6>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/jwtauth/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>
<script src="/jwtauth/js/profile/profile.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="/jwtauth/js/datatables-simple-demo.js"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
</body>

</html>