<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--nav-->
<div class="clearfix nav01">
    <div class="w1200 grey1">
        <div class="fl">
            <a href="">人民网</a>|<a href="">地方领导频道</a>
            <img src="${pageContext.request.contextPath}/img/icon01.png" width="18" height="18" />
            <a href="">官方微博</a>
            <span class="wxh"><img src="${pageContext.request.contextPath}/img/icon02.png" width="18" height="18" /><a href="#" >微信号：dfldlyb</a><i><img src="${pageContext.request.contextPath}/img/wx_public.png" alt="微信号" /></i></span>
            <img src="${pageContext.request.contextPath}/img/icon03.png" width="18" height="18" />
            <a href="" >客户端</a>
            <span class="xcx"><img src="${pageContext.request.contextPath}/img/icon-xcx.png" width="18" height="18" /><a href="#">小程序：领导留言板</a><i><img src="${pageContext.request.contextPath}/img/wx_lite.png" alt="小程序" /></i></span>
            <span><a target="_blank" href="${pageContext.request.contextPath}/help/help-1.jsp" >帮助中心</a></span></div>
        <div class="fr">
            <c:choose>
                <c:when test="${not empty sessionScope.userInfo}">
                    <a href="${pageContext.request.contextPath}/frontUserMessage/userCenterUnRes.do">${sessionScope.userInfo.username},欢迎您</a>|
                    <a href="${pageContext.request.contextPath}/frontUserMessage/logut.do">退出</a>
                </c:when>
                <c:otherwise>
                    <a href="${pageContext.request.contextPath}/login.jsp" id="login-point" target="_blank">登录</a>|
                    <a href="${pageContext.request.contextPath}/regUser.jsp" target="_blank">注册</a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>
<div class="clearfix nav02 w1200">
    <div class="fl" style="margin-left: -10px;">
        <img src="${pageContext.request.contextPath}/img/logo2.png" width="450" height="60" />
    </div>
    <div class="fr adv-data" data-advpid="15">
        <img src="${pageContext.request.contextPath}/img/MAIN202102101100463119401693479.jpg" width="725" height="70" border="0" alt="我给两会捎句话" />
    </div>
</div>
<div class="clearfix nav03">
    <div class="w1200">
        <div class="fl">
            <ul class="white">
                <li>
                    <a href="${pageContext.request.contextPath}/index.jsp" target="_blank">首页</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/frontCity/totalMessageOne.do" target="_blank">留言</a>
                </li>
                <li>
                    <a href="" target="_blank">政企直通车</a>
                </li>
                <li>
                    <a href="" target="_blank">案例库</a>
                </li>
                <li>
                    <a href="" target="_blank">反馈</a>
                </li>
                <li>
                    <a href="" target="_blank">指数</a>
                </li>
                <li>
                    <a href="" target="_blank">来信调查</a>
                </li>
                <li>
                    <a href="" target="_blank">解决了吗</a>
                </li>
                <style>
                    .nav03 .fl ul li {
                        padding: 0 19px;
                    }
                </style>
            </ul>
        </div>
    </div>
</div>
<!--nav end-->
