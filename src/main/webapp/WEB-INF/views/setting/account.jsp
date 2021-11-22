

<strong class="mb-0">User</strong>
<p></p>


<div class="list-group mb-5 shadow account-setting">

    <!-- ==================================================== Admin =================================================================== -->
    <div class="list-group-item">
        <div class="row align-items-center">
            <div class="col">
                <strong class="mb-0">Administrator</strong>
            </div>

            <div class="col-auto">
                <div class="card-body">
                    <div class="panel panel-default">
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <button type="button"
                                class="btn btn-primary btn-circle btn-sm"
                                data-toggle="modal" data-target="#adminModal">
                                <i class="fas fa-cog" aria-hidden="true"></i>
                            </button>

                            <button type="button"
                                id="btn-admin-toggle"
                                class="btn btn-info btn-circle btn-sm"
                                data-toggle="collapse" data-target="#collapse-admin">
                                <i class="fas fas fa-arrow-down" aria-hidden="true"></i>
                            </button>

                            <div class="modal fade" id="adminModal" role="dialog">
                                <div class="modal-dialog modal-dialog-centered">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Admin user</h5>
                                            <button type="button" class="close"
                                                data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group was-validated">
                                                <label class="control-label col-sm-12">* Name</label>
                                                <div class="col-sm-12">
                                                    <input type="text" class="form-control"
                                                        id="admin-name" placeholder="Enter admin name"
                                                        name="admin-name" required>

                                                    <div class="valid-feedback"></div>
                                                    <div class="invalid-feedback">Please fill out
                                                        this field.</div>
                                                </div>
                                            </div>

                                            <div class="form-group was-validated">
                                                <label class="control-label col-sm-12">* Password (minimum length : 10)</label>
                                                <div class="col-sm-12">
                                                    <input type="password" class="form-control" id="admin-password-url" minlength="10"
                                                        placeholder="Enter password" name="admin-password-url" required>

                                                    <div class="valid-feedback"></div>
                                                    <div class="invalid-feedback">Please fill out
                                                        this field.</div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary"
                                                id="btn-admin-add">Save</button>

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
                <div id="collapse-admin" class="collapse">
                    <hr>

                    <div class="card-body">
                        <div class="container" id="admin-detail-setting-container">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ==================================================== Manager =================================================================== -->
    <div class="list-group-item">
        <div class="row align-items-center">
            <div class="col">
                <strong class="mb-0">Manager</strong>
            </div>

            <div class="col-auto">
                <div class="card-body">
                    <div class="panel panel-default">
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <button type="button"
                                class="btn btn-primary btn-circle btn-sm"
                                data-toggle="modal" data-target="#managerModal">
                                <i class="fas fa-cog" aria-hidden="true"></i>
                            </button>

                            <button type="button"
                                id="btn-manager-toggle"
                                class="btn btn-info btn-circle btn-sm"
                                data-toggle="collapse" data-target="#collapse-manager">
                                <i class="fas fas fa-arrow-down" aria-hidden="true"></i>
                            </button>

                            <div class="modal fade" id="managerModal" role="dialog">
                                <div class="modal-dialog modal-dialog-centered">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Manager user</h5>
                                            <button type="button" class="close"
                                                data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group was-validated">
                                                <label class="control-label col-sm-12">* Name</label>
                                                <div class="col-sm-12">
                                                    <input type="text" class="form-control"
                                                        id="admin-name" placeholder="Enter admin name"
                                                        name="manager-name" required>

                                                    <div class="valid-feedback"></div>
                                                    <div class="invalid-feedback">Please fill out
                                                        this field.</div>
                                                </div>
                                            </div>

                                            <div class="form-group was-validated">
                                                <label class="control-label col-sm-12">* Password (minimum length : 10)</label>
                                                <div class="col-sm-12">
                                                    <input type="password" class="form-control" id="manager-password-url" minlength="10"
                                                        placeholder="Enter password" name="manager-password-url" required>

                                                    <div class="valid-feedback"></div>
                                                    <div class="invalid-feedback">Please fill out
                                                        this field.</div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary"
                                                id="btn-manager-add">Save</button>

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
                <div id="collapse-manager" class="collapse">
                    <hr>

                    <div class="card-body">
                        <div class="container" id="manager-detail-setting-container">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ==================================================== User =================================================================== -->
    <div class="list-group-item">
        <div class="row align-items-center">
            <div class="col">
                <strong class="mb-0">User & Guest</strong>
            </div>

            <div class="col-auto">
                <div class="card-body">
                    <div class="panel panel-default">
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <button type="button"
                                class="btn btn-primary btn-circle btn-sm"
                                data-toggle="modal" data-target="#userguestModal">
                                <i class="fas fa-cog" aria-hidden="true"></i>
                            </button>

                            <button type="button"
                                id="btn-userguest-toggle"
                                class="btn btn-info btn-circle btn-sm"
                                data-toggle="collapse" data-target="#collapse-userguest">
                                <i class="fas fas fa-arrow-down" aria-hidden="true"></i>
                            </button>

                            <div class="modal fade" id="userguestModal" role="dialog">
                                <div class="modal-dialog modal-dialog-centered">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">User & Guest</h5>
                                            <button type="button" class="close"
                                                data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group was-validated">
                                                <label class="control-label col-sm-12">* Name</label>
                                                <div class="col-sm-12">
                                                    <input type="text" class="form-control"
                                                        id="admin-name" placeholder="Enter admin name"
                                                        name="userguest-name" required>

                                                    <div class="valid-feedback"></div>
                                                    <div class="invalid-feedback">Please fill out
                                                        this field.</div>
                                                </div>
                                            </div>

                                            <div class="form-group was-validated">
                                                <label class="control-label col-sm-12">* Password (minimum length : 10)</label>
                                                <div class="col-sm-12">
                                                    <input type="password" class="form-control" id="userguest-password-url" minlength="10"
                                                        placeholder="Enter password" name="userguest-password-url" required>

                                                    <div class="valid-feedback"></div>
                                                    <div class="invalid-feedback">Please fill out
                                                        this field.</div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary"
                                                id="btn-userguest-add">Save</button>

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
                <div id="collapse-userguest" class="collapse">
                    <hr>

                    <div class="card-body">
                        <div class="container" id="userguest-detail-setting-container">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>