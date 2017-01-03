<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

<h3 style="text-align: center;">팀원 신청서</h3>
<FORM name="frm" method="post" action="./create.do">
	<input type="hidden" name="spa_no" value=${spa_no }> <input
		type="hidden" name="spa_code" value=${spa_code }>
	<table class='table'>
		<tr>
			<th>신청글 유형</th>
			<td><c:choose>
					<c:when test="${spa_code=='S' }"> 스터디
									</c:when>
					<c:when test="${spa_code=='P' }"> 프로젝트
									</c:when>
				</c:choose></td>
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

	<DIV class='bottom' style="float: right;">
		<input type='submit' class="btn btn-default" value='등록'> <input
			type='button' class="btn btn-default" value='목록'
			onclick="location.href='../request/list.do'">
	</DIV>
</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>