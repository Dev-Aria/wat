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
					<li><a href="../sproject/list.do" >팀원모집공고</a></li>
					<li><a href="../request/list.do"  style="background-color: #7ED2FF; color: #000000;">프로젝트의뢰</a></li>
					<li><a href="#">프로젝트판매</a></li>
					<li><a href="#">프로젝트완료</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-7">
			<div class="row-fluid" id="content">
				<div class="span8 main">
					<h3 style="text-align: center;">팀장신청서</h3>
					<FORM name="frm" method="post" action="./create.do">
						<input type="hidden" name="ca_rqno" value=${ca_rqno }>
						<table class='table'>
							<tr>
								<th>팀장신청자</th>
								<td>세션 아이디</td>
							</tr>
							<tr>
								<th>금액</th>
								<td><input type="number" name="ca_price" size="20">원</td>
							</tr>
							<tr>
								<th>소요일</th>
								<td><input type="number" name="ca_date" size="20">일</td>
							</tr>
							<tr>
								<th>한마디</th>
								<td><textarea rows="2" cols="50" name="ca_memo">100자 이내로 적어주세요.</textarea></td>
							</tr>
							<tr>
								<th>신청일</th>
								<td>신청날짜로 자동 등록됩니다.</td>
							</tr>
						</table>

						<DIV class='bottom'>
							<input type='submit' value='등록'> <input type='button'
								value='목록' onclick="location.href='../request/list.do'">
						</DIV>
					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>