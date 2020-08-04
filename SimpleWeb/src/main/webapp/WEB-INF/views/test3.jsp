<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" id="meta_og_description" content="생활감성채널 10x10(텐바이텐)은 디자인소품, 아이디어상품, 독특한 인테리어 및 패션 상품 등으로 고객에게 즐거운 경험을 주는 디자인전문 쇼핑몰 입니다." />
	<meta name="keywords" content="커플, 선물, 커플선물, 감성디자인, 디자인, 아이디어상품, 디자인용품, 판촉, 스타일, 10x10, 텐바이텐, 큐브" />
	<meta name="classification" content="비즈니스와 경제, 쇼핑과 서비스(B2C, C2C), 선물, 특별상품" />
	<meta name="application-name" content="텐바이텐" />
	<meta name="msapplication-task" content="name=텐바이텐;action-uri=http://www.10x10.co.kr/;icon-uri=/icons/10x10_140616.ico" />
	<meta name="msapplication-tooltip" content="생활감성채널 텐바이텐" />
	<meta name="msapplication-navbutton-color" content="#FFFFFF" />
	<meta name="msapplication-TileImage" content="/lib/ico/mstileLogo144.png"/>
	<meta name="msapplication-TileColor" content="#c91314"/>
	<meta name="msapplication-starturl" content="/" />
	<meta name="format-detection" content="telephone=no" />
	<meta property="og:title" id="meta_og_title" content="텐바이텐 10X10 : 회원가입 STEP.01" />
	<meta property="og:type" content="website" />
	<meta property="og:image" content="http://www.10x10.co.kr/lib/ico/10x10TouchIcon_150303.png" />
	<link rel="image_src" href="http://www.10x10.co.kr/lib/ico/10x10TouchIcon_150303.png" />

	<link rel="SHORTCUT ICON" href="http://fiximage.10x10.co.kr/icons/10x10_140616.ico" />
	<link rel="apple-touch-icon" href="/lib/ico/10x10TouchIcon_150303.png" />
	<link rel="search" type="application/opensearchdescription+xml" href="/lib/util/10x10_brws_search.xml" title="텐바이텐 상품검색" />
	<link rel="alternate" type="application/rss+xml" href="/shoppingtoday/shoppingchance_rss.asp" title="텐바이텐 신상품소식 구독" />
	<link rel="alternate" type="application/rss+xml" href="/just1day/just1day_rss.asp" title="텐바이텐 Just 1Day 구독" />
		<title>텐바이텐 10X10 : 회원가입 STEP.01</title>
	<link rel="stylesheet" type="text/css" href="/lib/css/default.css" />
	<link rel="stylesheet" type="text/css" href="/lib/css/preVst/common_ssl.css" />
	<link rel="stylesheet" type="text/css" href="/lib/css/preVst/content_ssl.css?v=1.11" />
	<link rel="stylesheet" type="text/css" href="/lib/css/preVst/mytenten_ssl.css" />
	<!--[if IE]>
		<link rel="stylesheet" type="text/css" href="/lib/css/preVst/ie.css" />
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="/lib/css/commonV18_ssl.css?v=1.05" />
	<link rel="stylesheet" type="text/css" href="/lib/css/productV15.css" />
	<link rel="stylesheet" type="text/css" href="/lib/css/contentV15.css" />
	<link rel="stylesheet" type="text/css" href="/lib/css/mytentenV15_ssl.css" />
	<link rel="stylesheet" href="https://js.appboycdn.com/web-sdk/1.6/appboy.min.css" />
	<!--[if lt IE 9]>
		<script src="/lib/js/respond.min.js"></script>
	<![endif]-->
	<script type="text/javascript" src="/lib/js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="/lib/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script type="text/javascript" src="/lib/js/jquery.slides.min.js"></script>
	<script type="text/javascript" src="/lib/js/swiper-2.1.min.js"></script>
	<script type="text/javascript" src="/lib/js/common.js?v=1.1"></script>
	<script type="text/javascript" src="/lib/js/tenbytencommon.js?v=1.1"></script>
	<script type="text/javascript" src="/lib/js/keyMovePage.js"></script>	
	<script type="text/javascript" src="/lib/js/buildV63.js"></script>
	<script type="text/javascript" src="/lib/js/amplitude.js"></script>
	<script type="text/javascript" src="https://cdn.branch.io/branch-2.47.1.min.js"></script>
<script type="text/javascript" src="/lib/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script language="javascript" SRC="/lib/js/confirm.js"></script>
<script type="text/javascript">
$(function() {
	$('.flexFormV17 .txtInp').each(function() {
		var defaultVal = this.value;
		$(this).focus(function() {
			if(this.value == defaultVal){
				$(this).prev("label").addClass("hide");
			}
		});
		$(this).blur(function(){
			if(this.value == ''){
				$(this).prev("label").removeClass("hide");
			}
		});
	});

	
		var maskHeight = $(document).height();
		var maskWidth = $(document).width();
		$('#mask').css({'width':maskWidth,'height':maskHeight});
		$('#boxes').show();
		$('#mask').show();
		$('#mask').click(function(){
			$(".joinLayerV17").hide();
		});
	

	$("#memId").focus();

	
		tagScriptSend('', 'signupstep1', '', 'amplitude');
		
});

function fnJoinLayerClose(){
	$(".joinLayerV17").hide();
	$('#mask').hide();
}
$(function(){
	$("input[type='checkbox']:not('#agreeUseAdult')").click(function(){
		if($(this).attr("id")=="policyY"){
			$("#agreeUse,#agreePrivate,#agreeUseAdult").attr("checked",$(this).is(":checked"));
		} else {
			$("#policyY").attr("checked",$("#agreeUse").is(":checked")&&$("#agreePrivate").is(":checked"));
		}
	});
});

var chkID = false, chkAjaxID = false;
var chkEmail = false, chkAjaxEmail = false;

//아이디 중복확인
function DuplicateIDCheck(comp){
	var id;
	id = comp.value;

	if (id == ''){
		return;
	}else if((id.length<3) || (id.length>16)){
//		alert('아이디는 공백없는 3~15자의 영문/숫자 조합입니다.');
//		comp.focus();
		$("#checkMsgID").html("<font class='crRed'>3~15자의 영문/숫자 조합으로 입력</font>");
		chkID = false;
	}else{
		var rstStr = $.ajax({
			type: "POST",
			url: "ajaxIdCheck.asp",
			data: "id="+id,
			dataType: "text",
			async: false
		}).responseText;

		if (rstStr == "ERR"){
			$("#checkMsgID").removeClass("useY");
			$("#checkMsgID").addClass("useN");
			$("#checkMsgID").html("오류가 발생했습니다.");
			chkID = false;
//			document.myinfoForm.txuserid.focus();
		}else if (rstStr == "3"){
			$("#checkMsgID").removeClass("useY");
			$("#checkMsgID").addClass("useN");
			$("#checkMsgID").html("특수문자나 한글/한문은 사용불가능합니다.");
			chkID = false;
//			document.myinfoForm.txuserid.focus();
		}else if(rstStr == "2"){
			$("#checkMsgID").removeClass("useY");
			$("#checkMsgID").addClass("useN");
			$("#checkMsgID").html("사용하실 수 없는 아이디입니다.");
			chkID = false;
//			document.myinfoForm.txuserid.focus();
		}else{
			$("#checkMsgID").removeClass("useN");
			$("#checkMsgID").addClass("useY");			
			$("#checkMsgID").html("사용하실 수 있습니다.");
			chkID = true;
		}
		chkAjaxID = true;
	}
}

function jsChkID(){
	if(chkID){
		$("#checkMsgID").removeClass("useY");
		$("#checkMsgID").addClass("useN");	
		$("#checkMsgID").html("3~15자의 영문/숫자를 조합하여 입력");
		chkID = false;
	}
}

