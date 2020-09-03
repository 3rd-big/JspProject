<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/views/member/MDB-Free_4.19.1/css/mdb.min.css" rel="stylesheet">

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resource/vendor/bootstrap/js/bootstrap.js"></script>

<style type="text/css">
.searchIdcomponent{

	padding: 2em;
    width: 400px;
    margin-left: 30%;
    padding-top: 100px;
    padding-bottom: 200px;

}
li{
	width:50%;
}

a{
	text-align:center;
	color: black; 
	text-decoration: none;
}
</style>

</head>
<body>
	<!-- Navigation -->
	<%@include file ="/views/common/header.jsp" %>
	<!-- Page Container -->
	<div class="container">

		<div class="searchIdcomponent">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item"><a class="nav-link active" id="home-tab"
					data-toggle="tab" href="#home" role="tab" aria-controls="home"
					aria-selected="true"> 아이디 찾기 </a></li>
				<li class="nav-item"><a class="nav-link" id="profile-tab"
					data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
					aria-selected="false"> 비밀번호 찾기 </a></li>
				
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel"
					aria-labelledby="home-tab">
					.
					<div class="md-form mt-0">

						가입시 입력했던 이메일을 입력해 주세요 <input class="form-control" type="text"
							placeholder="Email" name="email">
					</div>

				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel"
					aria-labelledby="profile-tab">
					
					..ㅎ.
					
					<div class="md-form mt-0">

						아이디 입력해 주세요 <input class="form-control" type="text"
							placeholder="Id" name="id">
					</div>
					<div class="md-form mt-0">

						이메일 <input class="form-control" type="text"
							placeholder="email" name="email">
					</div>
					
					
					</div>
				
			</div>
		//
		
		
		</div>

	</div>



</body>
</html>