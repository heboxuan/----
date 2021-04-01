<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        政务信息咨询
    </title>
    <meta name="keywords" content="领导咨询板" />
    <meta name="description" content="领导咨询板" />
    <meta name="filetype" content="1" />
    <meta name="publishedtype" content="1" />
    <meta name="pagetype" content="2" />
    <meta name="catalogs" content="XTW_0002000" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css-v=R36.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/message.css"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css"/>
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
<%@ include file="../common/common-top-help.jsp"%>
<!--nav end-->

<script type="text/javascript" src="../static/common/js/thirdparty/jquery.highlighter.min.js" tppabs="http://liuyan.people.com.cn/static/common/js/thirdparty/jquery.highlighter.min.js"></script>

<style type="text/css">
    .highlight {
        color: #F00;
        font-weight: bold;
        font-size: 18px;
    }

    .sl-btn input {
        padding: 0 4px;
        height: 30px;
        line-height: 30px;
        letter-spacing: 4px;
        text-indent: 2px;
        background: #e49960;
        color: #fff;
    }

    .sl-txt input {
        width: 151px;
        height: 26px;
        border: 1px solid #cdcdcd;
    }

    .liuyanqudao-div li img {
        width: 260px;
        height: 300px;
    }

    .deletion-btn-area {
        text-align: center;
    }

    .deletion-btn-area a {
        color: #fff;
        margin: 0px 30px;
        text-decoration: none;
    }

    .help-btn {
        display: inline-block;
        border: none;
        width: 100px;
        height: 30px;
        background: #d73240;
        text-align: center;
        line-height: 30px;
        color: #fff;
        border-radius: 6px;
    }
</style>

