<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        领导留言板 - 人民网
    </title>
    <meta name="keywords" content="领导留言板" />
    <meta name="description" content="领导留言板" />
    <meta name="filetype" content="1" />
    <meta name="publishedtype" content="1" />
    <meta name="pagetype" content="2" />
    <meta name="catalogs" content="XTW_0002000" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css-v=R36.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/message.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css" />
    <link href="/favicon.ico" rel="icon" type="image/x-icon" />

    <script src="static/common/js/thirdparty/jquery.min.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.validate.min.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.form.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.webui-popover.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/layer/layer.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/tmpl.min.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/json2.js" type="text/javascript"></script>
    <script src="static/common/js/common.js" type="text/javascript"></script>
    <script src="static/common/js/tab.js" type="text/javascript"></script>
    <script type="text/javascript">
        CONTEXT_PATH = "";
        $(function() {
            $("#login-point").on("click", function() {
                $('#mask').show()
                $('#login-box').show();
            });
            $('#login-box .btn').click(function() {
                $('#mask').hide()
                $('#login-box').hide();
            });
            $("#search_btn").click(function() {
                var searchWord = $("#srchtxt").val();
                if(searchWord == "" || Common.getByteLen(searchWord) < 4) {
                    layer.alert("输入的关键词过短，必须多于2个中文汉字", {
                        icon: 5
                    });
                    return false;
                }
            });
            $("#topbanner .inner .n1").mouseover(function() {
                $("#topbanner .inner .n1 .search").show();
                $("#topbanner .inner .n1").addClass("active");

            }).mouseout(function() {
                $("#topbanner .inner .n1 .search").hide();
                $("#topbanner .inner .n1").removeClass("active")
            });

            Common.loadAllAdvs();
        });
    </script>
</head>

<body>
<!--nav-->
<%@include file="common/common-top-help.jsp"%>
<!--nav end-->

<script src="static/www/js/user.js-v=1" type="text/javascript"></script>
<script src="static/common/js/thirdparty/md5.min.js"  type="text/javascript"></script>

<div class="path_2j w1200 grey2">当前位置 ：领导留言板 > 用户中心</div>
<div class="clearfix denglu_con w1200">
    <form name="loginform" id="loginform" action="" method="post">
        <input name="referer" type="hidden" value="">
        <input name="loginType" type="hidden" value="1">
        <ul class="form_box clearfix">
            <li><input name="userName" id="userName" type="text" placeholder="邮箱" id="" name="srchtxt"><span class="notice"></span></li>
            <li><input name="password" id="password" type="password" placeholder="输入密码" autocomplete="off" /></li>

            <li class="clearfix">
                <i><a href="loginByPhone.jsp" target="_self">手机号快速登录</a></i>
                <i class="fr"><a href=""  target="_blank">忘记登录密码？</a></i>
            </li>
        </ul>
        <div class="input01"><input name="" id="submit_btn" type="submit" value="登 录" /></div>
        <div class="box03 clearfix" style="font-size: 16px;text-align: center">还没有账号？<i class="red"><a href="regUser.jsp" >注册新账号</a></i></div>
    </form>
</div>

<script type="text/javascript">
    $(function() {
        User.initLoginPage();

        $("#codeImg").click(function() {
            var timestamp = (new Date()).valueOf();
            $("#codeImg").attr("src", "/verifycode/rand4?timestamp=" + timestamp);
        });
    });
</script>

<!--copyright-->
<%@ include file="common/common-bottom-help.jsp"%>

<script src="static/common/js/webdig_test.js"  language="javascript" type="text/javascript"></script>

</body>

</html>
