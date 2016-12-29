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
					<h3 style="text-align: center;">팀원 신청서</h3>
					<FORM name="frm" method="post" action="./create.do">
						<input type="hidden" name="spa_no" value=${spa_no }>
						<input type="hidden" name="spa_code" value=${spa_code }>
						<table class='table'>
							<tr>
								<th>신청글 유형</th>
								<td>
									<c:choose>
									<c:when test="${spa_code=='S' }"> 스터디
									</c:when>
									<c:when test="${spa_code=='P' }"> 프로젝트
									</c:when>
									</c:choose>	
								</td>
							</tr>
							<tr>
								<th>팀원신청자</th>
								<td>세션 아이디</td>
							</tr>
							<tr>
								<th>신청분야</th>
								<td><select name="spa_part">
											<option value="db">DB</option>
											<option value="ui">UI</option>
											<option value="backend">BackEnd</option>
											<option value="server">Server</option>
											<option value="etc">etc(기타)</option>
									</select></td>
							</tr>
							<tr>
								<th>한마디</th>
								<td><textarea rows="2" cols="50" name="spa_memo">100자 이내로 적어주세요.</textarea></td>
							</tr>
						</table>

						<DIV class='bottom'>
							<input type='submit' value='등록'> 
						</DIV>
					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>