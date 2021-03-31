<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="content-type" content="text/html;charset=GB2312" />
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>政务信息咨询</title>
    <meta name="keywords" content="领导留言板,部委领导,地方领导,对书记省长说,向书记省长建言,网友留言,网友建言,网络问政,社情民意,舆情,网络舆情,人民网" />
    <meta name="description" content="领导留言板,国内唯一的全国性领导干部留言板,为全国六十多位书记省长,数千位地市县级党政正职官员分别开通留言页面,供网友留言反映问题,供领导干部随时查阅，晓畅民意" />
    <meta name="filetype" content="1" />
    <meta name="publishedtype" content="1" />
    <meta name="pagetype" content="2" />
    <meta name="catalogs" content="178291" />

    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
    <!-- 调用样式表 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/page.css" type="text/css" media="all" charset="utf-8" />
    <style>
        .nav01 .fl span.wxh,
        .nav01 .fl span.xcx {
            position: relative;
        }

        .nav01 .fl span.wxh i,
        .nav01 .fl span.xcx i {
            display: none;
            position: absolute;
            top: 17px;
            left: 50%;
            margin-left: -50px;
        }

        .nav01 .fl span.wxh i img,
        .nav01 .fl span.xcx i img {
            width: 100px;
            height: 100px;
        }

        .nav01 .fl span.wxh:hover i,
        .nav01 .fl span.xcx:hover i {
            display: block;
        }
    </style>

    <script src="${pageContext.request.contextPath}/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.jdt.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/main.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/MyPage.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(document).ready(function(e) {

            var openid = 0;
            var tabTitle = $(".p2_left .title li");

            $(".headingNews").eq(openid).show();

            tabTitle.on("mouseenter", function(index) {
                var index = $(this).attr("data");
                tabTitle.removeClass("t01");
                $(this).addClass("t01");

                $(".headingNews").hide();
                $(".headingNews").eq(index).show();

            })
        });
    </script>

    <style>
        .page ul {
            padding: 0;
            min-width: 450px;
        }

        .page ul::after {
            content: '';
            display: block;
            clear: both;
        }

        .page ul li {
            float: left;
            width: auto;
            min-width: 32px;
            height: 30px;
            line-height: 30px;
            list-style: none;
        }

        .page a {
            color: #aaa;
            font-family: "微软雅黑";
            padding: 0 10px;
            text-decoration: none;
            display: block;
            text-align: center;
            border: 1px solid #ccc;
            border-left: none;
        }

        .page ul li:first-child a {
            border-left: 1px solid #ccc;
        }

        .page ul li a:hover {
            background-color: dodgerblue;
        }

        .page ul li a:hover {
            color: white;
        }

        .page .disabled a:hover {
            background-color: white;
            cursor: not-allowed;
            color: #aaa;
        }

        .page .active a {
            background-color: dodgerblue;
            color: white;
        }
    </style>
</head>

<body>
<%@ include file="common/common-top.jsp"%>

