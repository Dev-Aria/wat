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
		<div class="col-md-7">
			<div class="row-fluid" id="content">
				<div class="span8 main">
					<h3 style="text-align: center;">프로젝트 의뢰글 작성</h3>
					<FORM name="frm" method="post" action="./create.do">

						<table class='table'>
							<tr>
								<th>의뢰인</th>
								<td>세션아이디</td>
							</tr>
							<tr>
								<th>제목</th>
								<td><input type="text" name="rq_title" size="20"></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><textarea rows="10" cols="55" name="rq_content">의뢰내용에 관련된 세부 설명을 적어주시면 됩니다.</textarea></td>
							</tr>
							<tr>
								<th>템플릿</th>
								<td></td>
							</tr>
							<tr>
								<th>팀장 모집 시작일</th>
								<td>의뢰글을 등록하는 날짜로 자동 등록됩니다.</td>
							</tr>
							<tr>
								<th>팀장 모집 마감일</th>
								<td><input type="text" name="rq_enddate" size="20"></td>
							</tr>
							<tr>
								<th>모집상태</th>
								<td>모집중으로 자동 등록됩니다.</td>
							</tr>
						</table>

						<DIV class='bottom'>
							<input type='submit' value='등록'> <input type='button'
								value='목록' onclick="location.href='./list.do'">
						</DIV>
					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>