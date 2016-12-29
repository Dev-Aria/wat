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
				<h4>프로젝트</h4>
				<ul class="nav nav-tabs nav-stacked">
					<li><a href="../sproject/list.do">팀원모집공고</a></li>
					<li><a href="../request/list.do" style="background-color: #7ED2FF; color: #000000;">프로젝트의뢰</a></li>
					<li><a href="#">프로젝트판매</a></li>
					<li><a href="#">프로젝트완료</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-10">
			<div class="row-fluid" id="content">
				<div class="span8 main">
					<h3 style="text-align: center;">프로젝트의뢰 상세보기</h3>
					<FORM name='frm' method='POST' action='./update.do'>
						<div class='table'>
							<table class='table'>
								<tr>
									<th>번호</th>
									<td>${dto.rq_no }</td>
								</tr>
								<tr>
									<th>의뢰인</th>
									<td>${dto.rq_id }</td>
								</tr>
								<tr>
									<th>제목</th>
									<td>${dto.rq_title }</td>
								</tr>
								<tr>
									<th>내용</th>
									<td>${dto.rq_content }</td>
								</tr>
								<tr>
									<th>템플릿</th>
									<td>${dto.rq_templete }</td>
								</tr>
								<tr>
									<th>팀장모집시작</th>
									<td>${dto.rq_newdate }</td>
								</tr>
								<tr>
									<th>팀장모집마감</th>
									<td>${dto.rq_enddate }</td>
								</tr>
								<tr>
									<th>진행상태</th>
									<td>${dto.rq_state }</td>
								</tr>
							</table>
						</div>
						<div class='bottom'>
							<hr>
							<br> 팀장신청인원 : &nbsp;${count_all }명 &nbsp; <input type='button'
								value='팀장신청'
								onclick="location.href='../chiefapplicant/create.do?ca_rqno=${dto.rq_no }'">
							<input type='button' value='수정'
								onclick="location.href='./update.do?rq_no=${dto.rq_no }'">
							<input type='button' value='목록'
								onclick="location.href='./list.do'"> <input
								type='button' value='삭제'
								onclick="location.href='./delete.do?rq_no=${dto.rq_no }'">
						</div>

					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>