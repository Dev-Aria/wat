<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

<h3 style="text-align: center;">모집공고 상세보기</h3>
<FORM name='frm' method='POST' action='./update.do'>
	<div class='table'>
		<table class='table'>

			<tr>
				<th>No.</th>
				<td colspan="2">${dto.sp_no }</td>
			</tr>
			<tr>
				<th>구분</th>
				<td colspan="2"><c:choose>
						<c:when test="${dto.sp_code=='S' }"> 스터디
									</c:when>
						<c:when test="${dto.sp_code=='P' }"> 프로젝트
									</c:when>
					</c:choose></td>
			</tr>
			<tr>
				<th>팀장</th>
				<td colspan="2">${dto.sp_id }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="2">${dto.sp_title }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="2">${dto.sp_content }</td>
			</tr>
			<tr>
				<th>개발기간</th>
				<td colspan="2">${dto.sp_startdate }~ ${dto.sp_findate }</td>
			</tr>
			<tr>
				<th>입찰금액</th>
				<td colspan="2">${dto.sp_pay }원</td>
			</tr>
			<tr>
				<th></th>
				<th>T.O(명)</th>
				<th>보수(%)</th>
			</tr>
			<tr>
				<th>DB</th>
				<td>${dto.sp_dbcnt }명</td>
				<td>${dto.sp_dbpay }%</td>
			</tr>
			<tr>
				<th>UI</th>
				<td>${dto.sp_uicnt }명</td>
				<td>${dto.sp_uipay }%</td>
			</tr>
			<tr>
				<th>BackEnd</th>
				<td>${dto.sp_backcnt }명</td>
				<td>${dto.sp_backpay }%</td>
			</tr>
			<tr>
				<th>Server</th>
				<td>${dto.sp_servercnt }명</td>
				<td>${dto.sp_serverpay }%</td>
			</tr>
			<tr>
				<th>ETC</th>
				<td>${dto.sp_etccnt }명</td>
				<td>${dto.sp_etcpay }%</td>
			</tr>
			<tr>
				<th>모집기간</th>
				<td colspan="2">${dto.sp_newdate } ~ ${dto.sp_enddate }</td>
			</tr>
		</table>
	</div>
	<div class='bottom' style="float: right;">
		<hr>
		<br> 팀원신청인원 : 총&nbsp;${count_all }명 <br> DB:&nbsp;${count_db }명
		&nbsp;&nbsp;&nbsp; UI:&nbsp;${count_ui }명&nbsp;&nbsp;&nbsp;
		BackEnd:&nbsp;${count_back }명 &nbsp;&nbsp;&nbsp;
		Server:&nbsp;${count_server }명 &nbsp;&nbsp;&nbsp;
		ETC:&nbsp;${count_etc }명 &nbsp;&nbsp;&nbsp; 
		<br><input type='button'
			class="btn btn-default" value='팀원신청'
			onclick="location.href='../spapply/create.do?spa_code=${dto.sp_code }&spa_no=${dto.sp_no }'">
		<input type='button' class="btn btn-default" value='수정'
			onclick="location.href='./update.do?sp_no=${dto.sp_no }'"> <input
			type='button' class="btn btn-default" value='목록'
			onclick="location.href='./list.do'"> <input type='button'
			class="btn btn-default" value='삭제'
			onclick="location.href='./delete.do?sp_no=${dto.sp_no }'">
	</div>
</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>