<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        北京市委书记蔡奇 - 北京市 - 领导留言板 - 人民网
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
    <a href="../index.htm" >领导留言板</a> &gt; 地方领导 &gt;

    <a href="../forum/list-fid=4.htm" >北京市</a> &gt;

    <i>北京市委书记蔡奇</i>
</div>

<!--留言列表-->
<div class="liuyan_box02 w1200 clearfix">
    <ul class="clearfix title" id="tab_type" style="cursor: pointer;">
        <li>全部</li>
        <li>待回复</li>
        <li>办理中</li>
        <li>已办理</li>
        <a class="message_my" href="http://bad_redirect">
            <img src="../static/www/images/message_new.png" class="message_new">
            我要留言
        </a>
    </ul>

    <div class="clearfix list_box" style="display: block;">
        <ul class="showMoreNChildren" id="list_content">
            <li>
                <h2>
                    <b><a href="" target="_blank">1</a>
                        <em class="red">2</em>
                        <em class="orange">3</em>
                        <em class="green">4</em>
                        <em class="domainType">5</em>
                        <em class="domainType">6</em>
                    </b>
                    <div>
                        <em class="grey2">
                            <div  class="fav-image" id="fav_{%=o.tid%}">
                                <img src="${pageContext.request.contextPath}/static/www/images/collect_true.png" width="25" height="20" />
                                <i id="">7</i>
                            </div>
                        </em>
                    </div>
                </h2>
                <h3 class="fl grey2 clearfix">
                    <span>
                        123213123
                    </span>
                </h3>
                <p>
                    123123123123123123123
                    <i class="red">
                        <a href="" target="_blank">[查看全文]</a>
                    </i>
                </p>

            </li>
        </ul>
        <div class="showMorehandle more" id="show_more" style="display: block">加载更多</div>
    </div>
</div>
<!--留言列表 end-->

<%@ include file="../common/common-bottom-help.jsp"%>

<script src="${pageContext.request.contextPath}/static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>