function jsChkEmail(){
	var email, frm = document.myinfoForm;
	chkEmail=true;

	if( frm.txEmail2.value == "etc"){
	    email = frm.txEmail1.value + '@' + frm.selfemail.value;
	}else{
	    email = frm.txEmail1.value + frm.txEmail2.value;
	}

	if (email == ''){
		return;
	}else if (!check_form_email(email)){
		$("#checkMsgEmail").removeClass("useY");
		$("#checkMsgEmail").addClass("useN");
		$("#checkMsgEmail").html("잘못된 이메일 입니다.");
		chkEmail = false;
		return ;
	}else{
		var rstStr = $.ajax({
			type: "POST",
			url: "ajaxEmailCheck.asp",
			data: "email="+email,
			dataType: "text",
			async: false
		}).responseText;

		if (rstStr == "ERR"){
			$("#checkMsgEmail").removeClass("useY");
			$("#checkMsgEmail").addClass("useN");
			$("#checkMsgEmail").html("오류가 발생했습니다.");
			chkEmail = false;
		}else if (rstStr == "3"){
			$("#checkMsgEmail").removeClass("useY");
			$("#checkMsgEmail").addClass("useN");
			$("#checkMsgEmail").html("잘못된 이메일 입니다.");
			chkEmail = false;
		}else if(rstStr == "2"){
			$("#checkMsgEmail").removeClass("useY");
			$("#checkMsgEmail").addClass("useN");
			$("#checkMsgEmail").html("이미 가입된 이메일 입니다.");
			chkEmail = false;
		}else{
			$("#checkMsgEmail").removeClass("useN");
			$("#checkMsgEmail").addClass("useY");
			$("#checkMsgEmail").html("사용하실 수 있습니다.");
			chkEmail = true;
		}
		chkAjaxEmail = true;
	}
	
}

//소문자로 변환; index를 지정할 경우 index길이만큼만 소문자로 변환
function isToLowerCase(obj, index){
	if(typeof(index) != 'undefined' && index != ""){
		obj.value =
			obj.value.substring(0, index).toLowerCase()
			+ obj.value.substring(index, obj.value.length);
		return;
	}
	obj.value = obj.value.toLowerCase();
}

// 이벤트 키코드 체크
function keyCodeCheckID(event,id) {
	if(event.keyCode == 13){
		DuplicateIDCheck(id);
	}
}
function keyCodeCheckEmail(event) {
	if(event.keyCode == 13){
		DuplicateEmailCheck();
	}
}

// 이메일 폼 양식
function NewEmailChecker(){
	var frm = document.myinfoForm;
	if( frm.txEmail2.value == "etc")  {
		frm.selfemail.style.display = '';
		frm.selfemail.focus();
	}else{
		frm.selfemail.style.display = 'none';
	}
	jsChkEmail();
	return;
}

//이메일 중복확인
function DuplicateEmailCheck(){
	var email, frm = document.myinfoForm;
	
	if (frm.txEmail1.value == ""){
		$("#checkMsgEmail").removeClass("useY");
		$("#checkMsgEmail").addClass("useN");
		$("#checkMsgEmail").html("이메일 앞부분을 입력해주세요.");
		chkEmail = false;
	}
	if (frm.txEmail1.value.indexOf('@')>-1){
		$("#checkMsgEmail").removeClass("useY");
		$("#checkMsgEmail").addClass("useN");
		$("#checkMsgEmail").html("@를 제외한 앞부분만 입력해주세요.");
		chkEmail = false;
	}

	if (frm.txEmail2.value == ""){
		$("#checkMsgEmail").removeClass("useY");
		$("#checkMsgEmail").addClass("useN");
		$("#checkMsgEmail").html("이메일 도메인을 선택해주시거나 직접 입력해주세요");
		chkEmail = false;
	}

	if ((frm.txEmail2.value == "etc")&&(frm.selfemail.value.length<1)){
		$("#checkMsgEmail").removeClass("useY");
		$("#checkMsgEmail").addClass("useN");
		$("#checkMsgEmail").html("이메일 도메인을 선택해주시거나 직접 입력해주세요");
		chkEmail = false;
	}
}

function TnTabNumber(thisform,target,num) {
	if (eval("document.myinfoForm." + thisform + ".value.length") == num) {
		eval("document.myinfoForm." + target + ".focus()");
	}
}

// 본인인증 휴대폰SMS 발송
function sendSMS() {
	var frm = document.myinfoForm;
	if(!chkID){
		if((!chkAjaxID) && frm.txuserid.value.length>3 && frm.txuserid.value.length<16) {}
		else {
			alert("아이디를 확인해주세요");
		   	DuplicateIDCheck(frm.txuserid);
		   	frm.txuserid.focus();
		   	return;
		}
	}

//	if (jsChkBlank(frm.txCell1.value)){
//	    alert("휴대전화 번호를 입력해주세요");
//		frm.txCell1.focus();
//		return ;
//	}
//	if (!jsChkNumber(frm.txCell1.value)){
//	    alert("휴대전화 번호는 공백없는 숫자로 입력해주세요.");
//		frm.txCell1.focus();
//		return ;
//	}
	
	if (jsChkBlank(frm.txCell1.value) || jsChkBlank(frm.txCell2.value) || jsChkBlank(frm.txCell3.value)){
	    alert("휴대전화 번호를 입력해주세요");
		frm.txCell1.focus();
		return ;
	}

	if (!jsChkNumber(frm.txCell1.value) || !jsChkNumber(frm.txCell2.value) || !jsChkNumber(frm.txCell3.value)){
	    alert("휴대전화 번호는 공백없는 숫자로 입력해주세요.");
		frm.txCell1.focus();
		return ;
	}
	
	var usrph = frm.txCell1.value + "-" + frm.txCell2.value + "-" + frm.txCell3.value;

//	var usrph = frm.txCell1.value + "-" + frm.txCell2.value + "-" + frm.txCell3.value;
	var rstStr = $.ajax({
		type: "POST",
		url: "ajaxSendConfirmSMS2015.asp",
		data: "id="+frm.txuserid.value+"&ph="+usrph+"",
		dataType: "text",
		async: false
	}).responseText;

	$("#sendSMSnumber").empty().html(rstStr);
	if(rstStr.length == 31){
		$("#certNum").val("").focus();
	}
	_gaq.push(['_trackPageview', '/member/ajaxSendConfirmSMS2015.asp']);
}

function fnConfirmSMS() {
	var frm = document.myinfoForm;
	if(frm.crtfyNo.value.length<6) {
		alert("휴대폰으로 받으신 인증번호를 정확히 입력해주세요.");
		frm.crtfyNo.focus();
		return;
	}
	
	var rstStr = $.ajax({
		type: "POST",
		url: "ajaxCheckConfirmSMS2015.asp",
		data: "id="+frm.txuserid.value+"&chkFlag=N&key="+frm.crtfyNo.value,
		dataType: "text",
		async: false
	}).responseText;
	
	if (rstStr == "1"){
		$("#smsRstMsg").removeClass("useN");
		$("#smsRstMsg").addClass("useY");
		$("#smsRstMsg").html("인증이 완료되었습니다.");
		$("#certNum").attr("readonly", true);
		$("#txCell1").attr("readonly", true);
		$("#txCell2").attr("readonly", true);
		$("#txCell3").attr("readonly", true);
		$("#smsButtonn1").hide();
		$("#smsButtonn2").hide();
		$("#sendSMSnumber").hide();
	}else if (rstStr == "2"){
		$("#smsRstMsg").removeClass("useY");
		$("#smsRstMsg").addClass("useN");
		$("#smsRstMsg").html("잘못된 인증번호 입니다.");
	}else{
		$("#smsRstMsg").removeClass("useY");
		$("#smsRstMsg").addClass("useN");
		$("#smsRstMsg").html("인증번호를 입력해주세요.");
		alert("처리중 오류가 발생했습니다."+rstStr);
	}
}

