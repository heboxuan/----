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
    <meta name="keywords" content="领导咨询板" />
    <meta name="description" content="领导咨询板" />
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

    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.validate.min.js"type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.form.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.webui-popover.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/layer/layer.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/tmpl.min.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/json2.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/common.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/tab.js"  type="text/javascript"></script>
</head>

<body>
<!--nav-->
<%@include file="common/common-top-help.jsp"%>
<!--nav end-->

<script src="static/www/js/user.js-v=1" type="text/javascript"></script>
<script src="static/common/js/thirdparty/md5.min.js"  type="text/javascript"></script>
<style>
    .ver-code {
        position: absolute;
    }

    .ver-code-btn {
        position: relative;
        display: inline-block;
        width: 110px;
        height: 32px;
        left: 200px;
        top: 5px;
        text-align: center;
        line-height: 32px;
        color: #cccccc;
        cursor: pointer;
        border-left: 1px solid #cccccc;
    }
</style>
<div class="path_2j w1200 grey2">当前位置 ：领导咨询板 > 用户中心</div>
<div class="clearfix denglu_con w1200">
    <form name="loginform" id="loginform" action="${pageContext.request.contextPath}/frontUserMessage/loginByPhone.do" method="post">
        <ul class="form_box clearfix">
            <li>
                <input id="telephone" name="telephone" type="text" placeholder="请输入手机号" maxlength="11">
            </li>
            <li>
                <input name="verCode" id="verCode" type="text" class="ver-code" placeholder="请输入手机验证码" style="width: 180px" />
                <button class="ver-code-btn" id="verCodeBtn" style="border: none; width: 100px; color: black" >获取验证码</button>
            </li>

            <li>
                <i><a href="login.jsp" target="_self">账户密码登录</a></i>
            </li>
        </ul>
        <div class="input01"><input name="" id="submit_btn" type="submit" value="登 录" disabled="disabled"/></div>
        <%
            String message=(String)request.getAttribute("message");
            if (message!=null) {
        %>
        <script>
            alert("${requestScope.message}");
        </script>
        <%
            }
        %>
        <div class="box03 clearfix" style="font-size: 16px;text-align: center">还没有账号？<i class="red"><a href="regUser.jsp" >注册新账号</a></i></div>
    </form>
</div>

<script>
    $("#telephone").blur(function () {
        let userPhone=$(this).val();
        if (userPhone=="") {
            return;
        }
        let url="${pageContext.request.contextPath}/frontUserMessage/checkUserPhone.do";
        let data="userPhone="+userPhone;
        $.get(url,data,function (resp) {
            if (!resp) {
                $("#submit_btn").attr("disabled",false);
            }else{
                alert("无此手机号");
                $("#submit_btn").attr("disabled","disabled");
            }
        })
    });

    //添加点击事件
    $("#verCodeBtn").click(function () {
        //获取用户输入的手机号
        let telephone=$("#telephone").val();
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
        if (num == 0) {
            $(obj).prop("disabled", false);
            $(obj).html("重新发送验证码");
            num = 10;
        } else {
            $(obj).prop("disabled", true);
            $(obj).html(num + "秒");
            //一次性定时器，1秒调用一次
            setTimeout(function () {
                //递归调用
                countDown(obj);
            }, 1000);
        }
    }

    $("#verCode").blur(function () {
        let smsCodeOne=$(this).val();
        let userPhone=$("#telephone").val();
        if (smsCodeOne=="") {
            return;
        }
        let url="${pageContext.request.contextPath}/frontUserMessage/checkSmsCode.do";
        let data="smsCode="+smsCodeOne+"&userPhone="+userPhone;
        $.get(url,data,function (resp) {
            if (resp) {
                $("#submit_btn").attr("disabled",false);
            }else{
                alert("验证码错误");
                $("#submit_btn").attr("disabled","disabled");
            }
        })
    });
</script>

<!--copyright-->
<%@include file="common/common-bottom-help.jsp"%>

<script src="static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>