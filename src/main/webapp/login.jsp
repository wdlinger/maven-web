<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title>H+ 后台主题UI框架 - 登录</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/resources/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet" />
    <link href="/resources/css/animate.min.css" rel="stylesheet" />
    <link href="/resources/css/style.min.css" rel="stylesheet" />
    <link href="/resources/css/login.min.css" rel="stylesheet" />
</head>
 <script>
        if(window.top!==window.self){window.top.location=window.location};
 </script>
<body class="signin">
 <div class="signinpanel">
        <div class="row">
            <div class="col-sm-7">
                <!-- <div class="signin-info">
                    <div class="logopanel m-b">
                        <h1>[ H+ ]</h1>
                    </div>
                    <div class="m-b"></div>
                    <h4>欢迎使用 <strong>H+ 后台主题UI框架 </strong></h4>
                    <ul class="m-b">
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势一</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势二</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势三</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势四</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势五</li>
                    </ul>
                </div> -->
            </div>
            <div class="col-sm-5">
                <form method="post" action="">
                    <h4 class="no-margins">登录：</h4>
                    <p class="m-t-md"></p>
                    <input type="text" class="form-control uname" placeholder="用户名" />
                    <input type="password" class="form-control pword m-b" placeholder="密码" />
                    <a href="#">忘记密码了？</a>
                    <strong>还没有账号？ <a href="#">立即注册&raquo;</a></strong>
                    <button class="btn btn-success btn-block">登录</button>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy; 2018 All Rights Reserved.
            </div>
        </div>
    </div>
</body>
</html>