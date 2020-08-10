<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@ include file="../include/header.jsp"%>




<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<h3>
			<i class="fa fa-angle-right"></i>글쓰기 페이지
		</h3>
		<!-- BASIC FORM ELELEMNTS -->
		<div class="row mt">
			<div class="col-lg-12">
				<div class="form-panel">
		<form class="form-horizontal style-form" method="post">
			<input type="hidden" name="bid" value="${bbsVO.bid}">
					<h4 class="mb">
						<i class="fa fa-angle-right"></i>조회 내용
					</h4>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">제목</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="subject"
								value="${bbsVO.subject}" readonly>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">내용</label>
						<div class="col-sm-10">
							<textarea class="form-control" name="content" rows="4"
							 readonly="readonly">${bbsVO.content}</textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">작성자</label>
						<div class="col-sm-10">
							<input type="text" class="form-control round-form" name="writer"
								value="${bbsVO.writer}" readonly>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-theme02">수정하기</button>
							<button type="submit" class="btn btn-theme02">삭제하기</button>
							<button type="submit" class="btn btn-theme02">목록으로</button>
						</div>
					</div>
		</form>
				</div>
			</div>
		</div>

	</section>
</section>



<%@ include file="../include/footer.jsp"%>
</body>
</html>
