<%@ page language="java" contentType="text/html; charset=UTf-8"
	pageEncoding="UTf-8" import="model.NoticeVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../jquery.twbsPagination.js" type="text/javascript"></script>
<meta charset="UTF-8">
<title>jQuery Pagination plugin</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../jquery.twbsPagination.js" type="text/javascript"></script>
<script>
    function paging(page) {
    	$('#list-body').empty();
    	var startRow = (page - 1) * pageSize; // + 1 list는 0부터 시작하니깐;
    	var endRow = page * pageSize;
    	if (endRow > totalCount) 
    	{
    		endRow = totalCount;
    	}  
    	var startPage = ((page - 1)/visibleBlock) * visibleBlock + 1;
    	var endPage = startPage + visibleBlock - 1;
    	if(endPage > totalPages) {    //
    	  endPage = totalPages;
    	}
    	for (var j = startRow; j < endRow; j++) 
    	{	
    		$('#list-body').append(''+ chatLogList[j].fileNo +''
    				+ textLengthOverCut(chatLogList[j].fileName, '25', '...') +''+ chatLogList[j].fileDate +'');
    	}
    }
    
    </script>
</head>
<body>
	<h3>공지사항</h3>
	<a href="${pageContext.request.contextPath }/views/notice/addform.jsp">글작성</a>
	<br>

	<table class="table table-bordered table-hover" id="twbsPagination">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>게시일</th>
		</tr>
		<c:forEach var="notice" items="${notice }">
			<tr>
				<td>${notice.num }</td>
				<td><a
					href="${pageContext.request.contextPath }/ReadNoticeController?num=${notice.num}">${notice.title }</a>
				</td>
				<td>${notice.n_date }</td>
			</tr>
		</c:forEach>
	</table>
	<div class="container">
		<nav aria-label="Page navigation">
			<ul class="pagination" id="pagination">

				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</nav>
	</div>
	<script type="text/javascript">
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: 35,
            visiblePages: 10,
            onPageClick: function (event, page) {
                console.info(page + ' (from options)');
            }
        }).on('page', function (event, page) {
            console.info(page + ' (from event listening)');
        });
    });
</script>
</body>
</html>