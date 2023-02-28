<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="MainPage"/>
</jsp:include>
	<!-- 로그인한 사용자는 로그인 페이지 접근 불가 -->
	<c:if test="${not empty loginMember}">
		<script>
			console.log("실패");
			alert("잘못된 접근입니다.");
			location.assign("${path}");
		</script>
	</c:if>
	<!-- 로그인 안 해야만 로그인 페이지 접근 가능 -->
	<c:if test="${empty loginMember}">
		<section>
	        <div class="wrapper">
	            <div id="login">
	                <br>
	                <img src="${path}/resources/images/logo-icon.png" style="width: 120px;height: 100px;">
	                <form id="loginForm" action="${path}/login" method="post">
	                    <input class="loginform" name="id" type="text" id="logInId" placeholder="아이디를 입력해주세요." style="width: 200px;"><br>
	                    <input class="loginform" name="password" type="password" id="logInPwd" placeholder="비밀번호를 입력해주세요." style="width: 200px;"><br>
	                    <span id="pwdCheck"><small></small></span>
	                    <button type="submit" id="loginBtn" class="customBtn btnStyle">로그인</button>
	                </form>
	                <a href="${path}/member/enrollAgree">회원가입</a>&nbsp;
	                <a href="${path}/member/searchIdPwd">아이디/비밀번호 찾기</a>
	            </div>
	        </div>
	    </section>
	</c:if>
    <style>
        .wrapper{
            margin: 50px;
        }
        .loginform{
            height: 20px;
            width: 200px;
            margin: 5px;
        }
        a{
            color: black;
            text-decoration: none;
        }
        #login>a:hover{
            color: gray;
            font-style: italic;
            transition: 0.3s;
        }
        div#login{
            border: 1px solid lightgray;
            width: 450px;
            height: 350px;
            text-align: center;
            margin: 0 auto;
        }
        .customBtn {
            color: #fff;
            border-radius: 5px;
            padding: 10px 25px;
            background: transparent;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            display: inline-block;
            box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
            7px 7px 20px 0px rgba(0,0,0,.1),
            4px 4px 5px 0px rgba(0,0,0,.1);
            outline: none;
            min-width: 80px;
            margin: 20px;
        }
        .btnStyle {
            line-height: 30px;
            padding: 0;
            border: none;
            background: #7B52AE;
            background: linear-gradient(0deg, #7B52AE 0%, #7B52AE 100%);
        }
        .btnStyle:hover {
            color: #7B52AE;
            background: transparent;
            box-shadow:none;
        }
        .btnStyle:before,.btnStyle:after{
            content:'';
            position:absolute;
            top:0;
            right:0;
            height:2px;
            width:0;
            background: #7B52AE;
            box-shadow:
            -1px -1px 5px 0px #fff,
            7px 7px 20px 0px #0003,
            4px 4px 5px 0px #0002;
            transition:400ms ease all;
        }
        .btnStyle:after{
            right:inherit;
            top:inherit;
            left:0;
            bottom:0;
        }
        .btnStyle:hover:before,.btnStyle:hover:after{
            width:100%;
            transition:800ms ease all;
        }
    </style>
    <script>
    	//이전 주소
		let refer=document.referrer;
    	//이전 주소를 서버에 보내 저장
		$.ajax({
			url:"${path}/member/referrerSet",
			data:{refer:refer},
			success:data=>{
				if(data==true){
					console.log("이전 주소: "+refer);
				}
			}
		})
    </script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>