function FnJoin10x10(){
	var frm = document.myinfoForm;
	if(!chkID){
		if((!chkAjaxID) && frm.txuserid.value.length>3 && frm.txuserid.value.length<16) {}
		else {
			alert("아이디를 확인해주세요");
		   	DuplicateIDCheck(frm.txuserid);
		   	frm.txuserid.focus();
		   	return;
		}
	}

	if (jsChkBlank(frm.txpass1.value)){
		$("#pwdCheckResult12").removeClass("useY");
		$("#pwdCheckResult12").addClass("useN");
		$("#pwdCheckResult12").html("비밀번호를 입력하세요");
		frm.txpass1.focus();
		return ;
	}

	if (frm.txpass1.value.length < 8 || frm.txpass1.value.length > 16){
		$("#pwdCheckResult12").removeClass("useY");
		$("#pwdCheckResult12").addClass("useN");
		$("#pwdCheckResult12").html("비밀번호는 공백없이 8~16자입니다.");
		frm.txpass1.focus();
		return ;
	}

	if (frm.txpass1.value==frm.txuserid.value){
		alert('아이디와 동일한 패스워드는 사용하실 수 없습니다.');
		frm.txpass1.focus();
		return;
	}

	if (!fnChkComplexPassword(frm.txpass1.value)) {
		alert('패스워드는 영문/숫자/특수문자 중 두 가지 이상의 조합으로 입력해주세요.');
		frm.txpass1.focus();
		return;
	}

	if (frm.txpass2.value == ""){
		alert("비밀번호를 확인해주세요");
		frm.txpass2.focus();
		return ;
	}
	if (frm.txpass1.value!=frm.txpass2.value){
		alert("비밀번호가 일치하지 않습니다.");
		frm.txpass1.focus();
		return ;
	}
	
	if (frm.txName.value == ""){
		alert("성명을 입력하세요");
		frm.txName.focus();
		return ;
	}
	if (GetByteLength(frm.txName.value) > 30){
		alert("성명은 한글 15자, 영문 30자 이내 입니다.");
		frm.txName.focus();
		return ;
	}

//	if (!frm.txSex[0].checked&&!frm.txSex[1].checked){
//		alert("성별을 선택 해주세요");
//		frm.txSex[0].focus();
//		return ;
//	}

//	if(!chkEmail){
//		alert("이메일을 확인해주세요.");
//		frm.txEmail1.focus();
//		return;
//	}
	if (frm.txEmail1.value == ""){
		alert("이메일 앞부분을 입력해주세요");
		frm.txEmail1.focus();
		return ;
	}
	if (frm.txEmail1.value.indexOf('@')>-1){
	    alert("@를 제외한 앞부분만 입력해주세요...");
		frm.txEmail1.focus();
		return ;
	}
	if (frm.txEmail2.value == ""){
		alert("이메일 도메인을 선택해주시거나 직접 입력해주세요.");
		frm.txEmail2.focus();
		return ;
	}
	if ((frm.txEmail2.value == "etc")&&(frm.selfemail.value.length<1)){
	    alert("이메일 도메인을 선택해주시거나 직접 입력해주세요.");
		frm.selfemail.focus();
		return ;
	}
	if( frm.txEmail2.value == "etc"){
	    frm.usermail.value = frm.txEmail1.value + '@' + frm.selfemail.value;
	}else{
	    frm.usermail.value = frm.txEmail1.value + frm.txEmail2.value;
	}

	if (jsChkBlank(frm.txCell1.value) || jsChkBlank(frm.txCell2.value) || jsChkBlank(frm.txCell3.value)){
	    alert("휴대전화 번호를 입력해주세요");
		frm.txCell1.focus();
		return ;
	}

	if (!jsChkNumber(frm.txCell1.value) || !jsChkNumber(frm.txCell2.value) || !jsChkNumber(frm.txCell3.value)){
	    alert("휴대전화 번호는 공백없는 숫자로 입력해주세요.");
		frm.txCell1.focus();
		return ;
	}

	if($("#smsRstMsg").html() != "인증이 완료되었습니다."){
	    alert("휴대폰 인증이 완료되지 않았습니다.\n인증을 완료해주세요.");
		frm.crtfyNo.focus();
		return ;
	}

	if(!$("#agreeUse").is(":checked")) {
		alert("이용약관에 동의 해주세요.");
		$("#agreeUse").focus();
		return;
	}
	if(!$("#agreePrivate").is(":checked")) {
		alert("개인정보를 위한 이용자 동의사항에 동의 해주세요.");
		$("#agreePrivate").focus();
		return;
	}
	if(!$("#agreeUseAdult").is(":checked")) {
		alert("본인이 만14세 이상임을 확인 후 체크해주세요.");
		$("#agreeUseAdult").focus();
		return;
	}

	var emailchk = $("#tenMailY").is(":checked");
	var smschk = $("#tenSmsY").is(":checked");
    if(emailchk){
    	$("#tenMailY").val('Y');
    }else{
    	$("#tenMailY").val('N');  	
    }
    if(smschk){
    	$("#tenSmsY").val('Y');
    }else{
    	$("#tenSmsY").val('N');  	
    }

	var txBirthday1 = $("#txBirthday1 option:selected").val();
	var txBirthday2 = $("#txBirthday2 option:selected").val();
	var txBirthday3 = $("#txBirthday3 option:selected").val();
	if(txBirthday1=='0' || txBirthday2=='0' || txBirthday3=='0'){
		$("#txBirthday1 option:selected").val('1900');
		$("#txBirthday2 option:selected").val('1');
		$("#txBirthday3 option:selected").val('1');
	}

	if(!chkEmail){
		alert("이메일을 확인해주세요.");
		frm.txEmail1.focus();
		return;
	}

	var ret = confirm('텐바이텐 회원에 가입하시겠습니까?');
	if(ret){
		frm.submit();
	}
}

function chkMemPwd(){                                                                                                                                                                                                                                                                                                                                                                                                   
	var frm = document.myinfoForm;
	obj_pwdChk1 = document.getElementById("pwdCheckResult12");
	if(frm.txpass2.value !=null && frm.txpass2.value!= "" && frm.txpass2.value != "비밀번호 확인"){
		if(frm.txpass1.value != frm.txpass2.value){
			$("#pwdCheckResult12").removeClass("useY");
			$("#pwdCheckResult12").addClass("useN");
			$("#pwdCheckResult12").html("일치하지 않습니다.");
		}else{
			if (frm.txpass1.value.length < 8 || frm.txpass1.value.length > 16){
				$("#pwdCheckResult12").removeClass("useY");
				$("#pwdCheckResult12").addClass("useN");
				$("#pwdCheckResult12").html("비밀번호는 공백없이 8~16자입니다.");
				return ;
			}else{
				$("#pwdCheckResult12").removeClass("useN");
				$("#pwdCheckResult12").addClass("useY");
				$("#memPwtxt").html("");
				$("#pwdCheckResult12").html("사용하실 수 있습니다.");
			}
		}
	}
	if(frm.txpass2.value ==null || frm.txpass2.value== "" || frm.txpass2.value == "비밀번호 확인"){
		$("#pwdCheckResult12").hide();
	}
}


function inputLengthCheck(eventInput){
	var inputText = $(eventInput).val();
	var inputMaxLength = $(eventInput).prop("maxlength");
	var j = 0;
	var count = 0;
	for(var i = 0;i < inputText.length;i++) { 
		val = escape(inputText.charAt(i)).length; 
		if(val == 6){
			j++;
		}
		j++;
		if(j <= inputMaxLength){
			count++;
		}
	}
	if(j > inputMaxLength){
		$("#nameCheckResult").removeClass("useY");
		$("#nameCheckResult").addClass("useN");
		$("#nameCheckResult").html("한글 15자, 영문 30자까지 가능합니다.");
		$(eventInput).val(inputText.substr(0, count));
	}else{
		$("#nameCheckResult").html("");
	}
}

