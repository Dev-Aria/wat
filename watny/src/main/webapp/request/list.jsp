<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

					<h3 style="text-align: center;">프로젝트의뢰 리스트</h3>
					<FORM name='frm' method='POST' action='./list.do'>
						<TABLE class='table' style="text-align: center;">
							<tr>
								<th style="text-align: center;">번호</th>
								<th style="text-align: center;">의뢰인</th>
								<th style="text-align: center;">제목</th>
								<th style="text-align: center;">등록일</th>
								<th style="text-align: center;">상태</th>
							</tr>

							<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.rq_no }</td>
									<td>${dto.rq_id }</td>
									<td><a href="./read.do?rq_no=${dto.rq_no }">${dto.rq_title }</a>
									</td>
									<td>${dto.rq_newdate }</td>
									<td><c:choose>
										<c:when test="${dto.rq_state==0 }"> 모집중 </c:when>
										<c:when test="${dto.rq_state==1 }"> 개발중 </c:when>
										<c:when test="${dto.rq_state==2 }"> 완료 </c:when>
										</c:choose>
									</td>
								</tr>
							</c:forEach>

						</TABLE>

						<DIV class='bottom' style="float: right;">
							<input type='button' class="btn btn-default" value='새글작성'
								onclick="location.href='./create.do'">
						</DIV>
					</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>