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
					<h3 style="text-align: center;">팀장신청 상세보기</h3>
					<FORM name='frm' method='POST' action='./update.do'>
						<div class='table'>
							<table class='table' >
								<tr>
									<th>번호</th>
									<td>${dto.ca_no }</td>
								</tr>
								<tr>
									<th>신청자</th>
									<td>${dto.ca_id }</td>
								</tr>
								<tr>
									<th>금액</th>
									<td>${dto.ca_price }원</td>
								</tr>
								<tr>
									<th>소요일</th>
									<td>${dto.ca_date }일</td>
								</tr>
								<tr>
									<th>한마디</th>
									<td>${dto.ca_memo }</td>
								</tr>
								<tr>
									<th>신청일</th>
									<td>${dto.ca_newdate }</td>
								</tr>
								<tr>
									<th>채택여부</th>
									<td><select name="ca_select">
											<option value="0">미채택</option>
											<option value="1">채택</option>
									</select></td>
								</tr>
							</table>
						</div>
						<div class='bottom'>
							<input type='button' value='수정'
								onclick="location.href='./update.do?ca_no=${dto.ca_no }'">
							<input type='button' value='목록'
								onclick="location.href='./list.do'"> 
							<input type='button' value='삭제'
								onclick="location.href='./delete.do?ca_no=${dto.ca_no }'">
						</div>

					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>