function fnPopSNSLogin(snsgb,wd,hi) {
	var snsbackpath = 'http://www.10x10.co.kr/shopping/category_prd.asp?itemid=2501196&utm_source=naver&utm_medium=organic&utm_campaign=shopping_w&term=nvshop_w&rdsite=nvshop_sp&NaPm=ct%3Dkdf4mots%7Cci%3D78d8ce8aae81f478d428b479eb13fe248d0f531d%7Ctr%3Dslsl%7Csn%3D219718%7Chk%3D6b2b59080453c2f3cfb705d5aed886d983879e2c';
	var popWidth  = wd;
	var popHeight = hi;
	var snspopHeight
	if (snsgb=="nv"){
		snspopHeight = "4"
	}else if (snsgb=="fb" || snsgb=="gl"){
		snspopHeight = "0.5"
	}else if (snsgb=="ka"){
		snspopHeight = "1"
	}
	var winWidth  = document.body.clientWidth;
	var winHeight = document.body.clientHeight;
	var winX      = window.screenX || window.screenLeft || 0;
	var winY      = window.screenY || window.screenTop || 0;
	var popupX = (winX + (winWidth - popWidth) / 2)-(wd / 4);
	var popupY = (winY + (winHeight - popHeight) / 2)- (hi / snspopHeight);
	var popup = window.open("https://www.10x10.co.kr/login/mainsnslogin.asp?snsdiv="+snsgb+"&pggb=id&snsjoingubun=ji&snsbackpath="+snsbackpath,"","width="+wd+", height="+hi+", left="+ popupX + ", top="+ popupY + ", screenX="+ popupX + ", screenY= "+ popupY);
}

</script>
</head>
<body>
<div class="wrap signupV17">
	
<script type="text/javascript" src="/lib/js/SearchAutoComplete.js"></script>
<script type="text/javascript">
var V_CURRENTYYYYMM = "2020-08-04";
</script>

<div id="boxes">
	<div id="mask" class="pngFix"></div>
	<div id="freeForm"></div>
	
</div>

<div id="lyrPop">
	
</div>

<div id="hBoxes"></div>

<div class="version-noti" id="version-noti" style="display:none;">
	<div class="inner">
		<p>
			구버전의 Internet Explorer로 접속하셨습니다. <strong>텐바이텐은 IE 11에서 최적화</strong>되어 보여집니다.<br/><em>편리한 사이트 이용 및 보안성 향상을 위해 최신 브라우저로의 업그레이드를 권장합니다.</em>
		</p>
		<span><img src="http://fiximage.10x10.co.kr/web2017/main/img_noti.png" alt="" /></span>
		<button type="button" class="btn-close" onclick="closeWin('ieversion', 1); return false;"><img src="http://fiximage.10x10.co.kr/web2017/main/btn_close.png" alt="닫기" /></button>
	</div>
</div>


			<script>
			// 창열기
			function openWin(winName){
				if(getCookie(winName) == "done"){
					$(".top-bnrV18").css("display","none");
				}
				else{
					$(".top-bnrV18").css("display","block");
				}
			}

			$(function(){
				$(".top-bnrV18 .close").click(function(){
					$(".top-bnrV18").addClass("fold");
				});
			});

			openWin('btn20200804');

			function closeWin(winName, expiredays){
				setCookie(winName,"done",expiredays);
				if(winName=="btn20200804"){
					$.ajax({url:"/common/addlog.js?tp=topbnr_banner"});
					$(".top-bnrV18").addClass("fold");
				}
			}

			function setCookie(name, value, expiredays) {
				var todayDate = new Date();
				todayDate = new Date(parseInt(todayDate.getTime() / 86400000) * 86400000 + 54000000);
				if ( todayDate > new Date() )
				{
					expiredays = expiredays - 1;
				}
				todayDate.setDate( todayDate.getDate() + expiredays );
				document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
			}
			</script>
			
			<div class="top-bnrV18" style="background-color:#eb024a;display:">
				<div class="inner">
					<a href="/event/eventmain.asp?eventid=103173&gaparam=main_mkt_1" onclick="fnAmplitudeEventMultiPropertiesAction('click_header_topbanner','indexnumber|link','1|/event/eventmain.asp?eventid=103173&gaparam=main_mkt_1');"><img src="http://imgstatic.10x10.co.kr/main/202007/706/Headerupperbanner_79310_20200731154100.jpg" alt="무료배송" /></a>
					<a href="/event/benefit/?gaparam=main_mkt_2" onclick="fnAmplitudeEventMultiPropertiesAction('click_header_topbanner','indexnumber|link','2|/event/benefit/?gaparam=main_mkt_2');"><img src="http://imgstatic.10x10.co.kr/main2/202007/706/Headerupperbanner_79310_20200731154100.jpg" alt="혜택" /></a>
					<a href="/event/eventmain.asp?eventid=104620&gaparam=main_mkt_3" onclick="fnAmplitudeEventMultiPropertiesAction('click_header_topbanner','indexnumber|link','3|/event/eventmain.asp?eventid=104620&gaparam=main_mkt_3');"><img src="http://imgstatic.10x10.co.kr/main3/202007/706/Headerupperbanner_79310_20200731154100.jpg" alt="월간위시톱텐" /></a>
					<button type="button" class="close" onclick="closeWin('btn20200804', 1); return false;"><img src="http://fiximage.10x10.co.kr/web2017/common/btn_bnr_close_whit.gif" alt="배너 닫기" /></button>
				</div>
				<div class="bg-right" style="background-color:#fe007f"></div>
			</div>
			

<div id="accessibility"><a href="#contentWrap">Jump to contents</a></div>
<div class="header-wrap anniv18">
	<div class="headerV18">
		<div class="inner">
			
			<h1 ><a href="/">10X10</a></h1>
			<div class="head-util">
				<ul>
					
							<li class="util-join">
								<a href="/login/loginpage.asp?vType=G">로그인</a> / <a href="/member/join.asp">회원가입</a>
							</li>
						


					<li class="util-alarm">
						<a href="/my10x10/">알림</a>
						
					</li>
					<li class="util-order"><a href="/my10x10/order/myorderlist.asp">주문/배송</a></li>
					<li class="util-cs"><a href="/cscenter/">고객센터</a></li>
					<li class="util-cart">
						<a href="" onclick="TnGotoShoppingBag();return false;"><span class="icoV18"></span> 장바구니 <span id="ibgaCNT" name="ibgaCNT">0</span><span class="arrow-bottom bottom1" id="basketDropIcon"></span></a>
						<script type="text/javascript">
$(function() {
	//UNB - Shopping Bag Control
	if(typeof(Storage) !== "undefined") {
		//Btn Action
		$('.util-cart').mouseover(function() {
			fnChkHeadCart();
			$(this).children('.util-layer').show();
		}).mouseleave(function() {
			$('.util-cart > .util-layer').hide();
		});
	} else {
		//Remove drop Icon
		$("#basketDropIcon").hide();
	}
});

// Check Cart Status
function fnChkHeadCart() {
	if(typeof(Storage) !== "undefined") {
		var chkCartSr = false, oCart;

		if(sessionStorage.getItem("cart")) {
			oCart = JSON.parse(sessionStorage.getItem("cart"));
			var vNowDt = new Date();
			if(TnCheckCompDate(oCart.expire,">=",vNowDt.isoDate())) {
				chkCartSr = true;
			}
			if (oCart.usrkey=='68092722') {
				chkCartSr = true;
			} else {
				chkCartSr = false;
			}
		}

		if(!chkCartSr) {
			fnGetHeadCartList();
		}
		if($("#lyrHdCartList").html()=="") {
			fnPrintHeadCart();
		}
	}
}

// Get Cart List
function fnGetHeadCartList() {
	if(typeof(Storage) !== "undefined") {
		$.ajax({
			url: "/common/act_shoppingbagList.asp",
			cache: false,
			async: false,
			success: function(message) {
				sessionStorage.setItem("cart", message);
				fnPrintHeadCart();
			}
			,error: function(err) {
				alert(err.responseText);
			}
		});
	}
}

