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

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">RG</h1>

            </div>
            <h3>欢迎注册</h3>
            <p>创建一个新账户</p>
            <form class="m-t" role="form">
                <div class="form-group">
                    <input type="text" id="name" class="form-control" placeholder="请输入用户名" required="">
                </div>
                <div class="form-group">
                    <input type="password" id="password" class="form-control" placeholder="请输入密码" required="">
                </div>
                <div class="form-group">
                    <input type="password" id="passwords" class="form-control" placeholder="请再次输入密码" required="">
                </div>
                <div class="form-group text-left">
                    <div class="checkbox i-checks">
                        <label class="no-padding">
                            <input type="checkbox"><i></i> 我同意注册协议</label>
                    </div>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button id="save" onclick="save()" class="btn btn-primary block full-width m-b">注 册</button>

                <p class="text-muted text-center"><small>已经有账户了？</small><a href="login.html">点此登录</a>
                </p>

            </form>
        </div>
    </div>
    <script src="/resources/js/jquery.min.js?v=2.1.4"></script>
    <script src="/resources/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="/resources/js/plugins/iCheck/icheck.min.js"></script>
    <script src="/resources/js/plugins/layer/layer-v3.1.1/layer/layer.js"></script>
    <script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script>
<script type="text/javascript">
	function save() {
		var password = $("#password").val();
		var passwords = $("#passwords").val();
		
		if (password != passwords){
		}
	}
</script>    
</body>
</html>