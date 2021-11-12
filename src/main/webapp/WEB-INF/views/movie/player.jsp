<meta charset="utf-8">
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>

<%@include file="../layout/left.jsp"%>

<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<div class="col-12" id="container-title">
				<h1 class="mt-4">Movie Player</h1>

                <ol class="breadcrumb mb-4">
					<form action="/jwtauth/movie/" method="get">
						<button type="submit" class="btn btn-info btn-circle btn-sm"><i class="fas fa-arrow-left"></i></button>
					</form>

                    <li class="breadcrumb-item active" id="li-fileName" style="margin-top: 5px;margin-left: 10px;">${fileName}</li> &nbsp;&nbsp;&nbsp;
				</ol>
			</div>

			<hr id= "title-content-line"/>

			<div class="row" id="container-root">
				<div class="col-xl-12">
					<div class="card mb-4">
						<div class="card-body">
							<video controls="controls" id="videoPlay" style="width: 1620px;height: 580px;"> 
                                <source id="source" type="video/mp4" />
                            </video>
						</div>
					</div>
				</div>
			</div>
		</div>

        <div class="row" style="display: none;">
            <div class="card mb-4">
                <div id="div-absolutePath">${absolutePath}</div>
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
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>

<script type="text/javascript" src="/jwtauth/js/movie/player.js"></script>
</body>
</html>

