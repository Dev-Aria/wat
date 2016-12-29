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
					<h3 style="text-align: center;">팀장신청 수정</h3>
					<FORM name='frm' method='POST'
						action='./update.do?ca_no=${dto.ca_no}'>
						<div>
							<table class='table'>
								<tr>
									<th>번호</th>
									<td>${dto.ca_no }</td>
								</tr>
								<tr>
									<th>의뢰인</th>
									<td>${dto.ca_id }</td>
								</tr>
								<tr>
									<th>금액</th>
									<td><input type="text" name="ca_price" size="20"
										value=${dto.ca_price }></td>
								</tr>
								<tr>
									<th>소요일</th>
									<td><textarea rows="10" cols="55" name="ca_date">${dto.ca_date }</textarea></td>
								</tr>
								<tr>
									<th>한마디</th>
									<td><input type="text" name="ca_memo" size="20"
										value=${dto.ca_memo }></td>
								</tr>
								<tr>
									<th>등록일</th>
									<td>${dto.ca_newdate }</td>
								</tr>
								<tr>
									<th>채택여부</th>
									<td>
									<c:choose>
									<c:when test="${dto.ca_select==0 }"> 미채택
									</c:when>
									<c:when test="${dto.ca_select==1 }"> 채택
									</c:when>
									</c:choose>
									
									</td>
								</tr>
							</table>
						</div>
						<div class='bottom'>
							<input type='submit' value='수정진행'> <input type='button'
								value='목록'
								onclick="location.href='./read.do?ca_no=${dto.ca_no}'">
						</div>
					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>