// Print Cart List
function fnPrintHeadCart() {
	if(typeof(Storage) !== "undefined") {
		var vCont='<p class="tip">* 최근 담은 순으로 5개까지 보여집니다.</p>';
		var vCartCnt = 0;

		var oCart = JSON.parse(sessionStorage.getItem("cart"));
		if(oCart.list.length>0) {
			vCont += '<div class="items type-list"><ul>';

			$(oCart.list).each(function(i){
				vCont += '<li>';
				vCont += '	<a href="/shopping/category_prd.asp?itemid='+this.itemid+'">';
				vCont += '		<div class="thumbnail"><img src="'+this.image+'" alt="" /></div>';
				vCont += '		<div class="desc">';
				vCont += '			<p class="brand">'+this.brand+'</p>';
				vCont += '			<p class="name">'+this.itemname+'</p>';
				vCont += '		</div>';
				vCont += '	</a>';
				vCont += '	<button type="button" class="btn-delete" onclick="fnDelCartItem(\''+this.itemid+'\',\''+this.itemoption+'\')"><span class="icoV18">상품 삭제</span></button>';
				vCont += '</li>';
				if(i>=4) return false;
			});
			vCont += '</ul></div>';

			if(oCart.list.length>5) {
				vCont += '	<a href="" class="btn-all btn-linkV18 link4" onclick="TnGotoShoppingBag(); return false;">';
				vCont += '		장바구니 전체보기<span></span></a>';
			}

			vCartCnt = oCart.cartcnt;
		} else {
			vCont += '<div class="items type-list"><ul><li class="nodata"><p>장바구니에 담긴 상품이 없습니다.</li></ul></div>';
		}
		$("#lyrHdCartList").html(vCont);
		$("#ibgaCNT").html(vCartCnt);
	}
}

// Reset Cart List
function fnDelCartAll() {
	if(typeof(Storage) !== "undefined") {
		sessionStorage.removeItem("cart");
	}
}

// Delete Cart Item
function fnDelCartItem(iid,iop){
	if(confirm("상품을 장바구니에서 삭제하시겠습니까?")) {
		$.ajax({
			type:"POST",
			url: "/common/act_shoppingbag_Proc.asp",
			data: "mode=del&itemid="+iid+"&itemoption="+iop,
			cache: false,
			success: function(message) {
				if(message=="1") {
					fnGetHeadCartList();
				} else {
					alert("처리중 오류가 발생했습니다.\n잠시 후 다시 시도해주세요.");
				}
			}
			,error: function(err) {
				alert(err.responseText);
			}
		});
	}
}
</script>

<div class="util-layer" id="lyrHdCartList"></div>
					</li>
				</ul>
			</div>
			<div class="head-service">
				<ul class="nav">
					<!-- <li class="nav-apple"><a href="/event/apple/?gaparam=main_menu_apple" onclick="fnAmplitudeEventMultiPropertiesAction('click_topmenu','type|landing_url','apple|/member/join.asp');">애플</a></li> -->
					
					<li class="nav-diarystory"><a href="http://10x10.co.kr/diarystory2020/?gaparam=main_menu_new" onclick="fnAmplitudeEventMultiPropertiesAction('click_topmenu','type|landing_url','diarystory|/member/join.asp');">다이어리</a></li>
					
					<li class="nav-new"><a href="http://10x10.co.kr/shoppingtoday/shoppingchance_newitem.asp?gaparam=main_menu_new">신상품</a></li>
					<li class="nav-best"><a href="http://10x10.co.kr/award/awardlist.asp?atype=b&gaparam=main_menu_best">베스트</a></li>
					<li class="nav-sale"><a href="http://10x10.co.kr/shoppingtoday/shoppingchance_saleitem.asp?gaparam=main_menu_sale">할인특가</a></li>
					<li class="nav-event"><a href="http://10x10.co.kr/shoppingtoday/shoppingchance_allevent.asp?gaparam=main_menu_event">기획전</a></li>
					<li class="nav-brand"><a href="http://10x10.co.kr/street/?gaparam=main_menu_brand">브랜드</a></li>
				</ul>
				<div class="search-form">
					
					<form name="searchForm" method="get" action="/search/search_result.asp" onSubmit="return false;">
					<input type="hidden" name="rect" value="">
					<input type="hidden" name="cpg" value="">
					<input type="hidden" name="extUrl" value="/event/eventmain.asp?eventid=104687">
					<input type="hidden" name="tvsTxt" value="로마네 반짝 세일 상품 대공개">
					<input type="hidden" name="gaparam" value="main_menu_search">
					<input type="search" name="sTtxt" id="sTtxt" value="로마네 반짝 세일 상품 대공개" placeholder="로마네 반짝 세일 상품 대공개" onkeyup="fnKeyInput(keyCode(event))" onkeyup="if(keyCode(event)==13) {fnTopSearch(document.searchForm.rect,$('#sTtxt').val());}" onFocus="chkFocusTopSearchTxt(this.value,'S');CancelHideSACLayer();fnSACLayerOnOff(true);" onblur="chkFocusTopSearchTxt(this.value,'U');HideSACLayer()" autocomplete="off" />
					<button type="submit" class="btn-search" onclick="fnTopSearch(document.searchForm.rect,$('#sTtxt').val());return false;"><span class="icoV18">검색</span></button>
					<div name="atl" id="atl" style="display:none;" onFocus="chkFocusTopSearchTxt(this.value,'S');CancelHideSACLayer();fnSACLayerOnOff(true);" onblur="chkFocusTopSearchTxt(this.value,'U');HideSACLayer()" class="schExample"></div>
					</form>
					<script type="text/javascript">
					function chkFocusTopSearchTxt(dv,md) {
						if(dv=="로마네 반짝 세일 상품 대공개"&&md=="S") {
							document.searchForm.sTtxt.value="";
							document.searchForm.extUrl.value="";
						} else if(dv==""&&md=="U") {
							document.searchForm.sTtxt.value="로마네 반짝 세일 상품 대공개";
							document.searchForm.extUrl.value = "/event/eventmain.asp?eventid=104687";
						}
					}
					</script>
					
				</div>
			</div>
		</div>
	</div>
	<div class="gnb-wrap">
		<script>var IE8Under=false;var IE7Under=false;</script>
<!--[if lt IE 9]>
<script>var IE8Under=true;</script>
<![endif]-->
<!--[if lt IE 8]>
<script>var IE7Under=true;</script>
<![endif]-->
<script>
$(function() {
	$('.head-util ul li').mouseover(function() {
		$(this).children('.util-layer').show();
	});
	$('.head-util ul li').mouseleave(function() {
		$(this).children('.util-layer').hide();
	});
	//GNB Control
	$('.gnbV18 li').mouseover(function() {
		if (IE7Under) return;
		
		$('.gnbV18 li').removeClass('on');
		$(this).addClass('on');
		$('.gnb-sub-wrap').show().unbind('mouseover').unbind('mouseleave')
			.mouseover(function() {$(this).show();})
			.mouseleave(function() {$(this).hide();});
		$('.gnb-sub').hide();
		var subGnbId = $(this).attr('name');
		
		try{
			var ictVar = eval("vCtHtml"+subGnbId.substring(3,6));
		}catch(e){
			return;
		}

		//추가
		if (ictVar!=""){
		   $(".gnb-sub-wrap").append(ictVar);
		   eval("vCtHtml"+subGnbId.substring(3,6)+"=''");
			// HOT
			jsHotCateShow(subGnbId.substring(3,6));
			
			if (IE8Under){
				$('.dept-unit-top li').unbind('mouseover').unbind('mouseleave')
				.mouseover(function() {
					$(this).addClass('current');
				})
				.mouseleave(function() {
					$(this).removeClass('current');
				});
		   }else{
				$('.dept-unit-top li').unbind('mouseover').unbind('mouseleave')
				.mouseover(function() {
					$(this).addClass('current');
					$('.gnbV18').children('span').show();
					//if ($(this).children('.subGroupWrapV15').length > 0){
					//	$(this).children('.subGroupWrapV15').show();
					//	$('.gnbBnrV15').children('span').show();
					//} else {
					//	$(this).children('.subGroupWrapV15').hide();
					//	$('.gnbBnrV15').children('span').hide();
					//}
				})
				.mouseleave(function() {
					$(this).removeClass('current');
					//$(this).children('.subGroupWrapV15').hide();
					$('.gnbV18').children('span').hide();
				});
		   }
		}
		
		$("div[class|='gnb-sub'][id|='"+ subGnbId +"']").show().unbind('mouseover').unbind('mouseleave')
			.mouseover(function() {
				$(this).show();
				$('.gnbV18 li[name="'+subGnbId+'"]').addClass('on');
			})
			.mouseleave(function() {
				$(this).hide();
				$('.gnbV18 li').removeClass('on');
			});
	});

	$('.gnbV18 li').mouseleave(function() {
		if (IE7Under) return;
		
		$(this).removeClass('on');
		$('.gnb-sub-wrap').hide();
	});
});
</script>
<script type="text/javascript" src="/chtml/dispcate/html/cate_menu_new_all.js?v=20200803134614"></script>
<script type="text/javascript" src="/chtml/dispcate/html/cate_menu_hot.js?v=20200804070000"></script>
<div class="gnbV18">
	<ul>
		
		<li name="gnb101" onClick="top.location.href='/shopping/category_list.asp?disp=101';"><p>디자인문구</p></li>
		<li name="gnb102" onClick="top.location.href='/shopping/category_list.asp?disp=102';"><p>디지털/핸드폰</p></li>
		<li name="gnb124" onClick="top.location.href='/shopping/category_list.asp?disp=124';"><p>디자인가전</p></li>
		<li class="line" name="gnb121" onClick="top.location.href='/shopping/category_list.asp?disp=121';"><p>가구/수납</p></li>
		<li name="gnb120" onClick="top.location.href='/shopping/category_list.asp?disp=120';"><p>패브릭/생활</p></li>
		<li name="gnb122" onClick="top.location.href='/shopping/category_list.asp?disp=122';"><p>데코/조명</p></li>
		<li name="gnb112" onClick="top.location.href='/shopping/category_list.asp?disp=112';"><p>키친</p></li>
		<li class="gnb-hot" name="gnb119" onClick="top.location.href='/shopping/category_list.asp?disp=119';"><p>푸드</p></li>
		<li name="gnb115" onClick="top.location.href='/shopping/category_list.asp?disp=115';"><p>베이비/키즈</p></li>
		<li class="line gnb-hot" name="gnb117" onClick="top.location.href='/shopping/category_list.asp?disp=117';"><p>패션의류</p></li>
		<li name="gnb116" onClick="top.location.href='/shopping/category_list.asp?disp=116';"><p>패션잡화</p></li>
		<li name="gnb118" onClick="top.location.href='/shopping/category_list.asp?disp=118';"><p>뷰티</p></li>
		<li name="gnb125" onClick="top.location.href='/shopping/category_list.asp?disp=125';"><p>주얼리/시계</p></li>
		<li class="line" name="gnb110" onClick="top.location.href='/shopping/category_list.asp?disp=110';"><p>Cat&amp;Dog</p></li>
		<li name="gnb104" onClick="top.location.href='/shopping/category_list.asp?disp=104';"><p>토이/취미</p></li>
	</ul>
	
	<div class="gnb-sub-wrap">
	</div>
	
