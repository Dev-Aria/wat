<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

					<h3 style="text-align: center;">팀장신청 리스트</h3>
					<FORM name='frm' method='POST' action='./list.do'>
						<TABLE class='table' style="text-align: center;">
							<tr>
								<th>번호</th>
								<th>신청자</th>
								<th>금액</th>
								<th>소요일</th>
								<th>한마디</th>
								<th>신청일</th>
							</tr>

							<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.ca_no }</td>
									<td><a href="#포트폴리오">${dto.ca_id }</a></td>
									<td>${dto.ca_price }</td>
									<td>${dto.ca_date }</td>
									<td><a
										href="../chiefapplicant/read.do?ca_no=${dto.ca_no }">${dto.ca_memo }</a></td>
									<td>${dto.ca_newdate }</td>
								</tr>
							</c:forEach>

						</TABLE>

					</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>