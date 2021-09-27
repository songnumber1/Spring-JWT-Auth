<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="../layout/header.jsp"%>



<!-- Main Content-->
<div class="container">
	<div class="row" style="height: 340px; max-height: height: 340px;">
		<div class="col-sm-4"
			style="overflow-y: auto; height: 310px; max-height: height: 310px;">
			<div id="treeview1"></div>
		</div>

		<div class="col-sm-8">
		 	<table id="table" class="table-fixed" style="height: 310px; max-height: 300px;overflow: auto;display:inline-block; width: 100%">
				<thead>
					<tr>
						<!-- JSON 값과 매칭될 field를 명시 -->
						<th data-field="subject">학과</th>
						<th data-field="name">이름</th>
						<th data-field="number">학번</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
	</div>
</div>

<%@include file="../layout/footer.jsp"%>


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.7.1/jquery.contextMenu.min.css">

<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>
<script type="text/javascript" src="/jwtauth/js/storage.js"></script>



<script
	src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script>
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.css">

<script type="text/javascript" src="/jwtauth/js/filegrid.js"></script>
<link href="/jwtauth/css/.css" rel="stylesheet" />

</body>
</html>