</div>
	</div>
</div>
<script>
$(function() {
	//GNB


	$('.gnbV18 li').mouseover(function() {
		$('.gnbV18 li').removeClass('on');
		$(this).addClass('on');
		$('.gnb-sub-wrap').show()
			.mouseover(function() {$(this).show();})
			.mouseleave(function() {$(this).hide();});
		$('.gnb-sub').hide();
		var subGnbId = $(this).attr('name');
		$("div[class|='gnb-sub'][id|='"+ subGnbId +"']").show()
		.mouseover(function() {
			$(this).show();
			$('.gnbV18 li[name="'+subGnbId+'"]').addClass('on');
		})
		.mouseleave(function() {
			$(this).hide();
			$('.gnbV18 li').removeClass('on');
		});
	});

	$('.gnbV18 li').mouseleave(function() {
		$(this).removeClass('on');
		$('.gnb-sub-wrap').hide();
	});
});
</script>
	<div class="container">
		<div id="contentWrap">
		<form name="myinfoForm" method="post" action="https://www.10x10.co.kr/member/dojoin_step2.asp" onsubmit="return false;">
		<input type="hidden" name="pflag" value="">
		<input type="hidden" name="hideventid" value="nvshop_sp">
		<input type="hidden" name="usermail" value="">
		<input type="hidden" name="chkFlag" value="N">
		<input type="hidden" name="snsgubun" value="">
		<input type="hidden" name="snsid" value="">
		<input type="hidden" name="tokenval" value="">
		<input type="hidden" name="email_way2way" value="N">
		<input type="hidden" name="smsok_fingers" value="N">
		<input type="hidden" name="sns_sexflag" value="">
		<input type="hidden" name="kakaoterms" value="">		
			<h2><img src="/fiximage/web2017/member/tit_signup.png" alt="SIGN UP" /></h2>
			<p class="tPad10"><img src="/fiximage/web2017/member/txt_welcome.png" alt="생활 감성채널 텐바이텐에 오신 것을 환영합니다." /></p>
			<div class="formBoxV17 tMar25">
				<!-- 필수항목 -->
				<div class="group type1">					
					<fieldset>
						<legend>회원가입 필수항목 입력</legend>
						<div class="flexFormV17 tMar0">
							<div>
								<label for="memId">아이디</label><input type="text" name="txuserid" id="memId" value="" class="txtInp" style="ime-mode:disabled;" maxlength="16" onKeyDown="keyCodeCheckID(event,this);" onKeyUp="jsChkID();" onClick="jsChkID();" onBlur="isToLowerCase(this,0); DuplicateIDCheck(this);" />
								<p class="msg" id="checkMsgID">3~15자의 영문/숫자를 조합하여 입력</p>
							</div>
						</div>
					
                        <div class="flexFormV17">
							<div>
								<label for="memPw">비밀번호</label><input type="password" name="txpass1" id="memPw" class="txtInp" maxlength="16" />
								<p class="msg" id="memPwtxt">8-16자의 영문/숫자를 조합하여 입력</p>
							</div>
						</div>
						<div class="flexFormV17">
							<div>
								<label for="memPw2">비밀번호 확인</label><input type="password" name="txpass2" id="memPw2" class="txtInp" value="" maxlength="16" style="ime-mode:disabled;" onBlur="javascript:chkMemPwd();" />
								<p class="msg" id="pwdCheckResult12"></p>
							</div>
						</div>
                    
						<div class="flexFormV17">
							<div>
								<label for="memName">성명</label><input type="text" name="txName" id="memName" maxlength="30" value="" onblur="inputLengthCheck(this);" class="txtInp" />
								<p class="msg" id="nameCheckResult">한글 15자, 영문 30자까지 가능합니다.</p>
							</div>
						</div>
						<div class="flexFormV17">
							<div><label for="memMail">이메일</label><input type="text" name="txEmail1" id="memMail" value="" title="이메일 아이디 입력" class="txtInp" maxlength="32" onKeyDown="keyCodeCheckEmail(event);" onKeyUp="jsChkEmail();" onClick="jsChkEmail();" style="ime-mode:disabled;" onBlur="javascript:DuplicateEmailCheck();" /></div>
							<div class="ct fs14 fb cGy2V15" style="width:48px;">@</div>
							<div class="rPad10"><input type="text" title="이메일 직접 입력" class="txtInp" name="selfemail" id="selfemail" maxlength="80" style="display:none;ime-mode:disabled;" onKeyDown="keyCodeCheckEmail(event);" onKeyUp="jsChkEmail();" onClick="jsChkEmail();" /></div>
							<div>
								<select name="txEmail2" title="이메일 서비스 선택" class="select" onchange="NewEmailChecker();">
									<option value=""  selected>선택해 주세요</option>
									<option value="@hanmail.net" >hanmail.net</option>
									<option value="@naver.com" >naver.com</option>
									<option value="@hotmail.com" >hotmail.com</option>
									<option value="@yahoo.co.kr" >yahoo.co.kr</option>
									<option value="@hanmir.com" >hanmir.com</option>
									<option value="@paran.com" >paran.com</option>
									<option value="@lycos.co.kr" >lycos.co.kr</option>
									<option value="@nate.com" >nate.com</option>
									<option value="@dreamwiz.com" >dreamwiz.com</option>
									<option value="@korea.com" >korea.com</option>
									<option value="@empal.com" >empal.com</option>
									<option value="@netian.com" >netian.com</option>
									<option value="@freechal.com" >freechal.com</option>
									<option value="@msn.com" >msn.com</option>
									<option value="@gmail.com" >gmail.com</option>
									<option value="etc">직접입력</option>
								</select>
							</div>
						</div>
						<div class="flexFormV17 static">
							<div>
								<p style="line-height:1.4;"><input type="checkbox" name="email_10x10" value="Y" class="check vMid" id="tenMailY" /> <label for="tenMailY">쿠폰/혜택/이벤트 발생 시 이메일로 알림 받기(선택)<br><span class="color-red" style="padding-left:17px;">알림을 받으면 매달 추첨을 통해 10,000p를 선물로 드려요 !</span></label></p>
								<p class="msg useN" id="checkMsgEmail"></p>
							</div>
						</div>
						<div class="flexFormV17">
							<div>
								<label for="memPhone">휴대폰</label>
								<input type="text" name="txCell1" id="memPhone" class="txtInp" maxlength="3" />
							</div>
							<div class="ct fs14 fb cGy2V15" style="width:48px;">-</div>
							<div>
								<input type="text" name="txCell2" class="txtInp" maxlength="4" />
							</div>
							<div class="ct fs14 fb cGy2V15" style="width:48px;">-</div>
							<div>
								<input type="text" name="txCell3" class="txtInp" maxlength="4" />
							</div>
							<div class="lPad10" style="width:140px;" id="smsButtonn1"><a href="#" onclick="sendSMS(); return false;" class="btn btnB1 btnGry2">인증번호 발송</a></div>
						</div>
						<div class="flexFormV17 static">
							<p class="rt fs11" id="sendSMSnumber"></p>
						</div>
						<div class="flexFormV17">
							<div>
								<label for="certNum">카카오톡이나 SMS로 발송된 인증번호 6자리를 입력하세요</label><input type="text" name="crtfyNo" id="certNum" class="txtInp" maxlength="6" value="" />
								<p class="msg useN" id="smsRstMsg"></p>
							</div>
							<div class="lPad10" style="width:140px;" id="smsButtonn2"><a href="#" onclick="fnConfirmSMS(); return false;" class="btn btnB1 btnGry2">확인</a></div>
						</div>
						<div class="flexFormV17 static">
							<div>
								<p><input type="checkbox" class="check vMid" id="tenSmsY" name="smsok" value="Y" /> <label for="tenSmsY">쿠폰/혜택/이벤트 발생 시 카카오톡/문자로 알림 받기(선택)</label></p>
							</div>
						</div>
					</fieldset>
				</div>
				<!--// 필수항목 -->

				<!-- 선택항목 -->
				<div class="group type2">
					<h3><img src="/fiximage/web2017/member/stit_choice.png" alt="선택항목" /></h3>
					<fieldset>
						<legend>회원가입 선택항목 입력</legend>
						<div class="flexFormV17 tMar0">
							<div class="fb cGy2V15" style="width:70px;">생년월일</div>
							<div>
								<select name="txBirthday1" id="txBirthday1" class="select" title="태어난 년도 선택">
									<option value="0" selected="selected">년도 선택</option>
								
									<option value="1920">1920</option>
								
									<option value="1921">1921</option>
								
									<option value="1922">1922</option>
								
									<option value="1923">1923</option>
								
									<option value="1924">1924</option>
								
									<option value="1925">1925</option>
								
									<option value="1926">1926</option>
								
									<option value="1927">1927</option>
								
									<option value="1928">1928</option>
								
									<option value="1929">1929</option>
								
									<option value="1930">1930</option>
								
									<option value="1931">1931</option>
								
									<option value="1932">1932</option>
								
									<option value="1933">1933</option>
								
									<option value="1934">1934</option>
								
									<option value="1935">1935</option>
								
									<option value="1936">1936</option>
								
									<option value="1937">1937</option>
								
									<option value="1938">1938</option>
								
									<option value="1939">1939</option>
								
									<option value="1940">1940</option>
								
									<option value="1941">1941</option>
								
									<option value="1942">1942</option>
								
									<option value="1943">1943</option>
								
									<option value="1944">1944</option>
								
									<option value="1945">1945</option>
								
									<option value="1946">1946</option>
								
									<option value="1947">1947</option>
								
									<option value="1948">1948</option>
								
									<option value="1949">1949</option>
								
									<option value="1950">1950</option>
								
									<option value="1951">1951</option>
								
									<option value="1952">1952</option>
								
									<option value="1953">1953</option>
								
									<option value="1954">1954</option>
								
									<option value="1955">1955</option>
								
									<option value="1956">1956</option>
								
									<option value="1957">1957</option>
								
									<option value="1958">1958</option>
								
									<option value="1959">1959</option>
								
									<option value="1960">1960</option>
								
									<option value="1961">1961</option>
								
									<option value="1962">1962</option>
								
									<option value="1963">1963</option>
								
									<option value="1964">1964</option>
								
									<option value="1965">1965</option>
								
									<option value="1966">1966</option>
								
									<option value="1967">1967</option>
								
									<option value="1968">1968</option>
								
									<option value="1969">1969</option>
								
									<option value="1970">1970</option>
								
									<option value="1971">1971</option>
								
									<option value="1972">1972</option>
								
									<option value="1973">1973</option>
								
									<option value="1974">1974</option>
								
									<option value="1975">1975</option>
								
									<option value="1976">1976</option>
								
									<option value="1977">1977</option>
								
									<option value="1978">1978</option>
								
									<option value="1979">1979</option>
								
									<option value="1980">1980</option>
								
									<option value="1981">1981</option>
								
									<option value="1982">1982</option>
								
									<option value="1983">1983</option>
								
									<option value="1984">1984</option>
								
									<option value="1985">1985</option>
								
									<option value="1986">1986</option>
								
									<option value="1987">1987</option>
								
									<option value="1988">1988</option>
								
									<option value="1989">1989</option>
								
									<option value="1990">1990</option>
								
									<option value="1991">1991</option>
								
									<option value="1992">1992</option>
								
									<option value="1993">1993</option>
								
									<option value="1994">1994</option>
								
									<option value="1995">1995</option>
								
									<option value="1996">1996</option>
								
									<option value="1997">1997</option>
								
									<option value="1998">1998</option>
								
									<option value="1999">1999</option>
								
									<option value="2000">2000</option>
								
									<option value="2001">2001</option>
								
									<option value="2002">2002</option>
								
									<option value="2003">2003</option>
								
									<option value="2004">2004</option>
								
									<option value="2005">2005</option>
								
									<option value="2006">2006</option>
								
								</select>
							</div>
							<div class="lPad10">
								<select name="txBirthday2" id="txBirthday2" class="select" title="태어난 월 선택">
									<option value="0" selected="selected">월 선택</option>
								
									<option value="01">01</option>
								
									<option value="02">02</option>
								
									<option value="03">03</option>
								
									<option value="04">04</option>
								
									<option value="05">05</option>
								
									<option value="06">06</option>
								
									<option value="07">07</option>
								
									<option value="08">08</option>
								
									<option value="09">09</option>
								
									<option value="10">10</option>
								
									<option value="11">11</option>
								
									<option value="12">12</option>
								
								</select>
							</div>
							<div class="lPad10">
								<select name="txBirthday3" id="txBirthday3" class="select" title="태어난 일 선택">
									<option value="0" selected="selected">일 선택</option>
								
									<option value="01">01</option>
								
									<option value="02">02</option>
								
									<option value="03">03</option>
								
									<option value="04">04</option>
								
									<option value="05">05</option>
								
									<option value="06">06</option>
								
									<option value="07">07</option>
								
									<option value="08">08</option>
								
									<option value="09">09</option>
								
									<option value="10">10</option>
								
									<option value="11">11</option>
								
									<option value="12">12</option>
								
									<option value="13">13</option>
								
									<option value="14">14</option>
								
									<option value="15">15</option>
								
									<option value="16">16</option>
								
									<option value="17">17</option>
								
									<option value="18">18</option>
								
									<option value="19">19</option>
								
									<option value="20">20</option>
								
									<option value="21">21</option>
								
									<option value="22">22</option>
								
									<option value="23">23</option>
								
									<option value="24">24</option>
								
									<option value="25">25</option>
								
									<option value="26">26</option>
								
									<option value="27">27</option>
								
									<option value="28">28</option>
								
									<option value="29">29</option>
								
									<option value="30">30</option>
								
									<option value="31">31</option>
								
								</select>
							</div>
						</div>
						<div class="flexFormV17 static">
							<p class="rt fs11">등록된 생일에 생일 축하 쿠폰을 선물로 드립니다.</p>
						</div>
						<div class="flexFormV17 static">
							<div class="fb cGy2V15" style="width:70px;">성별</div>
							<div>
								<input type="radio" name="txSex" value="M" id="memMale" class="radio" /> <label for="memMale" class="fs12 cGy1V15">남자</label>
								<input type="radio" name="txSex" value="F" id="memFemale" class="radio lMar20" /> <label for="memFemale" class="fs12 cGy1V15">여자</label>
							</div>
						</div>
					</fieldset>
				</div>
				<!--// 선택항목 -->

				<!-- 약관동의 -->
				<div class="group type3">
					<p class="fs12"><input type="checkbox" class="check" id="policyY" /> <label for="policyY"><strong>약관 전체 동의</strong></label></p>
					<ul>
						<li><input type="checkbox" class="check" id="agreeUseAdult" name="agreeUseAdult" value="o" /> <label for="agreeUseAdult">본인은 만 14세 이상입니다.</label></li>
						<li><input type="checkbox" class="check" id="agreeUse" name="agreeUse" value="o" /> <label for="agreeUse">이용약관에 동의합니다.</label> <a href="/common/join.asp" target="_blank" class="btn">내용보기</a></li>
						<li><input type="checkbox" class="check" id="agreePrivate" name="agreePrivate" /> <label for="agreePrivate">개인정보 처리방침에 동의합니다.</label> <a href="/common/private.asp#individual2" target="_blank" class="btn">내용보기</a></li>
					</ul>
				</div>
				<!--// 약관동의 -->
				<div class="btnGroupV17 ct tMar50">
					<a href="#" class="btn btnB1 btnRed" onclick="FnJoin10x10(); return false;" style="width:190px;">텐바이텐 회원가입</a>
				</div>
			</div>
		</form>
		</div>
	</div>
	<hr />
