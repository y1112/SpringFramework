<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
   <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 회원 리스트</h3>
        <div class="row mt">
          <div class="col-lg-12">
            <div class="content-panel">
              <h4><i class="fa fa-angle-right"></i>  회원 리스트</h4>
              <section id="unseen">
                <table class="table table-bordered table-striped table-condensed">
                  <thead>
                    <tr>
                      <th>아이디</th>
                      <th>비밀번호</th>
                      <th>닉네임</th>
                      <th>이메일</th>
                      <th>가입일</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${list}" var="mvo">
                    <tr>
                      <td>${mvo.uid}</td>
                      <td>${mvo.pwd}</a></td>
                      <td>${mvo.username}</td>
                      <td>${mvo.email}</td>
                      <td><fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${mvo.regdate}"/></td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
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
var result='${result}';
if(result=='success')
alert("게시글이 등록되었습니다.");
</script>
<%@ include file="../include/footer.jsp"%>
</body>
</html>
