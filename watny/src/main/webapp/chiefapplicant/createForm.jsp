<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

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

	<DIV class='bottom' style="float: right;">
		<input type='submit' class="btn btn-default" value='등록'> <input
			type='button' class="btn btn-default" value='목록'
			onclick="location.href='../request/list.do'">
	</DIV>
</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>