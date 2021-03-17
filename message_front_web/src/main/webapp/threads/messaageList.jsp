<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        ${leaderDetail.leaderName} - 北京市 - 领导留言板 - 人民网
    </title>
    <meta name="keywords" content="领导留言板" />
    <meta name="description" content="领导留言板" />
    <meta name="filetype" content="1" />
    <meta name="publishedtype" content="1" />
    <meta name="pagetype" content="2" />
    <meta name="catalogs" content="XTW_0002000" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css-v=R36.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/message.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css">

    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js" type="text/javascript"></script>
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
<%@ include file="../common/common-top-help.jsp"%>
<!--nav end-->

<div class="path_2j w1200 grey2">
    当前位置 ：
    <a href="../index.htm" >领导留言板</a> &gt; 北京市 &gt;

    <i>${leaderDetail.leaderName}</i>
</div>

<!--留言列表-->
<div class="liuyan_box02 w1200 clearfix">
    <ul class="clearfix title" id="tab_type" style="cursor: pointer;">
        <li>留言信息展示（包括已经回复和未回复）</li>
        <a class="message_my" href="${pageContext.request.contextPath}/frontCity/totalMessageOne.do">
            <img src="${pageContext.request.contextPath}/static/www/images/message_new.png" class="message_new">
            我要留言
        </a>
    </ul>

    <div class="clearfix list_box" style="display: block;">
        <ul class="showMoreNChildren" id="list_content">
            <c:forEach items="${messageList}" var="message">
                <li>
                    <h2>
                        <b><a href="" target="_blank">${message.title}</a>
                            <em class="red">${message.isProcess}</em>
                            <em class="domainType">${message.field}</em>
                            <em class="domainType">${message.typeId}</em>
                        </b>
                    </h2>
                    <h3 class="fl grey2 clearfix">
                    <span>
                            ${message.time}
                    </span>
                    </h3>
                    <p>
                        123123123123123123123
                        <i class="red">
                            <a href="" target="_blank">[查看全文]</a>
                        </i>
                    </p>
                </li>
            </c:forEach>
        </ul>
        <div class="showMorehandle more" id="show_more" style="display: block">加载更多</div>
    </div>
</div>
<!--留言列表 end-->

<%@ include file="../common/common-bottom-help.jsp"%>

<script src="${pageContext.request.contextPath}/static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>