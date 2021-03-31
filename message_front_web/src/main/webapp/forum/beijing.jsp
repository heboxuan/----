<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        ${beijingTotal.name}政务信息咨询
    </title>
    <meta name="keywords" content="领导留言板" />
    <meta name="description" content="领导留言板" />
    <meta name="filetype" content="1" />
    <meta name="publishedtype" content="1" />
    <meta name="pagetype" content="2" />
    <meta name="catalogs" content="XTW_0002000" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css-v=R36.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/message.css"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css" />
    <link href="/favicon.ico" rel="icon" type="image/x-icon" />

    <script src="../static/common/js/thirdparty/jquery.min.js" type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/jquery.validate.min.js" type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/jquery.form.js" type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/jquery.webui-popover.js" type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/layer/layer.js" type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/tmpl.min.js" type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/json2.js" type="text/javascript"></script>
    <script src="../static/common/js/common.js" type="text/javascript"></script>
    <script src="../static/common/js/tab.js" type="text/javascript"></script>
</head>

<body>
<!--nav-->
<%@ include file="../common/common-top-help.jsp"%>
<!--nav end-->

<script src="../static/www/js/forum.js" type="text/javascript"></script>
<script src="../static/www/js/threads.js-v=R25" type="text/javascript"></script>

<div class="path_2j w1200 grey2">
    当前位置 ：
    <a href="../index.jsp" >领导留言板</a> > ${beijingTotal.name}
</div>
<div class="index_content w1200">

    <div class="clearfix district_box02 w1200">
        <div class="fl"><strong>${beijingTotal.name}</strong>
            <p>历史留言总量: <i class="red">${beijingTotal.askNum}</i> 条　<span><br/></span>历史回复总量: <i class="red">${beijingTotal.reNum}</i> 条</p>
        </div>
    </div>

    <div class="district_box03 w1200 clearfix">

        <div class="fl">
            <dl class="clearfix">
                <dt>
                    <h2>
                        <b><a class="forumName" style="display: block;font-weight:bold;">${beijingTotal.name}市委书记${beijingLeaderOne.leaderName}</a></b>
                    </h2>
                </dt>

                <div style="width: 300px;margin-left:-10px;">
                    <a href="${pageContext.request.contextPath}/frontCity/messageList.do?id=${beijingLeaderOne.id}"  class="message_index">查看留言</a>
                    <a href="${pageContext.request.contextPath}/frontCity/checkLogin.do?id=${beijingLeaderOne.id}"  class="message_index_color">我要留言</a>

                </div>

                <p class="tack_message">
                    <a href="../threads/list-fid=539.htm"  style="margin-top:25px;">年度总留言量: <i class="red">19658</i> 条 &nbsp;&nbsp;</a>
                    <span><br/></span>
                    <a href="../threads/list-fid=539&state=4.htm" >年度公开回复量: <i class="red">18989</i> 条 &nbsp;&nbsp;</a>
                </p>
            </dl>
        </div>

        <div class="fr">
            <dl class="clearfix">
                <dt>
                    <h2>
                        <b><a class="forumName" style="display: block;font-weight:bold;">${beijingTotal.name}市长${beijingLeaderTwo.leaderName}</a></b>
                    </h2>
                </dt>

                <div style="width: 300px;margin-left:-10px;">
                    <a href="${pageContext.request.contextPath}/frontCity/messageList.do?id=${beijingLeaderTwo.id}"  class="message_index">查看留言</a>
                    <a href="${pageContext.request.contextPath}/frontCity/checkLogin.do?id=${beijingLeaderTwo.id}"  class="message_index_color">我要留言</a>
                </div>

                <p class="tack_message">
                    <a href="../threads/list-fid=540.htm"  style="margin-top:25px;">年度总留言量: <i class="red">5978</i> 条 &nbsp;&nbsp;</a>
                    <span><br/></span>
                    <a href="../threads/list-fid=540&state=4.htm" >年度公开回复量: <i class="red">5786</i> 条 &nbsp;&nbsp;</a>
                </p>
            </dl>
        </div>

    </div>

    <div class="district_box04 clearfix w1200">
        <ul class="clearfix">
            <c:forEach items="${countyTotal}" var="county">
                <li>
                    <b>
                        <a class="count-limit" href="${pageContext.request.contextPath}/frontCity/totalMessageTwo.do?id=${county.id}">${county.name}</a>
                    </b>
                    <p class="grey2">历史留言总量: <i class="red">${county.askNum}</i> 条</p>
                    <p class="grey2">历史回复总量: <i class="red">${county.reNum}</i> 条</p>
                </li>
            </c:forEach>
    </div>

    <script type="text/javascript">
        $(function() {
            for(var i = 0; i < $(".forumName").length; i++) {
                var ele = $($(".forumName").get(i));
                var fullname = ele.html();
                var seperateName = fullname.replace(/(书记|市长|区长|省长|主席|盟长|州长|行署专员|管理委员会主任|县长|管委会主任|行政长官)/, "$& ");
                ele.html(seperateName);
                ele.css("display", "");
            }
        });
    </script>
</div>

<!--copyright-->
<div class="bottom_copyright1 clearfix">
    <div class="clearfix w1200">
        <div class="fl left">
            <h2><i class="icon"></i>一块帮老百姓办事的留言板</h2>
            <p>
                邮箱：leader@people.cn
            </p>
        </div>
        <div class="fl left" style="margin-left:-2rem">
            <h2>帮助中心</h2>
            <ul>
                <li>
                    <a href="../help/help-1.jsp" target="_blank">新用户必读</a>
                </li>
                <li>&emsp;&emsp;
                    <a href="../help/help-2.jsp" target="_blank">服务协议</a>
                </li>
                <li>
                    <a href="../help/help-3.jsp" target="_blank">留言基础操作</a>
                </li>
                <li>
                    <a href="../help/help-4.jsp" target="_blank">如何删除留言</a>
                </li>
                <li>&emsp;&emsp;
                    <a href="../help/help-5.jsp" target="_blank">常见问题</a>
                </li>
                <li>
                    <a href="../help/help-6.jsp" target="_blank">留言如何迅速得到办理</a>
                </li>
                <li>
                    <a href="../help/help-7.jsp" target="_blank">联系我们</a>
                </li>
                <li>&emsp;&emsp;
                    <a href="../help/help-8.jsp" target="_blank">隐私政策</a>
                </li>
            </ul>
        </div>
        <div class="fr right" style="margin-right: -4rem;">
            <p style="margin-right: 15px;"><img src="../static/www/images/khd.png" width="104" border=0 alt="扫码下载客户端" />扫码下载客户端</p>
            <p><img src="../static/www/images/gzh.jpg" width="104" border=0 alt="扫码关注公众号" />扫码关注公众号</p>
        </div>
    </div>
</div>

<script src="../static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>
