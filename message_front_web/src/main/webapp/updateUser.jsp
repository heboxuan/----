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

<div class="path_2j w1200 grey2">当前位置 ：领导咨询板 > 用户中心</div>

<form id="regForm" action="${pageContext.request.contextPath}/frontUserMessage/updateUserMessage.do" method="post">
    <input id="regType" name="id" value="${userInfo.id}" type="hidden" />
    <div class="clearfix zhuce_con02">
        <dl class="clearfix">
            <dt>用户昵称：</dt>
            <dd>
                <input id="username" name="username" type="text" class="t01" readonly="readonly" value="${userInfo.username}" />
            </dd>
            <dt class="t04">手机号码：</dt>
            <dd class="t04">
                <input id="userPhone" name="phone" type="text" class="t02" readonly="readonly" value="${userInfo.phone}" size="25" maxlength="11" />
            </dd>
            <dt>邮箱：</dt>
            <dd>
                <input id="email" name="email" type="text" class="t02" readonly="readonly" value="${userInfo.email}" />
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
        <input id="submit_btn" type="submit" value="更新信息" disabled/>
    </div>
    <script>
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

    </script>
</form>
<!--注册手机 end-->

<!--copyright-->
<%@include file="common/common-bottom-help.jsp"%>


<script src="static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>
