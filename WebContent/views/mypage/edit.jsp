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

  
<style type="text/css">

.edituserbox{
	width:700px;
	margin-left: 50px;
	max-width:100%;
}
.btns{
	width: 100%;
	margin-left: 40%;
}
.btn_modify,
.btn_delAccount{
	display: inline-block;
}

</style>
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
	<div class="container">
	    <h1 class="my-4">My Page</h1>
		  <div class="row">
			
			<!-- leftNavigation -->
			<jsp:include page = "/views/common/mypageCategory.jsp" />
			<!-- /leftNavigation -->
			
			<div class = "edituserbox">
			
				<h3>내 정보 수정</h3>
			
				<form action="${pageContext.request.contextPath }/User_EditController" name="f" method="post" onsubmit="return check()">
					<fieldset>
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
						
						<div class="form-group">
						<div class="btns">
							<div class="btn_modify">
								<button type="submit" class="btn btn-primary">수정</button>
							</div>
							<c:if test="${m.type==1}">
							<div class="btn_delAccount">
								<input type="button" class="btn btn-danger" onclick="return checkrem();"
									value="탈퇴">
							</div>
							</c:if>
						</div>
						</div>
						</fieldset>
				</form>
			</div>
		</div>
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