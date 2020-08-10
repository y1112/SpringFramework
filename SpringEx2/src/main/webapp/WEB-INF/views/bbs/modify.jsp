<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp"%>

<!-- main -->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<h3>
			<i class="fa fa-angle-right"></i> 게시글 조회
		</h3>

		<!-- role:
			 HTML5에서 추가된 속성, ARIA(Accessible Rich Internet Application)라는 HTML5의 상세 규격 중 하나
			
		  -->
		<form role="form" method="post">
			<input type="hidden" name="bid" value="${bbsVO.bid}" />
		</form>

		<div class="row mt">
			<div class="col-lg-12">
				<div class="form-panel">
					<form role="form" class="form-horizontal style-form" method="post">

						<h4 class="mb">
							<i class="fa fa-angle-right"></i> 수정내용
						</h4>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">글번호</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="subject"
									value="${bbsVO.bid}" readonly>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">제목</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="subject"
									value="${bbsVO.subject}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">내용</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="content" rows="4">${bbsVO.content}</textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">작성자</label>
							<div class="col-sm-10">
								<input type="text" name="writer" class="form-control"
									value="${bbsVO.writer}">
							</div>
						</div>
					</form>
				</div>
				<!-- form-panel-->

				<div class="form-group">
					<div class="col-sm-12" align="center">
						<button type="submit" id="btn_modify" class="btn btn-theme02">저장하기</button>
						&nbsp;
						<button type="submit" id="btn_cancel" class="btn btn-theme03">취소하기</button>
					</div>
				</div>

				<script>
					// $는 jQuery의 의미
					$(document).ready(function() {
						var frmObj = $("form[role='form']");

						console.log("폼태그입니다..");

						$("#btn_modify").on("click", function() {
							frmObj.attr("action", "/bbs/modify");
							frmObj.attr("method", "get");
							frmObj.submit();
						});

						$("#btn_delete").on("click", function() {
							frmObj.attr("action", "/bbs/delete");
							frmObj.submit();
						});

						$("#btn_list").on("click", function() {
							self.location = "/bbs/list";
						});
					});
				</script>


			</div>
			<!-- col-lg-12-->
		</div>
		<!-- /row -->
	</section>
	<! --/wrapper -->
</section>
<!-- /MAIN CONTENT -->

<%@include file="../include/footer.jsp"%>