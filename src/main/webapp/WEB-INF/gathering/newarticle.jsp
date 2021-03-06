<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.js"></script>
<style type="text/css">
.container-fluid {
	padding-left: 0px;
	padding-right: 0px;
}
</style>
</head>
<body class="">
	<!-- 메인화면 시작 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-2"></div>
			<!-- 왼쪽여백 끝 중앙 컨텐츠 시작 -->
			<div class="col-xl-8">
					<div class="form-group">
						<textarea id="summernote" name="editordata"></textarea>
					</div>
				<script>
					$('#summernote').summernote({
						placeholder : 'Hello Bootstrap 4',
						tabsize : 2,
						height : 500
					});
				</script>
				<br />
				<div class="row">
					<div class="col-xl-10">

						<button id="edit" class="btn btn-primary" onclick="edit()"
							type="button">Edit 1</button>
						<button id="save" class="btn btn-primary" onclick="save()"
							type="button">Save 2</button>
						<div class="click2edit">click2edit</div>
						<script type="text/javascript">
							var edit = function() {
								$('.click2edit').summernote({
									focus : true
								});
							};

							var save = function() {
								var markup = $('.click2edit')
										.summernote('code');
								$('.click2edit').summernote('destroy');
							};
						</script>

					</div>
					<div class="col-xl-2">
							<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</div>
			</div>
			<!-- 중앙컨텐츠 끝 오른쪽 여백시작 -->
			<div class="col-xl-2"></div>
		</div>
	</div>
	<!-- 메인화면 끝 -->
</body>
</html>