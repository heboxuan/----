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

    <script src="static/common/js/thirdparty/jquery.min.js"type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.validate.min.js"type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.form.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.webui-popover.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/layer/layer.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/tmpl.min.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/json2.js"  type="text/javascript"></script>
    <script src="static/common/js/common.js"  type="text/javascript"></script>
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
<div class="path_2j w1200 grey2">当前位置 ：领导留言板 > 用户中心</div>
<div class="clearfix denglu_con w1200">
    <form name="loginform" id="loginform" action="" method="post">
        <input name="referer" type="hidden" value="">
        <input name="loginType" type="hidden" value="2">
        <ul class="form_box clearfix">
            <li><input name="userName" id="userName" type="text" placeholder="请输入手机号"><span class="notice"></span></li>
            <li>
                <input name="verCode" id="verCode" type="text" class="ver-code" placeholder="请输入手机验证码" autocomplete="off" />
                <span class="notice"></span>
                <span class="ver-code-btn" id="verCodeBtn">获取验证码</span>
            </li>

            <li>
                <i><a href="login.jsp" target="_self">账户密码登录</a></i>
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

        var isVerCode = true;
        $('#verCodeBtn').click(function() {
            var phone = $(" #userName ").val();
            if(!phone) {
                $('#userName').focus();
                layer.tips('请输入的手机号码', '#userName', {
                    time: 5000,
                    tips: [1, '#FF6666']
                });
                return false;
            }
            if(!(/^1[3456789]\d{9}$/.test(phone))) {
                $('#userName').focus();
                layer.tips('输入的手机号码有误，请重新填写', '#userName', {
                    time: 5000,
                    tips: [1, '#FF6666']
                });
                return false;
            }
            if(!isVerCode) {
                return;
            }
            isVerCode = false;
            $.ajax({
                url: CONTEXT_PATH + "/login/phoneVerifyCode",
                type: "post",
                data: {
                    "phone": phone
                },
                success: function(data) {
                    console.info(data);
                    data = JSON.parse(data);
                    var count = 120;
                    if(data.result == "success") {
                        const countDown = setInterval(() => {
                            if(count === 0) {
                                isVerCode = true;
                                $('#verCodeBtn').text('重新获取验证码').removeAttr('disabled');
                                clearInterval(countDown);
                            } else {
                                $('#verCodeBtn').attr('disabled', true);
                                $('#verCodeBtn').text(count + " 秒");
                            }
                            count--;
                        }, 1000);
                    } else {
                        var html = '<div style="margin-bottom: 20px"><p style="margin: 24px 30px 0;font-size: 16px;">';
                        if(data.responseData == "register") {
                            html += '你的手机号还没有注册,请前往注册后使用。';
                        } else {
                            html += data.responseData;
                        }
                        html += '</p></div>';
                        layer.open({
                            type: 1,
                            closeBtn: 1,
                            area: ['350px', '200px'],
                            anim: 5,
                            btn: ['确定'],
                            btnAlign: 'c',
                            skin: 'df-layer',
                            title: ['信息', 'font-size:18px;'],
                            content: html,
                            yes: function(index) {
                                if(data.responseData == "register") {
                                    window.location.href = "regUser.htm" /*tpa=http://liuyan.people.com.cn/regUser*/ ;
                                }
                                layer.close(index);
                            }
                        });
                    }
                }
            });
        });
    });
</script>

<!--copyright-->
<%@include file="common/common-bottom-help.jsp"%>

<script src="static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>