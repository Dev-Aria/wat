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
								<th style="text-align: center;">번호</th>
								<th style="text-align: center;">신청자</th>
								<th style="text-align: center;">금액</th>
								<th style="text-align: center;">소요일</th>
								<th style="text-align: center;">한마디</th>
								<th style="text-align: center;">신청일</th>
								<th style="text-align: center;">채택여부</th>
							</tr>

							<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.ca_no }</td>
									<td><a href="#포트폴리오">${dto.ca_id }</a></td>
									<td>${dto.ca_price }원</td>
									<td>${dto.ca_date }일</td>
									<td><a
										href="../chiefapplicant/read.do?ca_no=${dto.ca_no }">${dto.ca_memo }</a></td>
									<td>${dto.ca_newdate }</td>
									<td>
									<c:choose>
									<c:when test="${dto.ca_select=='N' }"> 미채택
									</c:when>
									<c:when test="${dto.ca_select=='Y' }"> 채택
									</c:when>
									</c:choose></td>
								</tr>
							</c:forEach>

						</TABLE>

					</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>