<script>
    function initMobileMenu() {
        var mobileBar = document.getElementById('help-bar')
        var sidebar = document.querySelector('.sidebar')
        var menuButton = mobileBar.querySelector('.menu-button')

        menuButton.addEventListener('click', function() {
            sidebar.classList.toggle('open')
        })

        document.body.addEventListener('click', function(e) {
            if(e.target !== menuButton && !sidebar.contains(e.target)) {
                sidebar.classList.remove('open')
            }
        })
    }

    function search(text) {
        $(".highlight").each(function() {
            var c = $(this).html();
            $(this).replaceWith(c);
        });

        var findFlag = false;
        for(var i = 1; i < 9; i++) {

            $("#content_" + i).hide();
            $("#content_" + i).each(function(index, domEle) {
                $(domEle).hide();
                $(domEle).find("li").each(function(index, ele) {
                    if($(ele).html().indexOf(text) > 0) {
                        findFlag = true;
                        $(ele).show();
                        $(ele).highlight(text, {
                            needUnhighlight: false,
                            hClass: "highlight"
                        });
                        $(domEle).show();
                        $("#content_" + i).show();
                    } else {
                        $(ele).hide();
                    }
                });

            });
        }
        if(findFlag) {
            $("#noresult").hide();
        } else {
            $("#noresult").show();
        }
    }

    function dosearch() {
        var value = $("#srchtxt").val();
        if(value == "") {
            alert("请输入关键词！");
            return;
        }
        search(value.trim());

    }

    $(function() {
        var cat = Common.getPageParamsByRequest(["cat"])["cat"];
        if(cat != undefined && cat != null && cat != "") {
            showmen(cat);
        }

        var top = parseInt('')
        if(top) {
            var anchorPoint = $('#' + top).offset().top;
            $(window).scrollTop(anchorPoint);
        }

        initMobileMenu();
    })

    window.onload = function() {
        var hashName = location.hash.replace(/^#/, "")
        var isM = $("#isMobile").val();
        if(hashName.length > 0 && isM) {
            var hashObjTop = $("a[name=" + hashName + "]").offset().top - 40;
            $(window).scrollTop(hashObjTop)
        }
    }
</script>

<div class="path_2j w1200 grey2">
    <p>当前位置 :
        <a href="../index.jsp" >领导咨询 </a>&nbsp;&gt;&nbsp;
        <a href="help-1.jsp" >帮助中心</a>
    </p>
</div>

<input type="hidden" id="isMobile" value="false">
<div id="help-bar">
    <a class="menu-button"></a>
</div>
<div id="help" class="col clearfix">
    <div class="col-ctn">

        <div class="col-left sidebar">
            <ul>
                <li>
                    <a href="help-1.jsp" id="title_1" >新用户必读</a>
                </li>
                <li>
                    <a href="help-2.jsp" id="title_2" >服务协议</a>
                </li>
                <li>
                    <a href="help-3.jsp" id="title_3" >咨询基础操作</a>
                </li>
                <li>
                    <a href="help-4.jsp" id="title_4" >如何删除咨询</a>
                </li>
                <li>
                    <a href="help-5.jsp" id="title_6" >常见问题</a>
                </li>
                <li>
                    <a href="help-6.jsp" id="title_7" class="active">咨询如何迅速得到办理</a>
                </li>
                <li>
                    <a href="help-7.jsp" id="title_8" >联系我们</a>
                </li>
                <li>
                    <a href="help-8.jsp" id="title_9" >隐私政策</a>
                </li>
            </ul>
        </div>

        <div class="col-right" id="noresult" style="display:none;">未找到相关内容！</div>


        <div class="col-right" id="content_7" style="display:block;">
            <div class="table">
                <h4>6 咨询如何迅速得到办理</h4>
                <ul>
                    <li>
                        <a href="#6-1">6.1 准确选择咨询给谁</a>
                    </li>
                    <li>
                        <a href="#6-2">6.2 准确选择适用的领域</a>
                    </li>
                    <li>
                        <a href="#6-3">6.3 准确描写标题</a>
                    </li>
                    <li>
                        <a href="#6-4">6.4 选择客观事实撰写咨询正文</a>
                    </li>
                </ul>
            </div>
            <div class="details">
                <div class="item">
                    <a name="6-1"></a>
                    <h5>6.1 准确选择咨询给谁</h5>
                    <ol>
                        <li>6.1.1 请选择诉求、咨询发生地的管理领导，跨省咨询因为超出管理辖区将无法获得响应而耽误咨询办理。</li>
                        <li>6.1.2 咨询提交给精确的管辖地领导，有助缩短咨询响应时间。如果无法确定响应地域，可以提交给上一级领导。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="6-2"></a>
                    <h5>6.2 准确选择适用的领域</h5>
                    <ol>
                        <li>6.2.1 城建：城市和乡村基础设施，城市和乡村秩序、住房、物业等相关问题。</li>
                        <li>6.2.2 交通：公路、铁路、民航、水路运输、交通秩序等相关问题。</li>
                        <li>6.2.3 三农：农业、农村、农民等相关问题。</li>
                        <li>6.2.4 环保：生态环境等相关问题。</li>
                        <li>6.2.5 教育：幼儿园、义务教育、高等教育、入学、入托等相关问题。</li>
                        <li>6.2.6 医疗：医疗、医药、医保等相关问题。</li>
                        <li>6.2.7 治安：社会治安、秩序管理等相关问题。</li>
                        <li>6.2.8 旅游：旅行交通、住宿、餐饮、景点、购物、导游、旅行社等相关问题。</li>
                        <li>6.2.9 就业：雇佣关系、劳动报酬、就业培训、劳动环境、劳动条件等相关问题。</li>
                        <li>6.2.10 文娱：演出、展览、休闲娱乐、电视影视、体育等相关问题。</li>
                        <li>6.2.11 金融：金融机构、金融服务等相关问题。</li>
                        <li>6.2.12 企业：企业经营、投资融资、企业注册等相关问题。</li>
                        <li>6.2.13 政务：政策等相关问题。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="6-3"></a>
                    <h5>6.3 准确描写标题</h5>
                    <ol>
                        <li>6.3.1 请用简要文字描述您的诉求。</li>
                        <li>示例：“如何给残疾电动车上牌”“校门口乱停车，进入小区道路受阻”。</li>
                        <li>6.3.2 请不要使用过于抽象的标题，如“请领导关注”“书记，求助”。精准的咨询标题便于分类整理咨询，缩短办理时间。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="6-4"></a>
                    <h5>6.4 选择客观事实撰写咨询正文</h5>
                    <ol>
                        <li>6.4.1 请在正文开头直接写明诉求。</li>
                        <li>示例：“请疏通XX小区门口道路” “请降低XX小学课业负担”，相反如果写成“XX小区门口有大量黑车”“XX小学生晚上没有时间玩”则不利于咨询办理，会增加办理时间。</li>
                        <li>6.4.2 正文诉求需包含以下要素：诉求的时间、原因、简要经过、涉及单位、涉及金额、造成的困难、影响程度以及期望的结果等。咨询缺少必要的要素，可能无法获得平台展示，进而诉求无法得到响应。</li>
                        <li>6.4.3 请客观的描述事实。对于正文中涉及的个人隐私，如电话号码、姓名、家庭住址、证件号码等请写入备注区。正文中涉及到隐私信息可能会导致咨询无法展示而不能得到办理。</li>
                        <li>6.4.4 需要写清当事各方的具体情况，不要有主观评价、侮辱、攻击性的言论，特别是没有事实根据的臆测。如“XX村长贪污”“可能有利益输出”，此类咨询可能无法获得展示。</li>
                        <li><b>请尽量避免只是情绪性表达而无实质描述。</b></li>
                        <li>6.4.5 除以上要素外，咨询描述尽量简明扼要，过多的修辞、宣泄会占用正文篇幅，增加办理机构的工作量，不利于诉求的尽快解决。</li>
                        <li>6.4.6 每条咨询请只描述一个诉求，不要在一条咨询中描述多个诉求，也不要把一个诉求拆分到多条咨询，这都不利于咨询的快速处理响应。</li>
                        <li>6.4.7 所有咨询反映的情况及诉求都以正文里的文字为唯一依据，图片、视频、备注等仅为辅助内容，正文如无具体文字内容则无法办理。</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

</div>
<script type="application/javascript">
    $(function() {
        var isM = $("#isMobile").val();
        if(isM == "true") {
            $(".nav01").hide();
            $(".nav02").hide();
            $(".nav03").hide();
        }

    });

    function checkToDel() {
        var isM = $("#isMobile").val();
        if(isM == "true") {
            layer.alert("仅支持在PC浏览器申请删帖", {
                icon: 5
            });
        } else {
            window.location.href = CONTEXT_PATH + "/deletion/index";
        }
    }
</script>

<%@ include file="../common/common-bottom-help.jsp"%>

<script src="../static/common/js/webdig_test.js" tppabs="http://liuyan.people.com.cn/static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>
