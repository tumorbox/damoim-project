<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

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
				<div class="row">
					<div class="col-xl-6">
						<h1><%="자유게시판"%></h1>
						<br />
					</div>
					<div class="col-xl-6"></div>
					<!-- 게시물 시작 -->
					<div class="table-responsive">
						<table class="table" style="font-size: 1vmax;">
							<thead>
								<tr>
									<th width="10%" align="center">#</th>
									<th width="60%">내용</th>
									<th width="10%">작성자</th>
									<th width="10%">작성일</th>
									<th width="10%">조회수</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (int i = 1; i <= 10; i++) {
								%><tr>
									<td><kbd style="background-color: red; font-weight: bold;">공지</kbd></td>
									<td><a href="/damoim/gathering/article.do"
										style="color: red;">내용<%=i%></a></td>
									<td>작성자<%=i%></td>
									<td>작성일<%=i%></td>
									<td>조회수<%=i%></td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
					<!-- 게시물 끝 -->
					<div class="col-xl-10"></div>
					<div class="col-xl-2">
						<a class ="btn btn-primary btn-block" href="/damoim/gathering/newarticle.do">글쓰기</a>
					</div>
					<div class="col-xl-12">
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link" href="#"> <span>«</span></a></li>
							
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#">6</a></li>
							<li class="page-item"><a class="page-link" href="#">7</a></li>
							<li class="page-item"><a class="page-link" href="#">8</a></li>
							<li class="page-item"><a class="page-link" href="#">9</a></li>
							<li class="page-item"><a class="page-link" href="#">10</a></li>
							<li class="page-item"><a class="page-link" href="#"> <span>»</span></a></li>
						</ul>
					</div>
					<div class="col-xl-2"></div>
					<div class="col-xl-8">
						<div class="row">
							<div class="col-xl-1"></div>
							<div class="col-xl-3 w-100">
								<select class="form-control" id="sel1" name="sellist1">
									<option>전체기간</option>
									<option>1일</option>
									<option>1주</option>
									<option>1개월</option>
									<option>6개월</option>
									<option>1년</option>
								</select>
							</div>
							<div class="col-xl-3 w-100">
								<select class="form-control" id="sel1" name="sellist1">
									<option>제목만</option>
									<option>글작성자</option>
									<option>댓글내용</option>
									<option>댓글작성자</option>
								</select>
							</div>
							<div class="col-xl-5">
								<form class="form-inline">
									<div class="input-group">
										<input type="text" class="form-control"
											id="inlineFormInputGroup" placeholder="Search">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-xl-2"></div>
					<!-- 중앙컨텐츠 끝 오른쪽 여백시작 -->
				</div>
			</div>
			<div class="col-xl-2"></div>
		</div>
	</div>
	<!-- 메인화면 끝 -->
</body>
</html>