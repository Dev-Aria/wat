<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sProLeftTemp.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- body start -------------------------------------->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/daumOpenEditor/css/editor.css"
	charset="utf-8">
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/daumOpenEditor/js/editor_loader.js"></script>
<script src="../js/jquery.js"></script>
<h3 style="text-align: center;">스터디 팀원 모집 공고 수정</h3>
<FORM name='frm' method='POST' action='./update_study.do?sp_no=${dto.sp_no}'>
	<div>
		<table class='table'>
			<tr>
				<th>No.</th>
				<td colspan="5">${dto.sp_no }</td>
			</tr>
			<tr>
				<th>구분</th>
				<td colspan="5"><c:choose>
						<c:when test="${dto.sp_code=='S' }"> 스터디
									</c:when>
						<c:when test="${dto.sp_code=='P' }"> 프로젝트
									</c:when>
					</c:choose></td>
			</tr>
			<tr>
				<th>팀장</th>
				<td colspan="5">${dto.sp_id }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="5"><input type="text" name="sp_title" size="50"
					value="${dto.sp_title }"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="5"><textarea rows="10" cols="55" name="sp_content">${dto.sp_content }
					</textarea></td>
			</tr>

			<tr>
				<th>개발기간</th>
				<td colspan="5"><input type="text" id="sp_startdate"
					name="sp_startdate" size=8 value=${dto.sp_startdate } readonly>
					~<input type="text" id="sp_findate" name="sp_findate" size=8
					value=${dto.sp_findate } readonly> <img id=calendar_img
					src="../images/calendar.png" height=30 onclick="calendar2()">
				</td>
			</tr>
			<tr>
				<th rowspan="5">T.O(명)</th>
				<th style="text-align: center;">DB</th>
				<th style="text-align: center;">UI</th>
				<th style="text-align: center;">BackEnd</th>
				<th style="text-align: center;">Server</th>
				<th style="text-align: center;">ETC</th>
			</tr>
			<tr>
				<td style="text-align: center;"><input type="text"
					name="sp_dbcnt" size="1" value=${dto.sp_dbcnt }
					style="text-align: center;"></td>
				<td style="text-align: center;"><input type="text"
					name="sp_uicnt" size="1" value=${dto.sp_uicnt }
					style="text-align: center;"></td>
				<td style="text-align: center;"><input type="text"
					name="sp_backcnt" size="1" value=${dto.sp_backcnt }
					style="text-align: center;"></td>
				<td style="text-align: center;"><input type="text"
					name="sp_servercnt" size="1" value=${dto.sp_servercnt }
					style="text-align: center;"></td>
				<td style="text-align: center;"><input type="text"
					name="sp_etccnt" size="1" value=${dto.sp_etccnt }
					style="text-align: center;"></td>
			</tr>
			<tr>
				<th>모집시작</th>
				<td colspan="5">${dto.sp_newdate }</td>
			</tr>
			<tr>
				<th>모집마감</th>
				<td colspan="5"><input type="text" id="sp_enddate"
					name="sp_enddate" size=8 readonly value=${dto.sp_enddate }>
					<img id=calendar_img src="../images/calendar.png" height=30
					onclick="calendar1()"></td>
			</tr>
		</table>
	</div>
	<div class='bottom' style="float: right;">
		<input type='submit' class="btn btn-default" value='수정진행'
			onclick="return saveContent();">
	</div>
</FORM>

<script type="text/javascript" src="../js/calendar.js"></script>

<script>
	//달력 팝업
	function calendar2() {

		var sx = parseInt(screen.width);
		var sy = parseInt(screen.height);
		var x = (sx / 2) + 50;
		var y = (sy / 2) - 25;

		var win = window.open("../calendar/calendar2_sproject.jsp",
				"calendarwin", "width=420, height=300");

		win.moveTo(x, y); //화면이동
	}

	function calendar1() {

		var sx = parseInt(screen.width);
		var sy = parseInt(screen.height);
		var x = (sx / 2) + 50;
		var y = (sy / 2) - 25;

		var win = window.open("../calendar/calendar1_sproject.jsp",
				"calendarwin", "width=420, height=300");

		win.moveTo(x, y); //화면이동
	}
</script>
<script>
	var config = {
		txHost : '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
		txPath : '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
		txService : 'sample', /* 수정필요없음. */
		txProject : 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
		initializedId : "", /* 대부분의 경우에 빈문자열 */
		wrapper : "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
		form : 'msgfrm' + "", /* 등록하기 위한 Form 이름 */
		txIconPath : "${ pageContext.request.contextPath }/daumOpenEditor/images/icon/editor/", /* 에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
		txDecoPath : "${ pageContext.request.contextPath }/daumOpenEditor/images/deco/contents/", /* 본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
		canvas : {
			exitEditor : {
			/*
			desc:'빠져 나오시려면 shift+b를 누르세요.',
			hotKey: {
			    shiftKey:true,
			    keyCode:66
			},
			nextElement: document.getElementsByTagName('button')[0]
			 */
			},
			styles : {
				color : "#123456", /* 기본 글자색 */
				fontFamily : "굴림", /* 기본 글자체 */
				fontSize : "10pt", /* 기본 글자크기 */
				backgroundColor : "#fff", /*기본 배경색 */
				lineHeight : "1.5", /*기본 줄간격 */
				padding : "8px" /* 위지윅 영역의 여백 */
			},
			showGuideArea : false
		},
		events : {
			preventUnload : false
		},
		sidebar : {
			attachbox : {
				show : true,
				confirmForDeleteAll : true
			},
			/* 이미지첨부 관련 추가 config */
			attacher : {
				image : {
					features : {
						left : 250,
						top : 65,
						width : 400,
						height : 190,
						scrollbars : 0
					}, //팝업창 사이즈
					popPageUrl : '${pageContext.request.contextPath}/daumOpenEditor/imagePopup' //팝업창 주소
				},
				file : {
					features : {
						left : 250,
						top : 65,
						width : 400,
						height : 190,
						scrollbars : 0
					}, //팝업창 사이즈
					popPageUrl : '${pageContext.request.contextPath}/daumOpenEditor/filePopup' //팝업창 주소
				}
			},
			capacity : {
				maximum : 5 * 1024 * 1024
			//최대 첨부 용량 (5MB)
			}
		/* 이미지첨부 관련 추가 config */
		},
		size : {
			contentWidth : 400
		/* 지정된 본문영역의 넓이가 있을 경우에 설정 */
		}
	};

	EditorJSLoader.ready(function(Editor) {
		var editor = new Editor(config);
	});

	function validForm(editor) {
		var validator = new Trex.Validator();
		var content = editor.getContent();
		if (!validator.exists(content)) {
			alert('내용을 입력하세요');
			return false;
		}
		return true;
	}
	function setForm(editor) {
		var form = editor.getForm();
		var content = editor.getContent();
		/*  var textarea = document.createElement('textarea');
		 //textarea를 생성하여 해당태그에 에디터 입력값들을 신규생성 textarea에 담는다
		 textarea.name = 'content'; */
		document.getElementById("msg_content").value = content;
		// form.createField(textarea);
		return true;
	}

	function saveContent() {
		Editor.save(); // 이 함수를 호출하여 글을 등록하면 된다.
	}
</script>
<!-- body end -------------------------------------->
<%@ include file="../footer.jsp"%>