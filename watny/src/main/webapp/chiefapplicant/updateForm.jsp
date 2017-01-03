<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

<h3 style="text-align: center;">팀장신청 수정</h3>
<FORM name='frm' method='POST' action='./update.do?ca_no=${dto.ca_no}'>

	<input type="hidden" name="ca_rqno" value=${dto.ca_rqno } readonly>
	<div>
		<table class='table'>
			<tr>
				<th>No.</th>
				<td><input type="text" name="ca_rqno" value=${dto.ca_no }
					readonly></td>
			</tr>
			<tr>
				<th>의뢰인</th>
				<td><input type="text" name="ca_id" value=${dto.ca_id }
					readonly></td>
			</tr>
			<tr>
				<th>금액</th>
				<td><input type="text" name="ca_price" size="20"
					value=${dto.ca_price }></td>
			</tr>
			<tr>
				<th>소요일</th>
				<td><input type="text" name="ca_date" value=${dto.ca_date }
					readonly></td>
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
				<td><select name="ca_select">
						<option value='N'>미채택</option>
						<option value='Y'>채택</option>
				</select></td>
			</tr>
		</table>
	</div>
	<div class='bottom' style="float: right;">
		<input type='submit' value='수정진행'> <input type='button'
			value='목록' onclick="location.href='./read.do?ca_no=${dto.ca_no}'">
	</div>
</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>