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
                <strong>深耕实体经济 展现新的作为（治理者说）</strong>
                <em class="grey2">　　继续把握自身发展优势，继续深耕实体经济，打造一流营商环境，持续健全振兴实体经济的体制机制，把提升全产业链水平作为主攻方向　　　　2020年9月，习近平总书记在湖南考察时指出，着力打造国家重要先进制造业、具有核心竞争力的科技创新、内陆地区改革开放的高地，在推动高质量发展上闯出新...</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>奋力推动“十四五”时期商务高质量发展（人民要论）</strong>
                <em class="grey2">　　十三届全国人大四次会议通过的《中华人民共和国国民经济和社会发展第十四个五年规划和2035年远景目标纲要》（以下简称《纲要》），坚持以习近平新时代中国特色社会主义思想为指导，深入贯彻党的十九届五中全会精神，总结了“十三五”时期发展成就，实化量化了“十四五”时期我国经济社会发展的...</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>谱写铸牢中华民族共同体意识的西藏篇章（人民要论）</strong>
                <em class="grey2">　　习近平总书记在中央第七次西藏工作座谈会上强调：“要挖掘、整理、宣传西藏自古以来各民族交往交流交融的历史事实，引导各族群众看到民族的走向和未来，深刻认识到中华民族是命运共同体，促进各民族交往交流交融。”面对新形势新任务，我们要深入学习贯彻习近平总书记关于铸牢中华民族共同体意识的...</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>守护蓝色星球  共建绿色家园</strong>
                <em class="grey2">　　生命的存续离不开适宜的环境，天气、气候、水等自然环境要素与人类的生存发展息息相关。今年3月23日是第六十一个世界气象日，主题为“海洋、我们的气候和天气”，旨在帮助人们更加深入地理解海洋、气候和天气之间不可分割的联系，也是为了纪念联合国海洋科学促进可持续发展十年（2021—20...</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>聚法治之力 筑平安之基（声音）</strong>
                <em class="grey2">　　王国生 　　统筹发展和安全，切实增强人民群众的获得感、幸福感、安全感，努力实现高质量发展和高水平安全的良性互动 　　 　　习近平法治思想是马克思主义法治理论中国化最新成果，为推进全面依法治国提供了根本遵循和行动指南。 　　对习近平法治思想学...</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>深入贯彻新发展理念 推进水资源集约安全利用</strong>
                <em class="grey2">　　3月22日是第二十九届“世界水日”，第三十四届“中国水周”的宣传活动也同时拉开帷幕。联合国确定今年“世界水日”的主题是“珍惜水、爱护水”，我国纪念2021年“世界水日”和开展“中国水周”活动的宣传主题是“深入贯彻新发展理念，推进水资源集约安全利用”。　　党的十八大以来，以习近...</em>
            </p>
        </div>
        <div class="hdNews clearfix">
            <p>
                <strong>带头抓落实 善于抓落实 层层抓落实（声音）</strong>
                <em class="grey2">　　刘 宁 　　无论任何时候，该做的事，要知重负重、攻坚克难，顶着压力也要干；该负责的事，要挺身而出、冲锋在前，冒着风险也要担 　 　　反对空谈、强调实干、注重落实，是我们党的优良传统。习近平总书记强调：“真抓才能攻坚克难，实干才能梦想成真。”进入...</em>
            </p>
        </div>
        <div class="page_n clearfix">
            <a href="" >上一页</a>&nbsp;
            <a href="" >1</a>&nbsp;
            <a class="common_current_page">2</a>&nbsp;
            <a href="" >3</a>&nbsp;
            <a href="" >4</a>&nbsp;
            <a href="" >5</a>&nbsp;
            <a href="" >6</a>&nbsp;&nbsp;
            <a href="">下一页</a>
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
                <div style="font-size: 17px;">侯庄子站附近交通规划不合理</div>
                <em class="grey2">门头沟区区长喻华锋（代）2021-03-31 16:07</em>
            </li>
            <li>
                <div style="font-size: 17px;">希望加强河南村非机动车管理</div>
                <em class="grey2">顺义区委书记高朋2021-03-31 16:07</em>
            </li>
            <li>
                <div style="font-size: 17px;">前门西河沿大街的腾退政策</div>
                <em class="grey2">西城区委书记孙军民2021-03-31 16:07</em>
            </li>
            <li>
                <div style="font-size: 17px;">北京市朝阳区挚诚博大科技有限公司 钻法律漏洞</div>
                <em class="grey2">朝阳区委书记王灏2021-03-31 16:07</em>
            </li>
            <li>
                <div style="font-size: 17px;">北投集团不给付拆迁款</div>
                <em class="grey2">北京市市长陈吉宁2021-03-31 16:07</em>
            </li>
            <li>
                <div style="font-size: 17px;">大兴街心公园儿童游乐设施匮乏</div>
                <em class="grey2">大兴区区长王有国2021-03-31 16:07</em>
            </li>
            <li>
                <div style="font-size: 17px;">通州朝通嘉园老旧小区加装电梯问题</div>
                <em class="grey2">北京市委书记蔡奇2021-03-31 15:59</em>
            </li>
            <li>
                <div style="font-size: 17px;">关于朝阳区学校服务片的理解</div>
                <em class="grey2">朝阳区委书记王灏2021-03-31 15:59</em>
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
