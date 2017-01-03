<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

					<h3 style="text-align: center;">스터디/프로젝트 팀원 모집</h3>
					<FORM name='frm' method='POST' action='./list.do'>
						<TABLE class='table' style="text-align: center;">
							<tr>
								<th>유형</th>
								<th>No.</th>
								<th>제목</th>
								<th>팀장</th>
								<th>개발시작</th>
								<th>개발종료</th>
								<th>DB</th>
								<th>UI</th>
								<th>BackEnd</th>
								<th>Server</th>
								<th>ETC</th>
								<th>상태</th>
								<th>모집시작</th>
								<th>모집종료</th>
							</tr>

							<c:forEach var="dto" items="${list }">
								<tr>
									<td><c:choose>
										<c:when test="${dto.sp_code=='S' }"> 스터디 </c:when>
										<c:when test="${dto.sp_code=='P' }"> 프로젝트 </c:when>
										</c:choose></td>
									<td>${dto.sp_no }</td>
									<c:if test="${dto.sp_code=='S' }">									
									<td><a href="./read_study.do?sp_no=${dto.sp_no }">${dto.sp_title }</a>
									</td>
									</c:if>
									<c:if test="${dto.sp_code=='P' }">									
									<td><a href="./read.do?sp_no=${dto.sp_no }">${dto.sp_title }</a>
									</td>
									</c:if>
									<td>${dto.sp_id }</td>
									<td>${dto.sp_startdate }</td>
									<td>${dto.sp_findate }</td>
									<td>${dto.sp_dbcnt }</td>
									<td>${dto.sp_uicnt }</td>
									<td>${dto.sp_backcnt }</td>
									<td>${dto.sp_servercnt }</td>
									<td>${dto.sp_etccnt }</td>
									<td><c:choose>
										<c:when test="${dto.sp_state==0 }"> 모집중 </c:when>
										<c:when test="${dto.sp_state==1 }"> 개발중 </c:when>
										<c:when test="${dto.sp_state==2 }"> 완료 </c:when>
										</c:choose></td>
									<td>${dto.sp_newdate }</td>
									<td>${dto.sp_enddate }</td>
								</tr>
							</c:forEach>

						</TABLE>

						<DIV class='bottom' style="float: right;">
							<input type='button' class="btn btn-default" value='새글작성'
								onclick="location.href='./create_study.do?'">
						</DIV>
					</FORM>

<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>