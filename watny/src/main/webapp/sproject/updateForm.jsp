<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->
<div class="section">
	<div class="container">
		<div class="col-md-2">
			<div class="span3 sidebar">
				<h4>프로젝트</h4>
				<ul class="nav nav-tabs nav-stacked">
					<li><a href="../sproject/list.do" style="background-color: #7ED2FF; color: #000000;">팀원모집공고</a></li>
					<li><a href="../request/list.do">프로젝트의뢰</a></li>
					<li><a href="#">프로젝트판매</a></li>
					<li><a href="#">프로젝트완료</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-7">
			<div class="row-fluid" id="content">
				<div class="span8 main">
					<h3 style="text-align: center;">스터디/프로젝트 팀원 모집 공고 수정</h3>
					<FORM name='frm' method='POST'
						action='./update.do?sp_no=${dto.sp_no}'>
						<div>
							<table class='table' >
								<tr>
									<th>구분</th>
									<td><select name="sp_code">
											<option value="S">스터디</option>
											<option value="P">프로젝트</option>
									</select></td>
								</tr>
								<tr>
									<th>번호</th>
									<td>${dto.sp_no }</td>
								</tr>
								<tr>
									<th>팀장</th>
									<td>${dto.sp_id }</td>
								</tr>
								<tr>
									<th>제목</th>
									<td><input type="text" name="sp_title" size="20"
										value=${dto.sp_title }></td>
								</tr>
								<tr>
									<th>내용</th>
									<td><textarea rows="10" cols="55" name="sp_content">${dto.sp_content }</textarea></td>
								</tr>
								<tr>
									<th>개발시작</th>
									<td><input type="text" name="sp_startdate" size="20"
										value=${dto.sp_startdate }></td>
								</tr>
								<tr>
									<th>개발종료</th>
									<td><input type="text" name="sp_findate" size="20"
										value=${dto.sp_findate }></td>
								</tr>
								<tr>
									<th colspan="2" style="text-align: center;">T.O(명)</th>
								</tr>
								<tr>
									<th>DB</th>
									<td><input type="text" name="sp_dbcnt" size="20"
										value=${dto.sp_dbcnt }>명</td>
								</tr>
								<tr>
									<th>UI</th>
									<td><input type="text" name="sp_uicnt" size="20"
										value=${dto.sp_uicnt }>명</td>
								</tr>
								<tr>
									<th>BackEnd</th>
									<td><input type="text" name="sp_backcnt" size="20"
										value=${dto.sp_backcnt }>명</td>
								</tr>
								<tr>
									<th>Server</th>
									<td><input type="text" name="sp_servercnt" size="20"
										value=${dto.sp_servercnt }>명</td>
								</tr>
								<tr>
									<th>ETC</th>
									<td><input type="text" name="sp_etccnt" size="20"
										value=${dto.sp_etccnt }>명</td>
								</tr>
								<tr>
									<th colspan="2" style="text-align: center;">보수(%)</th>
								</tr>
								<tr>
									<th>입찰금액</th>
									<td>${dto.sp_pay }원</td>
								</tr>
								<tr>
									<th>DB</th>
									<td><input type="text" name="sp_dbpay" size="20"
										value=${dto.sp_dbpay }>%</td>
								</tr>
								<tr>
									<th>UI</th>
									<td><input type="text" name="sp_uipay" size="20"
										value=${dto.sp_uipay }>%</td>
								</tr>
								<tr>
									<th>BackEnd</th>
									<td><input type="text" name="sp_backpay" size="20"
										value=${dto.sp_backpay }>%</td>
								</tr>
								<tr>
									<th>Server</th>
									<td><input type="text" name="sp_serverpay" size="20"
										value=${dto.sp_serverpay }>%</td>
								</tr>
								<tr>
									<th>ETC</th>
									<td><input type="text" name="sp_etcpay" size="20"
										value=${dto.sp_etcpay }>%</td>
								</tr>
								<tr>
									<th>모집시작</th>
									<td>${dto.sp_newdate }</td>
								</tr>
								<tr>
									<th>모집마감</th>
									<td></td>
								</tr>
							</table>
						</div>
						<div class='bottom'>
							<input type='submit' value='수정진행'> <input type='button'
								value='목록'
								onclick="location.href='./read.do?sp_no=${dto.sp_no}'">
						</div>
					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>