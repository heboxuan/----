<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        政务信息咨询
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

    <script src="js/jquery-3.2.1.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.validate.min.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.form.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.webui-popover.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/layer/layer.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/tmpl.min.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/json2.js" type="text/javascript"></script>
    <script src="static/common/js/common.js" type="text/javascript"></script>
    <script src="static/common/js/tab.js"  type="text/javascript"></script>
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

<form id="regForm" action="${pageContext.request.contextPath}/frontUserMessage/saveUserMessage.do" method="post">
    <input id="regType" name="regType" value="2" type="hidden" value="" />
    <div class="clearfix zhuce_con02">
        <dl class="clearfix">
            <dt>用户昵称：</dt>
            <dd>
                <input id="username" name="username" type="text" class="t01" value="" />
                <span id="usernameCheck" style="color: red;font-size: 15px"></span>
            </dd>
            <dt class="t04">手机号码：</dt>
            <dd class="t04">
                <input id="userPhone" name="phone" type="text" class="t02" value="" size="25" maxlength="11" />
                <span id="userPhoneCheck" style="color: red;font-size: 15px"></span>
            </dd>
            <dt>短信验证码：</dt>
            <dd>
                <input id="smsCode" name="userMessage" type="text" class="t01" value="" maxlength="6" />
                <input name="发送验证短信" type="button" value="发送验证短信" class="t03" id="btn_getCode" />
                <span id="smsCodeCheck" style="color: red;font-size: 15px"></span>
            </dd>
            <dt>邮箱：</dt>
            <dd>
                <input id="email" name="email" type="text" class="t02" />
                <span id="emailCheck" style="color: red;font-size: 15px"></span>
            </dd>
            <dt>密码：</dt>
            <dd>
                <input id="password1" name="password1" type="password" class="t02" value="" size="25" />
                <i class="grey3">建议使用大小写字母及数字，增强密码安全性</i>
            </dd>
            <dt>确认密码：</dt>
            <dd>
                <input id="password2" name="password2" type="password" class="t02" value="" size="25" />
                <span id="passwordCheck" style="color: red;font-size: 15px"></span>
            </dd>
        </dl>
    </div>

    <div class=" clearfix zhuce_con04">
        <input id="submit_btn" type="submit" value="提交注册信息" disabled/>
    </div>
    <script>
        $("#username").blur(function () {
            let username=$(this).val();
            if (username=="") {
                return;
            }
            let url="${pageContext.request.contextPath}/frontUserMessage/checkUsername.do";
            let data="username="+username;
            $.get(url,data,function (resp) {
                if (resp) {
                    $("#usernameCheck").html("可注册");
                    $("#submit_btn").attr("disabled",false);
                }else{
                    $("#usernameCheck").html("已注册");
                    $("#submit_btn").attr("disabled","disabled");
                }
            })
        });
        $("#userPhone").blur(function () {
            let userPhone=$(this).val();
            if (userPhone=="") {
                return;
            }
            let url="${pageContext.request.contextPath}/frontUserMessage/checkUserPhone.do";
            let data="userPhone="+userPhone;
            $.get(url,data,function (resp) {
                if (resp) {
                    $("#userPhoneCheck").html("可注册");
                    $("#submit_btn").attr("disabled",false);
                }else{
                    $("#userPhoneCheck").html("已注册");
                    $("#submit_btn").attr("disabled","disabled");
                }
            })
        });
        $("#email").blur(function () {
            let email=$(this).val();
            if (email=="") {
                return;
            }
            let url="${pageContext.request.contextPath}/frontUserMessage/checkEmail.do";
            let data="email="+email;
            $.get(url,data,function (resp) {
                if (resp) {
                    $("#emailCheck").html("可注册");
                    $("#submit_btn").attr("disabled",false);
                }else{
                    $("#emailCheck").html("已注册");
                    $("#submit_btn").attr("disabled","disabled");
                }
            })
        });
        $("#password2").blur(function () {
            let password1=$("#password1").val();
            if (password1=="") {
                return;
            }
            let password2=$(this).val();
            if (password1==password2) {
                $("#passwordCheck").html("密码一致");
                $("#submit_btn").attr("disabled",false);
            }else{
                $("#passwordCheck").html("密码不一致");
                $("#submit_btn").attr("disabled","disabled");
            }
        });
        //添加点击事件
        $("#btn_getCode").click(function () {
            //获取用户输入的手机号
            let telephone=$("#userPhone").val();
            //发送异步请求
            let url="${pageContext.request.contextPath}/frontUserMessage/sendSms.do";
            let data="telephone="+telephone;
            $.get(url, data, function (resp) {

            });
            //调用倒计时函数
            countDown(this);
        });
        //倒计时功能 60秒
        let num=10;
        function countDown(obj) {
            num--;
            if (num==0) {
                $(obj).prop("disabled",false);
                $(obj).val("重新发送验证码");
                num=10;
            }else{
                $(obj).prop("disabled",true);
                $(obj).val(num+"秒后，可以发送手机验证码");
                //一次性定时器，1秒调用一次
                setTimeout(function () {
                    //递归调用
                    countDown(obj);
                },1000);
            }
        }
        $("#smsCode").blur(function () {
            let smsCodeOne=$(this).val();
            let userPhone=$("#userPhone").val();
            if (smsCodeOne=="") {
                return;
            }
            let url="${pageContext.request.contextPath}/frontUserMessage/checkSmsCode.do";
            let data="smsCode="+smsCodeOne+"&userPhone="+userPhone;
            $.get(url,data,function (resp) {
                if (resp) {
                    $("#smsCodeCheck").html("验证码正确");
                    $("#submit_btn").attr("disabled",false);
                }else{
                    $("#smsCodeCheck").html("验证码错误");
                    $("#submit_btn").attr("disabled","disabled");
                }
            })
        });
    </script>
</form>
<!--注册手机 end-->

<!--copyright-->
<%@include file="common/common-bottom-help.jsp"%>


<script src="static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>
