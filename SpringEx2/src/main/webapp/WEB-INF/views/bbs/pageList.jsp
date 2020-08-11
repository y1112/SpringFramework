<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<h3>
			<i class="fa fa-angle-right"></i> 글 리스트
		</h3>
		<div class="row mt">
			<div class="col-lg-12">
				<div class="content-panel">
					<h4>
						<i class="fa fa-angle-right"></i> 게시판 리스트
					</h4>
					<section id="unseen">
						<table class="table table-bordered table-striped table-condensed">
							<thead>
								<tr>
									<th>글번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
									<th class="numeric">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="bvo">
									<tr>
										<td>${bvo.bid}</td>
										<td><a href="/bbs/read?bid=${bvo.bid}">${bvo.subject}</a></td>
										<td>${bvo.writer}</td>
										<td><fmt:formatDate pattern="yyyy/MM/dd HH:mm"
												value="${bvo.regdate}" /></td>
										<td class="numeric">${bvo.hit}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>


						<div class="showback" align="center">
							<div class="btn-group">

								<c:if test="${pagingMaker.prev}">
									<button type="button" class="btn btn-default">
									<a href="pageList?page=${pagingMaker.startPage-1}"><-</a>
									</button>
								</c:if>
								<c:forEach begin="${pagingMaker.startPage}"
									end="${pagingMaker.endPage}" var="pNum">
									<button type="button" class="btn btn-default">
										<a href="pageList?page=${pNum}">${pNum}</a>
									</button>
								</c:forEach>

								<c:if test="${pagingMaker.next&&pagingMaker.endPage>0}">

									<a href="pageList?page=${pagingMaker.endPage+1}">
										<button type="button" class="btn btn-default">->
									</a>
									</button>
								</c:if>
							</div>
						</div>

					</section>
				</div>
				<!-- /content-panel -->
			</div>
			<!-- /col-lg-4 -->
		</div>
		<!-- /row -->

		<!-- /row -->
	</section>
	<!-- /wrapper -->
</section>
<!-- /MAIN CONTENT -->

<script>
	var result = '${result}';
	if (result == 'success')
		alert("게시글이 등록되었습니다.");
</script>
<%@ include file="../include/footer.jsp"%>
</body>
</html>
