<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resource/css/shop-item.css" rel="stylesheet">

<script>
        function check(){
            var pwdtxt=document.f.pwd;
            var addrtxt=document.f.addr;
            if(pwdtxt.value==""){
                alert("빈공란이 존재합니다.");
                pwdtxt.value="";
                pwdtxt.focus();
                return false;
            }
            
            if(addrtxt.value==""){
                alert("빈공란이 존재합니다.");
                addrtxt.value="";
                addrtxt.focus();
                return false;
            }
            
            alert("수정되었습니다.");
        }
        
        function checkrem(){
    		var flag=confirm("정말 탈퇴하겠습니까?")
    		if(flag){
    			location.href="${pageContext.request.contextPath}/DelController";
    			
    		}else{
    			alert("탈퇴가 취소되었습니다.");
    		}
    	}
</script>




</head>
<body>
	<!-- Navigation -->
	<%@include file ="/views/common/header.jsp" %>
	<!-- Page Container -->

	<div class="row2" >
	
	      <div class="col-lg-3">
	        <h1 class="my-4">My Page</h1>
	        <div class="list-group">
	        	<a href="${pageContext.request.contextPath }/OrderlistController?o_state=0" class="list-group-item">주문조회</a>
	        	<a href="#" class="list-group-item">내가 쓴 리뷰 관리</a>
	          <a href="${pageContext.request.contextPath }/SearchController" class="list-group-item ">내 정보 수정</a>
	          
	          
	        </div>
	      </div>
	    </div>
	
	<div class = "editusercomponent">
		<form action="${pageContext.request.contextPath }/User_EditController" name="f" method="post" onsubmit="return check()">
			<fieldset>
				<legend>내 정보 수정</legend>
				
				<div class="form-group">
					<label for="ViewID">ID</label> 
					<input type="text" class="form-control" name="id" value="${m.id}" readonly>
				</div>
				
				<div class="form-group">
					<label for="EditPwd">Password</label> <input
						type="password" class="form-control" name="pwd" value="${m.pwd }" >
				</div>
				
				<div class="form-group">
					<label for="ViewName">Name</label> <input
						type="text" class="form-control" name="name" value="${m.name }" readonly>
						
				</div>
				
				<div class="form-group">
					<label for="EidtEmail">Email address</label> <input
						type="email" class="form-control" name="email" value="${m.email }" aria-describedby="emailHelp" > 
				</div>
				<!-- 주소api 추후 추가 -->
				<div class="form-group">
					<label for="EditAddress">Address</label> <input
						type="text" class="form-control" name="addr" value="${m.addr }">
				</div>
				
			
				<button type="submit" class="btn btn-primary">수정</button>
				
				<button type="button" onclick="return checkrem();">회원탈퇴</button>
			</fieldset>
		</form>
	</div>
	





	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2020</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>