<!--p1-->
<div class="p1_con clearfix w1200">
    <div class="fl p1_left">
        <b class="hot white">今日热点</b>
        <h1>就地过年如何更有“年味儿”？ 一起来聊聊
        </h1>
        <p class="zy"></p>
        <ul class="clearfix hot_news">
            <li>
                建议开设农村信息化电子设备普及班
            </li>
            <li>
                希望火车候车站台能全面禁烟
            </li>
            <li>
                建议修改父母投靠子女落户规定
            </li>
            <li>
                出租车不打表乱加价
            </li>
            <li>
                感谢！用水问题解决了
            </li>
            <li>
                开发滨河公园 打造旅游名片
            </li>
        </ul>
        <ul class="clearfix pic_list">
            <li>
                <img src="img/MAIN202004231026464172083089568.jpg" width="165" height="100" border="0" alt="整治形式主义为基层减负" />
                <p>整治形式主义为基层减负</p>
            </li>
            <li>
                <img src="img/MAIN202004031123498641693369138.png" width="165" height="100" border="0" alt="安全生产问题线索征集" />
                <p>安全生产问题线索征集</p>
            </li>
            <li>
                <img src="img/MAIN202007291723228336530368538.jpg" width="165" height="100" border="0" alt="助力“六保” 期待您留言" />
                <p>助力“六保” 期待您留言</p>

            </li>
            <li>
                <img src="img/MAIN202009100914551210258213015.jpg" width="165" height="100" border="0" alt="谈谈垃圾分类的好办法" />
                <p>谈谈垃圾分类的好办法</p>
            </li>

        </ul>
    </div>
    <div class="fr p1_right">

        <div class="clearfix">
            <ul>
                <li>
                    <img src="img/MAIN202003181540000331007777996.jpg" width="400" height="240" border="0" /></a>
                </li>
            </ul>
        </div>

        <div class="clearfix box_liuyan" style="margin-top: 22px;">
            <dl>
                <dt class="fl">
                    <b class="white">给领导留言</b>
                    <p><strong class="red"><em><img src="${pageContext.request.contextPath}/img/icon25.gif" width="13" height="12" />昨日留言</em><i id="threadsNum" style="color: #d73240">123</i>条</strong><br />
                        <em>今年留言</em><i id="yearThreadsNum">123</i>条<br />
                        <em>历史总留言</em><i id="totalThreadsNum">123</i>条</p>
                </dt>
                <dd class="fr">
                    <b class="white">各区留言</b>
                    <p><strong class="blue"><em><img src="${pageContext.request.contextPath}/img/icon24.gif" width="13" height="12" />昨日回复</em><i id="answersNum" style="color: #467abb">123</i>条</strong><br />
                        <em>今年回复</em><i id="yearAnswersNum">123</i>条<br />
                        <em>历史总回复</em><i id="totalAnswersNum">123</i>条</p>
                </dd>
            </dl>
        </div>

    </div>
</div>
<!--p1 end-->

<!--p2-->
<div class="clearfix p2_con w1200">
    <div class="fl p2_left">
        <div class="box_huodong">
            <b class="white">话题</b>
            <p>
                <a href="" >安全生产</a>
                <a href="" >复产复市</a>
                <a href="" >形式主义</a>
                <a href="" >营商环境</a>
                <a href="" >毕业就业</a> 　</p>
        </div>

        <!--banner-->
        <div class="banner">
            <img src="${pageContext.request.contextPath}/img/MAIN202011101638042831641569436.png" width="740" height="100" border="0" alt="" />
        </div>
        <!--banner end-->

        <!--切换分类标题-->
        <ul class="title clearfix">
            <li class="t01" data="0" id="p2Aa_1" onmouseover="showmen2(1)" style="cursor:pointer">各方回应</li>
        </ul>
        <!--切换分类标题 end-->
        <!--切换内容4-->
        <div class="headingNews" >
        <div class="hdNews clearfix">
            <p>
                <strong>做好本职工作 更好服务群众</strong>
                <em class="grey2">　　“这次评选对象重点面向基层和工作一线，体现了党中央关心关爱基层干部的鲜明导向，我心里感到很温暖。…</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>做好本职工作 更好服务群众</strong>
                <em class="grey2">　　“这次评选对象重点面向基层和工作一线，体现了党中央关心关爱基层干部的鲜明导向，我心里感到很温暖。…</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>做好本职工作 更好服务群众</strong>
                <em class="grey2">　　“这次评选对象重点面向基层和工作一线，体现了党中央关心关爱基层干部的鲜明导向，我心里感到很温暖。…</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>做好本职工作 更好服务群众</strong>
                <em class="grey2">　　“这次评选对象重点面向基层和工作一线，体现了党中央关心关爱基层干部的鲜明导向，我心里感到很温暖。…</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>做好本职工作 更好服务群众</strong>
                <em class="grey2">　　“这次评选对象重点面向基层和工作一线，体现了党中央关心关爱基层干部的鲜明导向，我心里感到很温暖。…</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>做好本职工作 更好服务群众</strong>
                <em class="grey2">　　“这次评选对象重点面向基层和工作一线，体现了党中央关心关爱基层干部的鲜明导向，我心里感到很温暖。…</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>做好本职工作 更好服务群众</strong>
                <em class="grey2">　　“这次评选对象重点面向基层和工作一线，体现了党中央关心关爱基层干部的鲜明导向，我心里感到很温暖。…</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>做好本职工作 更好服务群众</strong>
                <em class="grey2">　　“这次评选对象重点面向基层和工作一线，体现了党中央关心关爱基层干部的鲜明导向，我心里感到很温暖。…</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>做好本职工作 更好服务群众</strong>
                <em class="grey2">　　“这次评选对象重点面向基层和工作一线，体现了党中央关心关爱基层干部的鲜明导向，我心里感到很温暖。…</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>做好本职工作 更好服务群众</strong>
                <em class="grey2">　　“这次评选对象重点面向基层和工作一线，体现了党中央关心关爱基层干部的鲜明导向，我心里感到很温暖。…</em>
            </p>
        </div>
        <div class="page_n clearfix">
            <a href="index1.html#fy01" tppabs="http://liuyan.people.com.cn/index1.html#fy01">上一页</a>&nbsp;
            <a href="index1.html#fy01" tppabs="http://liuyan.people.com.cn/index1.html#fy01">1</a>&nbsp;
            <a class="common_current_page">2</a>&nbsp;
            <a href="javascript:if(confirm('http://liuyan.people.com.cn/index3.html  \n\n该文件无法用 Teleport Ultra 下载, 因为 不可用, 或放弃了下载, 或项目即将停止。  \n\n你想在服务器上打开它?'))window.location='http://liuyan.people.com.cn/index3.html#fy01'" tppabs="http://liuyan.people.com.cn/index3.html#fy01">3</a>&nbsp;
            <a href="index4.html#fy01" tppabs="http://liuyan.people.com.cn/index4.html#fy01">4</a>&nbsp;
            <a href="index5.html#fy01" tppabs="http://liuyan.people.com.cn/index5.html#fy01">5</a>&nbsp;
            <a href="index6.html#fy01" tppabs="http://liuyan.people.com.cn/index6.html#fy01">6</a>&nbsp;&nbsp;
            <a href="javascript:if(confirm('http://liuyan.people.com.cn/index3.html  \n\n该文件无法用 Teleport Ultra 下载, 因为 不可用, 或放弃了下载, 或项目即将停止。  \n\n你想在服务器上打开它?'))window.location='http://liuyan.people.com.cn/index3.html#fy01'" tppabs="http://liuyan.people.com.cn/index3.html#fy01">下一页</a>
        </div>
        <!--all page-->
        <!--PageNo=6-->

    </div>
    <!--切换内容4 end-->

