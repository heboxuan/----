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

    <script src="static/common/js/thirdparty/jquery.min.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.validate.min.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.form.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.webui-popover.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/layer/layer.js"  type="text/javascript"></script>
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
<div class="clearfix nav01">
    <div class="w1200 grey1">
        <div class="fl">
            <a href="javascript:if(confirm('http://www.people.com.cn/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.people.com.cn/'" tppabs="http://www.people.com.cn/" target="_blank">人民网</a>|
            <a href="javascript:if(confirm('http://leaders.people.com.cn/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/'" tppabs="http://leaders.people.com.cn/" target="_blank">地方领导频道</a><img src="static/www/images/icon01.png" tppabs="http://liuyan.people.com.cn/static/www/images/icon01.png" width="18" height="18" />
            <a href="javascript:if(confirm('http://weibo.com/1880295725/profile?topnav=1&wvr=6  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/1880295725/profile?topnav=1&wvr=6'" tppabs="http://weibo.com/1880295725/profile?topnav=1&wvr=6" target="_blank">官方微博</a>
            <span class="wxh"><img src="static/www/images/icon02.png" tppabs="http://liuyan.people.com.cn/static/www/images/icon02.png" width="18" height="18"/><a href="#" target="_blank">微信号：dfldlyb</a><i><img src="static/www/images/wx_public_head.png" tppabs="http://liuyan.people.com.cn/static/www/images/wx_public_head.png" alt="微信号" /></i></span>
            <img src="static/www/images/icon03.png" tppabs="http://liuyan.people.com.cn/static/www/images/icon03.png" width="18" height="18" />
            <a href="javascript:if(confirm('http://leaders.people.com.cn/GB/178291/407226/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/GB/178291/407226/index.html'" tppabs="http://leaders.people.com.cn/GB/178291/407226/index.html" target="_blank">客户端</a>
            <span class="wxh"><img src="img/icon-xcx.png" tppabs="http://liuyan.people.com.cn/static/www/images/icon-xcx.png" width="18" height="18" /><a href="#">小程序：领导留言板</a><i><img src="static/www/images/wx_lite_head.png" tppabs="http://liuyan.people.com.cn/static/www/images/wx_lite_head.png" alt="小程序" /></i></span>
            <span><a target="_blank" href="help.htm" tppabs="http://liuyan.people.com.cn/help">帮助中心</a></span>
        </div>
        <div class="fr" id="loginName">

            <a href="login.htm" tppabs="http://liuyan.people.com.cn/login">登录</a>|
            <a href="regUser.htm" tppabs="http://liuyan.people.com.cn/regUser">注册</a>

        </div>
    </div>
</div>
<div class="clearfix nav02 w1200">
    <div class="fl" style="margin-left: -10px;"><img src="static/www/images/logo2.png" tppabs="http://liuyan.people.com.cn/static/www/images/logo2.png" width="450" height="60" /></div>
    <div class="fr adv-data" data-advpid="15"><img src="static/www/images/indicator_medium.gif" tppabs="http://liuyan.people.com.cn/static/www/images/indicator_medium.gif" /></div>

</div>
<div class="clearfix nav03">
    <div class="w1200">
        <div class="fl">
            <ul class="white">
                <a href="index.htm" tppabs="http://liuyan.people.com.cn/">
                    <li>首页</li>
                </a>
                <a href="home.htm" tppabs="http://liuyan.people.com.cn/home">
                    <li>留言</li>
                </a>

                <a href="javascript:if(confirm('http://leaders.people.com.cn/GB/178291/218130/434146/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/GB/178291/218130/434146/index.html'" tppabs="http://leaders.people.com.cn/GB/178291/218130/434146/index.html">
                    <li>政企直通车</li>
                </a>
                <a href="javascript:if(confirm('http://leaders.people.com.cn/GB/178291/218130/434275/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/GB/178291/218130/434275/index.html'" tppabs="http://leaders.people.com.cn/GB/178291/218130/434275/index.html">
                    <li>案例库</li>
                </a>
                <a href="javascript:if(confirm('http://leaders.people.com.cn/GB/178291/409148/412370/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/GB/178291/409148/412370/index.html'" tppabs="http://leaders.people.com.cn/GB/178291/409148/412370/index.html">
                    <li>反馈</li>
                </a>
                <a href="javascript:if(confirm('http://leaders.people.com.cn/GB/178291/409148/412371/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/GB/178291/409148/412371/index.html'" tppabs="http://leaders.people.com.cn/GB/178291/409148/412371/index.html">
                    <li>指数</li>
                </a>
                <a href="javascript:if(confirm('http://leaders.people.com.cn/GB/178291/409148/421788/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/GB/178291/409148/421788/index.html'" tppabs="http://leaders.people.com.cn/GB/178291/409148/421788/index.html">
                    <li>来信调查</li>
                </a>
                <a href="javascript:if(confirm('http://leaders.people.com.cn/GB/178291/429209/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/GB/178291/429209/index.html'" tppabs="http://leaders.people.com.cn/GB/178291/429209/index.html">
                    <li>解决了吗</li>
                </a>
            </ul>
        </div>
        <div class="fr">
            <div id="topbanner">
                <div class="inner">
                    <div class=" n1 ">
                        <img src="static/www/images/icon04.gif" tppabs="http://liuyan.people.com.cn/static/www/images/icon04.gif" alt="" />
                        <div class="search ">
                            <form name="sForm" id="sForm" action="http://liuyan.people.com.cn/threads/searchIndex" method="get">
                                <input type="text" placeholder="请输入关键词 回车一下" id="srchtxt" name="keywords">
                                <input type="submit" value="">
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
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

                    location.href = 'login-referer=http---liuyan.people.com.cn-org-index.htm' /*tpa=http://liuyan.people.com.cn/login?referer=http://liuyan.people.com.cn/org/index*/ ;

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

                        <a href="login-referer=http---liuyan.people.com.cn-org-index.htm" tppabs="http://liuyan.people.com.cn/login?referer=http://liuyan.people.com.cn/org/index">点击这里</a>

                </div>

            </div>
        </div>
    </div>
