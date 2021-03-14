<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8">
    <meta content="all" name="robots">
    <title>
        领导留言板 - 人民网
    </title>
    <meta name="keywords" content="领导留言板">
    <meta name="description" content="领导留言板">
    <meta name="filetype" content="1">
    <meta name="publishedtype" content="1">
    <meta name="pagetype" content="2">
    <meta name="catalogs" content="XTW_0002000">
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


<div class="clearfix zhuce_con01">
    <span>
        <img src="${pageContext.request.contextPath}/img/icon22.png" width="127" height="126">
    </span>
    <h1 style="font-size:36px;font-weight: bold">留言成功！</h1>
    <p style="text-align:center;margin:20px 0px">
        <span style="display:inline;font-size: 18px;margin-right: 100px"><a href="${pageContext.request.contextPath}/index.jsp">去首页</a></span>
    </p>
    <h2 class="grey3"><i id="count">75</i> 秒后自动跳转至登录页面</h2>
</div>


<script language="javascript">
    $(document).ready(function() {
        nextCanDo();
    });

    var delayTime = 15;
    function nextCanDo(){
        $('#count').html(delayTime);
        delayTime -= 1;

        if(delayTime == 0){
            location.href= "${pageContext.request.contextPath}/index.jsp";
        } else {
            setTimeout(nextCanDo,1000);
        }
    }
</script>
<%@ include file="../common/common-bottom-help.jsp"%>



</body></html>
