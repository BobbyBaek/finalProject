<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
	 <%@ include file="../views/common/head.jsp" %>
	 <link rel="stylesheet" href="/resources/css/ranking/ranking.css">
	 <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> 

<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
</head>
<body>

	<%@ include file="../views/common/header.jsp" %>
	
	
	<div >
		<div class="main_video">
			<iframe width="100%" height="700px" src="https://www.youtube.com/embed/uX9LWnMNtkA?si=UpTXbPyO5egQfoxq" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
		</div>
	</div>
<button class="btn" onclick="window.location.href='/recipe/addRecipeForm.do'" type="button" >글쓰기</button>
	<div>
		
	</div>
	<div>
		${m_no}
		<p>best 레시피</p>
		<div>
		<p>내용</p>
		</div>
	</div>
	<div>
		<p>추천 레시피</p>
		<div>
		<p>내용</p>
		</div>
	</div>
	<div>
		<p>레시피 분류</p>
		<div>
		<p>내용</p>
		</div>
	</div>
	<div>
		<p>최근 본 레시피</p>
		<div>
		<p>내용</p>
		</div>
	</div>


<%@ include file="../views/common/main/bestRecipe.jsp" %>
<%@ include file="../views/common/main/recommendedRecipe.jsp" %>
<%@ include file="../views/common/main/mainCategory.jsp" %>
<%@ include file="../views/common/recentlyRecipe.jsp" %>


	<%@ include file="../views/common/footer.jsp" %>
	

</body>
</html>
