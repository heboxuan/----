<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        ${countyDetail.name}政务信息咨询
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

    <script src="../static/common/js/thirdparty/jquery.min.js" type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/jquery.validate.min.js"  type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/jquery.form.js"  type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/jquery.webui-popover.js"  type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/layer/layer.js"  type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/tmpl.min.js"  type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/json2.js"  type="text/javascript"></script>
    <script src="../static/common/js/common.js"  type="text/javascript"></script>
    <script src="../static/common/js/tab.js"  type="text/javascript"></script>
</head>

<body>
<!--nav-->
<%@include file="../common/common-top-help.jsp"%>
<!--nav end-->

<script src="../static/www/js/forum.js" type="text/javascript"></script>
<script src="../static/www/js/threads.js-v=R25"  type="text/javascript"></script>

<div class="path_2j w1200 grey2">
    当前位置 ：
    <a href="../index.jsp" >领导留言板</a> > 北京市 &gt; ${countyDetail.name}
</div>
<div class="index_content w1200">
    <script type="application/javascript">
        var nav_fid = '638';
        console.info('fid=', nav_fid);
        $(function() {
            $('#' + nav_fid).addClass('actived');
        });
    </script>

    <div class="clearfix district_box02 w1200">
        <div class="fl"><strong>${countyDetail.name}</strong>
            <p>历史留言总量: <i class="red">${countyDetail.askNum}</i> 条　<span><br/></span>历史回复总量: <i class="red">${countyDetail.reNum}</i> 条</p>
        </div>

    </div>

    <div class="district_box03 w1200 clearfix">

        <div class="fl">
            <dl class="clearfix">
                <dt>
                    <h2><b><a href="" target="_blank" class="forumName" style="font-weight:bold;">${countyDetail.name}区委书记${countyLeaderOne.leaderName}</a></b></h2>
                </dt>

                <div style="width: 300px;margin-left:-10px;">
                    <a href="${pageContext.request.contextPath}/frontCity/messageList.do?id=${countyLeaderOne.id}"  class="message_index">查看留言</a>
                    <a href="${pageContext.request.contextPath}/frontCity/checkLogin.do?id=${countyLeaderOne.id}" class="message_index_color">我要留言</a>

                </div>

                <p class="tack_message">
                    <a href="../threads/list-fid=733.htm" style="margin-top:25px;">年度总留言量: <i class="red">539</i> 条 &nbsp;&nbsp;</a>
                    <span><br/></span>
                    <a href="../threads/list-fid=733&state=4.htm" >年度公开回复量: <i class="red">537</i> 条 &nbsp;&nbsp;</a>
                </p>
            </dl>
        </div>

        <div class="fr">
            <dl class="clearfix">
                <dt>
                    <h2>
                        <b><a href=""  target="_blank" class="forumName" style="font-weight:bold;">${countyDetail.name}区长${countyLeaderTwo.leaderName}</a></b>
                    </h2>
                </dt>

                <div style="width: 300px;margin-left:-10px;">
                    <a href="${pageContext.request.contextPath}/frontCity/messageList.do?id=${countyLeaderTwo.id}"  class="message_index">查看留言</a>
                    <a href="${pageContext.request.contextPath}/frontCity/checkLogin.do?id=${countyLeaderTwo.id}" class="message_index_color">我要留言</a>

                </div>

                <p class="tack_message">
                    <a href="../threads/list-fid=734.htm"  style="margin-top:25px;">年度总留言量: <i class="red">320</i> 条 &nbsp;&nbsp;</a>
                    <span><br/></span>
                    <a href="../threads/list-fid=734&state=4.htm" >年度公开回复量: <i class="red">317</i> 条 &nbsp;&nbsp;</a>
                </p>
            </dl>
        </div>

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
<%@include file="../common/common-bottom-help.jsp"%>

<script src="../static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>