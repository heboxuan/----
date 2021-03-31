<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=11" >
    <meta http-equiv="Content-Language" content="utf-8"/>
    <meta content="all" name="robots"/>
    <title>
        政务信息咨询
    </title>
    <meta name="keywords" content="领导留言板"/>
    <meta name="description" content="领导留言板"/>
    <meta name="filetype" content="1"/>
    <meta name="publishedtype" content="1"/>
    <meta name="pagetype" content="2"/>
    <meta name="catalogs" content="XTW_0002000"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css-v=R36.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/message.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css">
    <link href="/favicon.ico" rel="icon" type="image/x-icon" />

    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.validate.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.form.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.webui-popover.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/layer/layer.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/tmpl.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/json2.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/common.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/tab.js" type="text/javascript"></script>
</head>

<body>

<!--nav-->
<%@ include file="/common/common-top-help.jsp"%>
<!--nav end-->

<script src="${pageContext.request.contextPath}/static/common/js/pagination.ajax.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/www/js/user.js?v=2" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/common/js/watermark.js?v=1" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        User.initUserThreadsPage();
    });
</script>

<div class="path_2j w1200 grey2">当前位置 ：领导留言板 > 用户中心</div>

<div class="clearfix xiugai_con w1200">


    <h2 class="title">
        <em><img src="${pageContext.request.contextPath}/img/icon24.png" width="32" height="32" />
            <b>您好，${userInfo.username}</b>
        </em>
        <i>
            <a style="color:red;font-weight: bold">用户中心</a>|
            <a href="http://sso.people.com.cn/u/changepwd" target="_blank">修改密码</a>|
            <a href="${pageContext.request.contextPath}/help/help-1.jsp" target="_blank">帮助手册</a>|
            <a href="${pageContext.request.contextPath}/frontUserMessage/logut.do">退出</a>|
        </i>
    </h2>
</div>
<div class="clearfix w1200 yonghu02_con">
    <div class="fl">
        <ul>
            <li >
                <a href="${pageContext.request.contextPath}/frontUserMessage/userCenterUnRes.do">待回复</a>
            </li>
            <li  class="t01 white" >
                <a href="${pageContext.request.contextPath}/frontUserMessage/userCenterAlRes.do">已回复</a>
            </li>
<%--            <li  >--%>
<%--                <a href="/user/threads?type=2">未展示</a>--%>
<%--            </li>--%>
        </ul>
    </div>

    <div class="fr" id="listData">
        <ul id="list_content" class="clearfix">
            <c:forEach items="${userAllists}" var="userAllist">
                <li class="watermark_dcl">
                    <h2>
                        <a href="${pageContext.request.contextPath}/frontCity/messageDetail.do?id=${userAllist.id}" target="_blank">
                            <i class="grey3"> ${userAllist.passage}${userAllist.askPassage}...</i>
                        </a>
                    </h2>
                </li>
            </c:forEach>

        </ul>

    </div>
</div>


<!--copyright-->
<%@ include file="/common/common-bottom-help.jsp"%>

<script src="/static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>
</html>
