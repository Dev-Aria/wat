<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->
<div class="section">
	<div class="container">
		<div class="col-md-2">
			<div class="rqan3 sidebar">
				<h4>프로젝트</h4>
				<ul class="nav nav-tabs nav-stacked">
					<li><a href="../sproject/list.do">팀원모집공고</a></li>
					<li><a href="../request/list.do" style="background-color: #7ED2FF; color: #000000;">프로젝트의뢰</a></li>
					<li><a href="#">프로젝트판매</a></li>
					<li><a href="#">프로젝트완료</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-7">
			<div class="row-fluid" id="content">
				<div class="rqan8 main">
					<h3 style="text-align: center;">프로젝트의뢰 리스트</h3>
					<FORM name='frm' method='POST' action='./list.do'>
						<TABLE class='table' style="text-align: center;">
							<tr>
								<th>번호</th>
								<th>의뢰인</th>
								<th>제목</th>
								<th>등록일</th>
								<th>상태</th>
							</tr>

							<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.rq_no }</td>
									<td>${dto.rq_id }</td>
									<td><a href="./read.do?rq_no=${dto.rq_no }">${dto.rq_title }</a>
									</td>
									<td>${dto.rq_newdate }</td>
									<td>${dto.rq_state }</td>
								</tr>
							</c:forEach>

						</TABLE>

						<DIV class='bottom'>
							<input type='button' value='새글작성'
								onclick="location.href='./create.do'">
						</DIV>
					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>