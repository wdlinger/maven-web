<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>注册</title>

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="/resources/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/resources/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/resources/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/resources/css/animate.min.css" rel="stylesheet">
    <link href="/resources/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <script>
    	if(window.top !== window.self){ window.top.location = window.location;}
    </script>
    

</head>

<body class="gray-bg">
<style>
form div span{
	font-size: 15px;
	color: #e64141;
	margin-top: 5px;
}
</style>
    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">RG</h1>

            </div>
            <h3>欢迎注册</h3>
            <p>创建一个新账户</p>
            <form class="m-t" role="form" action="/user/register" method="post">
                <div class="form-group">
                    <input type="text" id="name" name="name" class="form-control" placeholder="请输入用户名" required="" />
                    <span class="fa fa-exclamation-circle" style="display: none;"></span>
                </div>
                <div class="form-group">
                    <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" required="" />
                    <span class="fa fa-exclamation-circle" style="display: none;"></span>
                </div>
                <div class="form-group">
                    <input type="password" id="passwords" name="passwords" class="form-control" placeholder="请再次输入密码" required="" />
                    <span class="fa fa-exclamation-circle" style="display: none;"></span>
                </div>
                <div class="form-group text-left">
                    <div class="checkbox i-checks">
                        <label class="no-padding">
                            <input type="checkbox"><i></i> 我同意注册协议</label>
                    </div>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button id="save" class="btn btn-primary block full-width m-b">注 册</button>

                <p class="text-muted text-center"><small>已经有账户了？</small><a href="login.html">点此登录</a>
                </p>

            </form>
        </div>
    </div>
    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/plugins/iCheck/icheck.min.js"></script>
    <script src="/resources/js/plugins/layer/layer-v3.1.1/layer/layer.js"></script>
    <script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script>
<script type="text/javascript">
	var nameStatus,pwdStatus,pwdsStatus;
	$("#name").on('input',function(){
		var name = $("#name").val();
		var china =  /[^\u0000-\u00FF]/;
		
		if(name != "" && china.test(name)){
			$("#name").next().text('	用户名不能输入中文').show();
			nameStatus = false;return;
		} else {
			nameStatus = true;
			$("#name").next().hide();
		}
		
		if(name != "" && (name.length < 3 || name.length > 10)){
		    $("#name").next().text('	用户名应该为3-10位之间').show();
		    nameStatus = false;return;
		} else {
			nameStatus = true;
			$("#name").next().hide();
		}
		
		$.get({
		})
	});
	
	$("#password,#passwords").keyup(function(){
		
		var password = $("#password").val();
		if(password != "" && (password.length < 3 || password.length > 15)){
			$("#password").next().text('	密码应该为3-15位之间').show();
			pwdStatus = false;return;
		} else {
			pwdStatus = true;
			$("#password").next().hide();
		}
	
		
		var passwords = $("#passwords").val();
		if(passwords != "" && (passwords.length < 3 || passwords.length > 15)){
			$("#passwords").next().text('	密码应该为3-15位之间').show();
			pwdsStatus = false;return;
		} else {
			pwdsStatus = true;
			$("#passwords").next().hide();
		}
	});
	
	$("#save").click(function(){
		var password = $("#password").val();
		var passwords = $("#passwords").val();
		
		if (password != passwords){
			$("#passwords").next().text('	两次密码不一致').show();
			return false;
		} else {
			$("#passwords").next().hide();
		}
		if (nameStatus == false || pwdStatus == false || pwdsStatus == false){
			return false;
		}
	}); 
</script>    
</body>
</html>