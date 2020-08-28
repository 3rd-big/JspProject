<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>



<script type="text/javascript">
 
function closeToEditMember() {
	opener.location.href="'<%=request.getContextPath()%>/MemberManageController'";

		self.close();

	}

	function check() {
		var pwdtxt = document.f.pwd;
		var addrtxt = document.f.addr;
		if (pwdtxt.value == "") {
			alert("빈공란이 존재합니다.");
			pwdtxt.value = "";
			pwdtxt.focus();
			return false;
		}

		if (addrtxt.value == "") {
			alert("빈공란이 존재합니다.");
			addrtxt.value = "";
			addrtxt.focus();
			return false;
		}

		alert("수정되었습니다.");
	}

	function checkrem() {
		var flag = confirm("정말 삭제하시겠습니까?")
		if (flag) {
			location.href = "${pageContext.request.contextPath}/DelController";

		} else {
			alert("삭제가 취소되었습니다.");
		}
	}
</script>


</head>
<body>
<h1>POP up</h1>

<div class = "editusercomponent">
		<form action="${pageContext.request.contextPath }/User_EditController" name="f" method="post" onsubmit="return check()">
			<fieldset>
				<legend>내 정보 수정</legend>
				
				<div class="form-group">
					<label for="ViewID">ID</label> 
					<input type="text" class="form-control" name="id" value="${member.id}" readonly>
				</div>
				
				<div class="form-group">
					<label for="EditPwd">Password</label> <input
						type="password" class="form-control" name="pwd" value="${member.pwd }" >
				</div>
				
				<div class="form-group">
					<label for="ViewName">Name</label> <input
						type="text" class="form-control" name="name" value="${member.name }" readonly>
						
				</div>
				
				<div class="form-group">
					<label for="EidtEmail">Email address</label> <input
						type="email" class="form-control" name="email" value="${member.email }" aria-describedby="emailHelp" > 
				</div>
				<!-- 주소api 추후 추가 -->
				<div class="form-group">
					<label for="EditAddress">Address</label> <input
						type="text" class="form-control" name="addr" value="${member.addr }">
				</div>
				
			
				<input type="button" value="수정" onclick="closeToEditMember();"> 
				<input type="button" value="닫기" onclick="self.close();"> 
				
			</fieldset>
		</form>
	</div>
	


</body>
</html>