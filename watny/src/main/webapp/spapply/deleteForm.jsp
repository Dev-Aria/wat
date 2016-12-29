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
					<h3 style="text-align: center;">프로젝트의뢰 삭제</h3>
					<br>
					<FORM name='frm' method='POST' action='./delete.do'>
						<input type="hidden" name="rq_no" value="${dto.rq_no }">
						<div class='content'>
							<table class='table'>
								<tr>
									<td>비밀번호</td>
									<td><input type="password" name="m_pw" size="20"></td>
									<td><input type='button' onclick="pwCheck()"
										value='비밀번호 확인'></td>
								</tr>
							</table>
						</div>
						<br>
						<div class='bottom'>
							<input type='submit' value='삭제진행'> <input type='button'
								value='목록' onclick="location.href='./list.do'">
						</div>
					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>