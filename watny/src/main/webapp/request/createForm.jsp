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
<h3 style="text-align: center;">프로젝트 의뢰글 작성</h3>
<FORM name="frm" method="post" action="./create.do">

	<table class='table'>
		<tr>
			<th>의뢰인</th>
			<td>세션아이디</td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="rq_title" size="50"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="2">
			<textarea rows="10" cols="55" name="rq_content">세부 설명을 적어주시면 됩니다.
기준 금액/소요일/개발일정 등						
					</textarea></td>
		</tr>
		<tr>
			<th>템플릿</th>
			<td></td>
		</tr>
		<tr>
			<th>모집 시작</th>
			<td>의뢰글을 등록하는 날짜로 자동 등록됩니다.</td>
		</tr>
		<tr>
			<th>모집 마감</th>
			<td colspan="2"><input type="text" id="rq_enddate" name="rq_enddate" size=8 readonly> 
			<img id=calendar_img src="../images/calendar.png" height=30
				onclick="calendar1()"></td>
		</tr>
		<tr>
			<th>모집상태</th>
			<td>모집중으로 자동 등록됩니다.</td>
		</tr>
	</table>

	<DIV class='bottom' style="float: right;">
		<input type='submit' class="btn btn-default" value='등록'
			onclick="return saveContent();">
	</DIV>
</FORM>


<script type="text/javascript" src="../js/calendar.js"></script>

<script>
	//달력 팝업	
	function calendar1() {

		var sx = parseInt(screen.width);
		var sy = parseInt(screen.height);
		var x = (sx / 2) + 50;
		var y = (sy / 2) - 25;
		
		var win = window.open("../calendar/calendar1_request.jsp", "calendarwin",
				"width=420, height=300");
		
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