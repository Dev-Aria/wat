<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

<h3 style="text-align: center;">프로젝트의뢰 상세보기</h3>
<FORM name='frm' method='POST' action='./update.do'>
	<div class='table'>
		<table class='table'>
			<tr>
				<th>No.</th>
				<td>${dto.rq_no }</td>
			</tr>
			<tr>
				<th>의뢰인</th>
				<td>${dto.rq_id }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${dto.rq_title }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${dto.rq_content }</td>
			</tr>
			<tr>
				<th>템플릿</th>
				<td>${dto.rq_templete }</td>
			</tr>
			<tr>
				<th>모집기간</th>
				<td>${dto.rq_newdate } ~ ${dto.rq_enddate }</td>
			</tr>
			<tr>
				<th>진행상태</th>
				<td><c:choose>
						<c:when test="${dto.rq_state==0 }"> 모집중 </c:when>
						<c:when test="${dto.rq_state==1 }"> 개발중 </c:when>
						<c:when test="${dto.rq_state==2 }"> 완료 </c:when>
					</c:choose></td>
			</tr>
		</table>
	</div>
	<div class='bottom' style="float: right;">
		<hr>
		<br> 팀장신청인원 : &nbsp;${count_all }명 &nbsp; 
		<br>
		<input type='button' class="btn btn-default" value='팀장신청' onclick="location.href='../chiefapplicant/create.do?ca_rqno=${dto.rq_no }'">
		<input type='button' class="btn btn-default" value='수정' onclick="location.href='./update.do?rq_no=${dto.rq_no }'"> 
		<input type='button' class="btn btn-default" value='목록' onclick="location.href='./list.do'">
		<input type='button' class="btn btn-default" value='삭제' onclick="location.href='./delete.do?rq_no=${dto.rq_no }'">
	</div>

</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>