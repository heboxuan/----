<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        ${frontLeftMessage.title}政务信息咨询
    </title>
    <meta name="keywords" content="领导咨询板" />
    <meta name="description" content="领导咨询板" />
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
    <a href="../index.htm" >领导咨询板</a> &gt; 北京市 &gt;

    <i>${leaderDetail.leaderName}</i>
</div>


<div class="liuyan_box03 w1200 clearfix">
    <h2>
        <b>
            <span class="context-title-text">${frontLeftMessage.title}</span>
            <em class="red">${frontLeftMessage.isProcessAlias}</em>
            <em class="domainType">${frontLeftMessage.typeId}</em>
        </b>
    </h2>
    <div class="fav"></div>
    <h3 class="fl grey2 clearfix">

        <span>
            ${frontLeftMessage.time}
		</span>
    </h3>

    <p class="zoom content">${frontLeftMessage.passage}${frontLeftMessage.askPassage}<br>${frontLeftMessage.extraPassage}</p>

</div>

<div class="clearfix liuyan_box04 w1200 ">
    <ul>
        <li style="background-color: rgba(242, 242, 242, 1);">
            <h3>
                <i class="red">认领交办</i>
            </h3>
            <p class="zoom">
                您的咨询已经收到！会及时与您进行沟通。感谢您的宝贵咨询！</p>
            <h3>
                <em class="grey2">
                    咨询时间:&nbsp; ${frontLeftMessage.time}
                </em>
            </h3>
        </li>

    </ul>
</div>
<!--copyright-->
<%@ include file="../common/common-bottom-help.jsp"%>

<script src="${pageContext.request.contextPath}/static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>