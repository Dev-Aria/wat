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
			<div class="span3 sidebar">
				<h4>팀원모집공고</h4>
				<ul class="nav nav-tabs nav-stacked">
					<li><a href="../sproject/list.do" style="background-color: #7ED2FF; color: #000000;">팀원모집공고</a></li>
					<li><a href="../request/list.do">프로젝트의뢰</a></li>
					<li><a href="#">프로젝트판매</a></li>
					<li><a href="#">프로젝트완료</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-7">
			<div class="row-fluid" id="content">
				<div class="span8 main">
					<h3 style="text-align: center;">스터디/프로젝트 팀원 모집</h3>
					<FORM name='frm' method='POST' action='./list.do'>
						<TABLE class='table' style="text-align: center;">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>팀장</th>
								<th>개발시작</th>
								<th>개발종료</th>
								<th>DB</th>
								<th>UI</th>
								<th>BackEnd</th>
								<th>Server</th>
								<th>ETC</th>
								<th>상태</th>
								<th>모집시작</th>
								<th>모집종료</th>
							</tr>

							<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.sp_no }</td>
									<td><a href="./read.do?sp_no=${dto.sp_no }">${dto.sp_title }</a>
									</td>
									<td>${dto.sp_id }</td>
									<td>${dto.sp_startdate }</td>
									<td>${dto.sp_findate }</td>
									<td>${dto.sp_dbcnt }</td>
									<td>${dto.sp_uicnt }</td>
									<td>${dto.sp_backcnt }</td>
									<td>${dto.sp_servercnt }</td>
									<td>${dto.sp_etccnt }</td>
									<td>${dto.sp_state }</td>
									<td>${dto.sp_newdate }</td>
									<td>${dto.sp_enddate }</td>
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