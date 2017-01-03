<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

					<h3 style="text-align: center;">팀장신청 상세보기</h3>
					<FORM name='frm' method='POST' action='./update.do'>
						<div class='table'>
							<table class='table' >
								<tr>
									<th>No.</th>
									<td>${dto.ca_no }</td>
								</tr>
								<tr>
									<th>신청자</th>
									<td>${dto.ca_id }</td>
								</tr>
								<tr>
									<th>금액</th>
									<td>${dto.ca_price }원</td>
								</tr>
								<tr>
									<th>소요일</th>
									<td>${dto.ca_date }일</td>
								</tr>
								<tr>
									<th>한마디</th>
									<td>${dto.ca_memo }</td>
								</tr>
								<tr>
									<th>신청일</th>
									<td>${dto.ca_newdate }</td>
								</tr>	<tr>
									<th>채택여부</th>
									<td>
									<c:choose>
									<c:when test="${dto.ca_select=='N' }"> 미채택
									</c:when>
									<c:when test="${dto.ca_select=='Y' }"> 채택
									</c:when>
									</c:choose>
									
									</td>
								</tr>
							</table>
						</div>
						<div class='bottom' style="float: right;">
							<input type='button' value='수정'
								onclick="location.href='./update.do?ca_no=${dto.ca_no }'">
							<input type='button' value='목록'
								onclick="location.href='./list.do'"> 
							<input type='button' value='삭제'
								onclick="location.href='./delete.do?ca_no=${dto.ca_no }'">
						</div>

					</FORM>
	
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>