<div class="footer-wrap">
	<div class="foot-nav">
		<ul>
			<li><a href="http://company.10x10.co.kr/" target="_blank">회사소개</a></li>
			<li><a href="http://company.10x10.co.kr/Recruit/List/" target="_blank"><span class="icoV18 ico-new2">채용정보</span></a></li>
			<li><a href="/common/join.asp"><strong>이용약관</strong></a></li>
			<li><a href="/common/private.asp"><strong>개인정보 처리방침</strong></a></li>
			<li><a href="/common/youth.asp"><strong>청소년 보호정책</strong></a></li>
			<li><a href="" onclick="fnPopAlliance('a'); return false;">제휴/광고</a></li>
			<li><a href="" onclick="fnPopAlliance('s'); return false;">입점문의</a></li>
			<li><a href="http://www.10x10.co.kr/offshop/index.asp" target="_blank">매장안내</a></li>
		</ul>
	</div>
	<div class="footerV18">
		<span class="logo">10X10</span>
		<div class="foot-cont company">
			<em>㈜텐바이텐</em>
			<p>대표이사 : 최은희 / 서울시 종로구 대학로 57 홍익대학교 대학로캠퍼스 교육동 14층</p>
			<p>사업자등록번호 : 211-87-00620 / 통신판매업 신고 : 제 01-1968호 <a href="" onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2118700620', 'bizCommPop', 'width=750, height=700;');return false;" class="btn-linkV18 link2 lMar05">사업자 정보확인 <span></span></a></p>
			<p>개인정보보호책임자 : 이문재 / 소비자피해보상보험 SGI 서울보증 <a href="javascript:usafe(2118700620);" class="btn-linkV18 link2 lMar05">서비스 가입 사실 확인 <span></span></a></p>
			<p class="tPad15">호스팅서비스:㈜텐바이텐</p>
			<p class="copyright">COPYRIGHT &copy; TENBYTEN ALL RIGHTS RESERVED.</p>
		</div>
		<div class="foot-cont cs">
			<p><b>고객행복센터</b> <strong>1644-6030</strong></p>
			<p>평일 10:00~17:00 / 점심시간 12:00~13:00</p>
			<p class="tPad25"><a href="" onclick="myqnawrite(); return false;" class="btn-linkV18 link1"><b>1:1 상담신청 <span></span></b></a></p>
			<p>주말 및 공휴일은 1:1 상담을 이용해주세요.</p>
		</div>
		<p class="goTopV18"><span class="icoV18"></span>TOP</p>
	</div>
