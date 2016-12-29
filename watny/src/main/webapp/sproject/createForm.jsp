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
					<h3 style="text-align: center;">스터디/프로젝트 팀원 모집글 작성</h3>
					<FORM name="frm" method="post" action="./create.do">

						<table class='table'>
							<tr>
								<th>구분</th>
								<td colspan="2"><select name="sp_code">
										<option value="S">스터디</option>
										<option value="P">프로젝트</option>
								</select></td>
							</tr>
							<tr>
								<th>제목</th>
								<td colspan="2"><input type="text" name="sp_title"
									size="20"></td>
							</tr>
							<tr>
								<th>내용</th>
								<td colspan="2"><textarea rows="10" cols="55"
										name="sp_content">개발에 관련된 세부 설명을 적어주시면 됩니다.
개발파트 중 ETC(기타)에 해당 하는 항목은 가장 아래에 기재해주세요.
					</textarea></td>
							</tr>
							<tr>
								<th>개발시작</th>
								<td colspan="2"><input type="text" name="sp_startdate"
									size="20"></td>
							</tr>
							<tr>
								<th>개발종료</th>
								<td colspan="2"><input type="text" name="sp_findate"
									size="20"></td>
							</tr>
							<tr>
								<th>입찰금액</th>
								<td>원</td>
							</tr>
							<tr>
								<th></th>
								<th>T.O(명)</th>
								<th>보수(%)</th>
							</tr>
							<tr>
								<th>DB</th>
								<td><input type="text" name="sp_dbcnt" size="20" value="0">명</td>
								<td><input type="text" name="sp_dbpay" size="20" value="0">%</td>
							</tr>
							<tr>
								<th>UI</th>
								<td><input type="text" name="sp_uicnt" size="20" value="0">명</td>
								<td><input type="text" name="sp_uipay" size="20" value="0">%</td>
							</tr>
							<tr>
								<th>BackEnd</th>
								<td><input type="text" name="sp_backcnt" size="20" value="0">명</td>
								<td><input type="text" name="sp_backpay" size="20" value="0">%</td>
							</tr>
							<tr>
								<th>Server</th>
								<td><input type="text" name="sp_servercnt" size="20" value="0">명</td>
								<td><input type="text" name="sp_serverpay" size="20" value="0">%</td>
							</tr>
							<tr>
								<th>ETC</th>
								<td><input type="text" name="sp_etccnt" size="20" value="0">명</td>
								<td><input type="text" name="sp_etcpay" size="20" value="0">%</td>
							</tr>
						</table>

						<DIV class='bottom'>
							<input type='submit' value='등록'> <input type='button'
								value='목록' onclick="location.href='./list.do'">
						</DIV>
					</FORM>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>