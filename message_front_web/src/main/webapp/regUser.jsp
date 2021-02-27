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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css-v=R36.css"  />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/message.css"  />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css"  />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css"  />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css" />
    <link href="/favicon.ico" rel="icon" type="image/x-icon" />

    <script src="static/common/js/thirdparty/jquery.min.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.validate.min.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.form.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.webui-popover.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/layer/layer.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/tmpl.min.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/json2.js" type="text/javascript"></script>
    <script src="static/common/js/common.js" type="text/javascript"></script>
    <script src="static/common/js/tab.js"  type="text/javascript"></script>
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

<script type="text/javascript" src="static/www/js/user.js-v=1"></script>
<script type="text/javascript">
    $(function() {
        User.initMobileRegPage();
    });
</script>

<div class="path_2j w1200 grey2">当前位置 ：领导留言板 > 用户中心</div>

<form id="regForm" action="http://liuyan.people.com.cn/regUser" method="post">
    <input id="regType" name="regType" value="2" type="hidden" value="" />
    <div class="clearfix zhuce_con02">
        <dl class="clearfix">
            <dt>用户昵称：</dt>
            <dd>
                <input id="userAddress" name="userAddress" type="text" class="t01" value="" />
                <span id="userAddressCheck" style="color: red;font-size: 15px">123</span>
            </dd>
            <dt class="t04">手机号码：</dt>
            <dd class="t04">
                <input id="userPhone" name="userPhone" type="text" class="t02" value="" size="25" maxlength="11" />
                <input name="发送验证短信" type="button" value="发送验证短信" class="t03" id="btn_getCode" />
            </dd>
            <dt>短信验证码：</dt>
            <dd>
                <input id="userMessage" name="userMessage" type="text" class="t01" value="" maxlength="6" />
                <span id="userName-error" style="color: red;font-size: 15px">123</span>
            </dd>
            <dt>邮箱：</dt>
            <dd>
                <input id="email" name="email" type="text" class="t02" value="" size="25" maxlength="16" />
            </dd>
            <dt>密码：</dt>
            <dd>
                <input id="password1" name="password1" type="password" class="t02" value="" size="25" />
                <i class="grey3">建议使用大小写字母及数字，增强密码安全性</i>
            </dd>
            <dt>确认密码：</dt>
            <dd>
                <input id="password2" name="password2" type="password" class="t02" value="" size="25" />
                <span id="passwordCheck" style="color: red;font-size: 15px">123</span>
            </dd>
        </dl>
    </div>

    <div class=" clearfix zhuce_con04">
        <input name="" id="submit_btn" type="submit" value="提交注册信息" />
    </div>
</form>
<!--注册手机 end-->

<!--copyright-->
<%@include file="common/common-bottom-help.jsp"%>


<script src="static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>