</div>
<div class="fr p2_right">
    <div class="p2_right_df">
        <h2>
            <em class="white">7×24h 留言</em>
            <span class="localName">换一批</span>
        </h2>

        <ul class="clearfix list_01">
            <li>
                <div style="font-size: 17px;">做好本职工作 更好服务群众</div>
                <em class="grey2">众”……连日来，受表彰代表表</em>
            </li>
            <li>
                <div style="font-size: 17px;">做好本职工作 更好服务群众</div>
                <em class="grey2">众”……连日来，受表彰代表表</em>
            </li>
            <li>
                <div style="font-size: 17px;">做好本职工作 更好服务群众</div>
                <em class="grey2">众”……连日来，受表彰代表表</em>
            </li>
            <li>
                <div style="font-size: 17px;">做好本职工作 更好服务群众</div>
                <em class="grey2">众”……连日来，受表彰代表表</em>
            </li>
            <li>
                <div style="font-size: 17px;">做好本职工作 更好服务群众</div>
                <em class="grey2">众”……连日来，受表彰代表表</em>
            </li>
            <li>
                <div style="font-size: 17px;">做好本职工作 更好服务群众</div>
                <em class="grey2">众”……连日来，受表彰代表表</em>
            </li>
            <li>
                <div style="font-size: 17px;">做好本职工作 更好服务群众</div>
                <em class="grey2">众”……连日来，受表彰代表表</em>
            </li>
            <li>
                <div style="font-size: 17px;">做好本职工作 更好服务群众</div>
                <em class="grey2">众”……连日来，受表彰代表表</em>
            </li>
        </ul>
    </div>

    <div style="margin-top: -30px;">
        <h2><em class="white">相关专题</em><i class="grey2">更多...</i></h2>
    </div>
    <div class="pic_box">
        <img src="img/MAIN202102081310285322482651105.jpg" width="400" height="120" border="0" />
        <img src="img/MAIN202012140941599216375296415.jpg" width="400" height="120" border="0" />
        <img src="img/MAIN202012030938027294448651409.jpg" width="400" height="120" border="0" />
    </div>

</div>
</div>
<!--p2 end-->
<%@ include file="common/common-bottom.jsp"%>
</body>

</html>
