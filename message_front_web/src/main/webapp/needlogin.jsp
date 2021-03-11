<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        领导留言板 - 地方领导频道 - 人民网
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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css" />
    <link href="/favicon.ico" rel="icon" type="image/x-icon" />

    <script src="js/jquery-3.2.1.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.validate.min.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.form.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.webui-popover.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/layer/layer.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/tmpl.min.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/json2.js"  type="text/javascript"></script>
    <script src="static/common/js/common.js"  type="text/javascript"></script>
    <script src="static/common/js/tab.js"  type="text/javascript"></script>
</head>

<body>
<!--nav-->
<%@ include file="/common/common-top-help.jsp"%>
<!--nav end-->

<div class="path_2j w1200 grey2">
    当前位置 ：
    <a href="#">领导留言板</a> &gt; 消息提示
</div>

<script language="javascript">
    $(document).ready(function() {
        function jump(count) {
            window.setTimeout(function() {
                count--;
                if(count > 0) {
                    $('#count').text(count);
                    jump(count);
                } else {

                    location.href = '${pageContext.request.contextPath}/login.jsp';

                }
            }, 1000);
        }

        jump(3);
    });
</script>

<div id="body">
    <div class="inner">
        <div class="uc-box">
            <div class="uc-bd">

                <div class="w1200 clearfix search_none">
                    请先登录留言板再发表留言
                    <br/>
                    <p>如果浏览器没有自动跳转,请
                        <a href="${pageContext.request.contextPath}/login.jsp" >点击这里</a>
                </div>

            </div>
        </div>
    </div>
</div>

<!--copyright-->
<%@ include file="/common/common-bottom-help.jsp"%>

<script src="static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>