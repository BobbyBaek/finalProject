<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="../../views/common/head.jsp"%>
<link rel="stylesheet" href="/resources/css/notice/notice.css">
<script src="/resources/js/foodFriend/foodFriend.js"></script>

</head>
<body>

	<%@ include file="../../views/common/header.jsp"%>
			<%@ include file="../../views/common/nav.jsp" %>
	<div class="container">
		<div class="board_wrap">
			<div class="notice_title">
				<strong>자유게시판</strong>

			</div>
			<div class="notice_view_wrap">
				<div class="notice_view">
					<div class="title">${free.title }</div>
					<div class="info">
						<dl>
							<dt>번호: ${free.flno }</dt>
						</dl>
						<dl>
							<dt>글쓴이: ${free.writer }</dt>
						</dl>
						<dl>
							<dt>작성일: ${free.indate }</dt>
						</dl>
						<dl>
							<dt>조회: ${free.views }</dt>
						</dl>
					</div>
					<div class="cont">

						

						<c:if test ="${not empty free.fileName }">
						<img src="/resources/uploads/free/${free.fileName}">
						</c:if>
						<br><br>
						${free.contents}

					</div>
				</div>
				<div class="bt_wrap">
					<c:if test="${sessionScope.memberNickName == free.writer}">
						<a href="/free/freeDelete?flno=${free.flno}">삭제</a>
						<a href="/free/freeEditForm?flno=${free.flno}">수정</a>
						<a href="/free/freeList" class="on">목록</a> 
					</c:if>
					
				</div>
			</div>
		</div>

		<div class="comment_title">
			댓글 <span>${commentCount}</span>

		</div>
		<div class="commentList">
			<c:forEach var="item" items="${freeComment }" varStatus="status">
			<div class="reply_list">
				<div class="media-left">
					<c:if test="${not empty memberResult }">
						<a href="#"> <img class="profile_picture" src="/resources/uploads/member/${memberResult[status.index].uploadName}"></a>
					</c:if>
				</div>
				<div class="media-body">
					<h4 class="media-heading">
						<b class="info_name_f">${item.fcwriter }</b> <span id="date">${item.fcIndate }</span>
					</h4>
					<div class="comment-size">
					${item.comment} <br>
					</div>
				</div>

			</div>
			</c:forEach>
		</div>

		<div class="comment-section">
			<h2>댓글 남기기</h2>
			<form id="comment-form" action="/free/comment.do?flno=${free.flno}" method="post">
				<div class="commentPic">
					<img src="/resources/uploads/member/${sessionScope.uploadName}">
				</div>
				<div class="comment">


					<textarea class="commentTextbox" name="comment"
						placeholder="댓글을 작성하세요."></textarea>
					<button class="comment_submit" type="submit">댓글작성</button>
				</div>
			</form>
		</div>
	</div>

	<div class="pageNav">
    <ul class="pagination justify-content-center">
        <c:choose>
            <c:when test="${pi.cpage eq 1}">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item">
                    <a class="page-link" href="/free/freeDetail?flno=${free.flno }&cpage=${pi.cpage-1}" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            </c:otherwise>
        </c:choose>
        
        <c:forEach var="page" begin="${pi.startPage}" end="${pi.endPage}">
		    <li class="page-item <c:if test="${pi.cpage eq page}">active</c:if>">
		        <a class="page-link" href="/free/freeDetail?flno=${free.flno }&cpage=${page}">${page}</a>
		    </li>
		</c:forEach>
        
        <c:choose>
            <c:when test="${pi.cpage eq pi.maxPage}">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item">
                    <a class="page-link" href="/free/freeDetail?flno=${free.flno }&cpage=${pi.cpage+1}" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </c:otherwise>
        </c:choose>
    </ul>
</div>

	<%@ include file="../../views/common/footer.jsp"%>


</body>
</html>
