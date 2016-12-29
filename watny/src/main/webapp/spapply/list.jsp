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
					<li><a href="../sproject/list.do" style="background-color: #7ED2FF; color: #000000;">팀원모집공고</a></li>
					<li><a href="../request/list.do">프로젝트의뢰</a></li>
					<li><a href="#">프로젝트판매</a></li>
					<li><a href="#">프로젝트완료</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-7">
			<div class="row-fluid" id="content">
				<div class="rqan8 main">
					<h3 style="text-align: center;">팀장신청 리스트</h3>
					<FORM name='frm' method='POST' action='./list.do'>
						<TABLE class='table' style="text-align: center;">
							<tr>
								<th>번호</th>
								<th>신청자</th>
								<th>금액</th>
								<th>소요일</th>
								<th>한마디</th>
								<th>신청일</th>
							</tr>

							<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.ca_no }</td>
									<td><a href="#포트폴리오">${dto.ca_id }</a></td>
									<td>${dto.ca_price }</td>
									<td>${dto.ca_date }</td>
									<td><a
										href="../chiefapplicant/read.do?ca_no=${dto.ca_no }">${dto.ca_memo }</a></td>
									<td>${dto.ca_newdate }</td>
								</tr>
							</c:forEach>

						</TABLE>

					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>