</div>

<!--copyright-->
<div class="bottom_copyright1 clearfix">
    <div class="clearfix w1200">
        <div class="fl left">
            <h2><i class="icon"></i>一块帮老百姓办事的留言板</h2>
            <p>
                <a href="javascript:if(confirm('http://leaders.people.com.cn/GB/178291/407226/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/GB/178291/407226/index.html'" tppabs="http://leaders.people.com.cn/GB/178291/407226/index.html" target="_blank">客户端下载</a><br/>
                <!--热线：4008-100-300（不受理投诉、留言）<br/> -->
                邮箱：leader@people.cn
            </p>
        </div>
        <div class="fl left" style="margin-left:-2rem">
            <h2>帮助中心</h2>
            <ul>
                <li>
                    <a href="help-cat=1.htm" tppabs="http://liuyan.people.com.cn/help?cat=1" target="_blank">新用户必读</a>
                </li>
                <li>&emsp;&emsp;
                    <a href="help-cat=2.htm" tppabs="http://liuyan.people.com.cn/help?cat=2" target="_blank">服务协议</a>
                </li>
                <li>
                    <a href="help-cat=3.htm" tppabs="http://liuyan.people.com.cn/help?cat=3" target="_blank">留言基础操作</a>
                </li>
                <li>
                    <a href="help-cat=4.htm" tppabs="http://liuyan.people.com.cn/help?cat=4" target="_blank">如何删除留言</a>
                </li>
                <li>&emsp;&emsp;
                    <a href="help-cat=5.htm" tppabs="http://liuyan.people.com.cn/help?cat=5" target="_blank">企业用户</a>
                </li>
                <li>
                    <a href="javascript:if(confirm('http://liuyan.people.com.cn/help?cat=6  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ������, �����������, ����Ŀ����ֹͣ��  \n\n�����ڷ������ϴ���?'))window.location='http://liuyan.people.com.cn/help?cat=6'" tppabs="http://liuyan.people.com.cn/help?cat=6" target="_blank">常见问题</a>
                </li>
                <li>
                    <a href="help-cat=7.htm" tppabs="http://liuyan.people.com.cn/help?cat=7" target="_blank">留言如何迅速得到办理</a>
                </li>
                <li>&emsp;&emsp;
                    <a href="help-cat=8.htm" tppabs="http://liuyan.people.com.cn/help?cat=8" target="_blank">联系我们</a>
                </li>
                <li>
                    <a href="help-cat=9.htm" tppabs="http://liuyan.people.com.cn/help?cat=9" target="_blank">隐私政策</a>
                </li>
                <li>
                    <a href="javascript:if(confirm('http://leaders.people.com.cn/GB/178291/218130/396788/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/GB/178291/218130/396788/index.html'" tppabs="http://leaders.people.com.cn/GB/178291/218130/396788/index.html" target="_blank">各地如何开通办理权限</a>
                </li>
            </ul>
        </div>
        <div class="fr right" style="margin-right: -4rem;">
            <p style="margin-right: 15px;"><img src="static/www/images/khd.png" tppabs="http://liuyan.people.com.cn/static/www/images/khd.png" width="104" border=0 alt="扫码下载客户端" />扫码下载客户端</p>
            <p><img src="static/www/images/gzh.jpg" tppabs="http://liuyan.people.com.cn/static/www/images/gzh.jpg" width="104" border=0 alt="扫码关注公众号" />扫码关注公众号</p>
        </div>
    </div>
</div>
<div class="bottom_copyright2 clearfix">
    <div class=" w1200">
        <div class="fl">人 民 网 版 权 所 有 ，未 经 书 面 授 权 禁 止 使 用</div>
        <div class="fr">
            &nbsp;
        </div>
    </div>
</div>

<script src="static/common/js/webdig_test.js" tppabs="http://liuyan.people.com.cn/static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>