</div>

	<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript">
		kakaoPixel('6348634682977072419').pageView();
		
	</script>

	
	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-16971867-1', 'auto');
		ga('require','displayfeatures');
		ga('require', 'linkid', 'linkid.js');
		

		ga('send', 'pageview');
	</script>

	
	<!-- Global site tag (gtag.js) - AdWords: 1013881501 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-851282978"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', 'AW-851282978');
	</script>
	
		<script>
			!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
			n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
			t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,document,'script','//connect.facebook.net/en_US/fbevents.js');
			fbq('init', '889484974415237');
			if (Array.from){
				fbq('track', "PageView");
			}
		</script>
		<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=889484974415237&ev=PageView&noscript=1" /></noscript>
	
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript">
		if (!wcs_add) var wcs_add={};
		wcs_add["wa"] = "s_1167df6db7ef";
		if (!_nasa) var _nasa={};
		wcs.inflow("10x10.co.kr");
		wcs_do(_nasa);
	</script>

	
	<script type="text/javascript">
		
	</script>


<script type="text/javascript">
	$(function(){
		//'탑으로 가기
		$('.footer .right2').click(function(){
			$('html, body').animate({scrollTop:0}, 'slow');
		});
	});
	//제휴(a), 입점(s) 문의 팝업
	function fnPopAlliance(gb){
		if(gb=='a'){
			var Alliance = window.open('http://company.10x10.co.kr/Views/pop/PopAlliance.asp','PopAlliance','width=920,height=820,scrollbars=yes');
		}else if(gb=='s'){
			var Alliance = window.open('http://company.10x10.co.kr/Views/pop/PopAlliance2.asp','PopAlliance','width=920,height=820,scrollbars=yes');
		}else{
			alert('잘못된 접속 입니다.');
			parent.location.reload();
			return;
		}
		Alliance.focus();
		return;
	}
</script>

</div>

	<div class="joinLayerV17">
		<div class="group">
			<h2>텐바이텐 회원가입</h2>
			<p>텐바이텐 멤버십 회원가입을 합니다.</p>
			<a href="" onclick="fnAmplitudeEventMultiPropertiesAction('click_signup','action','normal'); fnJoinLayerClose(); tagScriptSend('', 'signuptenbyten', '', 'amplitude'); return false;" class="btn btnB1 btnRed">회원가입</a>
		</div>
		<div class="group">
			<h2>다음 계정으로 회원가입</h2>
			<p>SNS 계정으로 간편하게 텐바이텐에 가입합니다.</p>
			<ul class="btnSocialV17">
				<li><a href="" onclick="fnAmplitudeEventMultiPropertiesAction('click_signup','action','naver');fnPopSNSLogin('nv','400','800');tagScriptSend('', 'signupnaver', '', 'amplitude');return false;" class="icon naver">네이버</a></li>
				<li><a href="" onclick="fnAmplitudeEventMultiPropertiesAction('click_signup','action','kakao');fnPopSNSLogin('ka','470','570');tagScriptSend('', 'signupkakao', '', 'amplitude');return false;" class="icon kakao">카카오톡</a></li>
				<li><a href="" onclick="fnAmplitudeEventMultiPropertiesAction('click_signup','action','facebook');fnPopSNSLogin('fb','410','300');tagScriptSend('', 'signupfacebook', '', 'amplitude');return false;" class="icon facebook">페이스북</a></li>
				<li><a href="" onclick="fnAmplitudeEventMultiPropertiesAction('click_signup','action','google');fnPopSNSLogin('gl','410','420');tagScriptSend('', 'signupgoogle', '', 'amplitude');return false;" class="icon google">구글</a></li>
			</ul>
		</div>
		<button type="button" onclick="fnJoinLayerClose();" class="btnClose">닫기</button>
	</div>

</body>
</html>
