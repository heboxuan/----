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
                    <a href="help-1.jsp" id="title_1">新用户必读</a>
                </li>
                <li>
                    <a href="help-2.jsp" id="title_2" class="active" >服务协议</a>
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
                    <a href="help-6.jsp" id="title_7" >咨询如何迅速得到办理</a>
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



        <div class="col-right" id="content_2" style="display:block;">
            <div class="table">
                <h4>2 服务协议</h4>
                <ul>
                    <li>
                        <a href="#2-1">2.1 总则</a>
                    </li>
                    <li>
                        <a href="#2-2">2.2 用户权利与责任</a>
                    </li>
                    <li>
                        <a href="#2-3">2.3 咨询及评价涉及以下内容将无法获得公开展示</a>
                    </li>
                    <li>
                        <a href="#2-4">2.4 笔名管理规定</a>
                    </li>
                    <li>
                        <a href="#2-5">2.5 账号注销</a>
                    </li>
                    <li>
                        <a href="#2-6">2.6 隐私权保护</a>
                    </li>
                    <li>
                        <a href="#2-7">2.7 版权声明</a>
                    </li>
                    <li>
                        <a href="#2-8">2.8 免责声明</a>
                    </li>
                    <li>
                        <a href="#2-9">2.9 违反服务协议的处理</a>
                    </li>
                    <li>
                        <a href="#2-10">2.10 协议修改</a>
                    </li>
                </ul>
            </div>
            <div class="details">
                <div id="2" class="item">
                    <a name="2-1"></a>
                    <h5>2.1 总则</h5>
                    <ol>
                        <li>为保证《领导咨询板》的有序运营，请您务必仔细阅读并充分理解协议内容，这是您使用《领导咨询板》的先决条件。您的下载、安装、使用、注册、登录行为都将会被视为同意本协议的全部内容。本协议依据国家有关法律、法规及相关管理机构章程制定。</li>
                        <li><b>《领导咨询板》为您搭建与领导沟通的桥梁，不干涉双方沟通结果。《领导咨询板》会积极携手各方更好地解决问题，但作为非主管部门，《领导咨询板》无法保证您的咨询一定能获得公开展示（有关咨询能否展示可参阅“2.3咨询及评价涉及以下内容将无法获得公开展示”），也不保证您的咨询能获得回复，亦不保证您的诉求一定能获得解决。</b></li>
                        <li>2.1.1 《领导咨询板》给您的通知仅作为一种信息提醒或建议。</li>
                        <li>2.1.2 《领导咨询板》有权按照相关法律法规、相关管理部门的要求，以及本平台的编辑方针，针对包括但不限于咨询、评价、回复等的全部内容进行审查、处理。</li>
                        <li>2.1.3 咨询的回复内容由机构用户发布。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="2-2"></a>
                    <h5>2.2 用户权利与责任</h5>
                    <ol>
                        <li>2.2.1 为了能使用本服务，按照中国法律的要求，用户需同意以下事项：依相关注册提示填写信息，并确保相关资料的真实性、有效性和合法性。若用户提供任何违法、不道德或人民网认为不适合在人民网及本平台上展示的资料，或者人民网有理由怀疑您的行为属于程序或恶意操作，人民网有权无须事先通知即可暂停或终止您使用账号，并拒绝您于现在和未来使用本服务之全部或任何部分。</li>
                        <li>2.2.2 人民网无须对用户的任何注册或登记资料承担任何责任，包括但不限于鉴别、核实任何注册或登记资料的真实性、正确性、完整性、适用性及/或是否为最新资料的责任。</li>
                        <li>2.2.3 普通用户和企业用户可使用如下服务：在本平台相关地方板块或部委板块内发表并分享咨询；对其它网友咨询进行关注；对“官方给我的回复”进行评价。机构用户可进行咨询办理和回复。</li>
                        <li>2.2.4 用户在《领导咨询板》所进行的所有活动应遵守中华人民共和国法律法规，遵守人民网相关管理制度，遵守本平台的管理条例。<b>为了建立健康的网络交流环境，用户需遵守网络道德，注意网络礼仪，做到文明上网。请依法、据实发布信息，不要填写虚假信息。不得捏造事实、诬陷诽谤他人、泄露他人隐私。</b></li>
                        <li>为避免泄露个人隐私信息，建议不要在公开展示区填写个人信息，您可将联系方式、身份证件等填写在备注内容区。</li>
                        <li><b>同意本协议视为知悉并同意：如由于用户公开自己或其他第三方（包括但不限于个人、法人、非法人组织）信息造成的相关责任，由用户自身承担。</b></li>
                        <li><b>2.2.5 用户在《领导咨询板》发布的一切内容（包含但不限于通过《领导咨询板》目前各产品功能如咨询、评价、回复等）仅代表用户个人观点，不视为人民网或《领导咨询板》赞同其内容之观点或证明其内容的真实性。因用户在《领导咨询板》内发布内容所产生的纠纷由用户负责处理，产生的法律责任由用户承担，该责任包括但不限于给人民网及其他第三方（个人、法人及非法人组织）造成的直接或间接法律责任。</b>在法律允许的范围内，人民网和《领导咨询板》对上述内容予以免责。</li>
                        <li>2.2.6 用户要注意保管好已注册登记的用户名及密码，如用户发现账号遭他人非法使用，应立即通知《领导咨询板》管理员。因黑客行为或用户自身原因导致账号、密码遭他人非法使用，人民网不承担任何责任。</li>
                        <li>2.2.7 如用户认为自己在《领导咨询板》的权益受到侵害，有权根据《领导咨询板》相关规定进行投诉申诉。</li>
                        <li>2.2.8 用户有权对《领导咨询板》的管理提出批评、意见、建议。</li>
                        <a name="2-2-9"></a>
                        <li>2.2.9 用户可发布一定数量的咨询。</li>
                        <li>2.2.10 除非本协议另有其它明示规定，人民网及本平台增加或强化目前本服务的任何新功能，包括所推出的新产品，均受本使用协议之规范。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="2-3"></a>
                    <h5>2.3 咨询及评价涉及以下内容将无法获得公开展示</h5>
                    <ol>
                        <li>2.3.1 反对宪法确定的基本原则的；</li>
                        <li>2.3.2 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；</li>
                        <li>2.3.3 损害国家荣誉和利益的；</li>
                        <li>2.3.4 煽动民族仇恨、民族歧视，破坏民族团结的；</li>
                        <li>2.3.5 煽动或参与非法集会、结社、游行、示威、聚众扰乱社会秩序的；</li>
                        <li>2.3.6 破坏国家宗教政策，宣扬邪教和封建迷信的；</li>
                        <li><b>2.3.7 属于人大、法院、检察院、公安等职权范围内的来访事项的；已经进入司法程序或已经办结的；已通过信访、纪检监察等途径反映的；</b></li>
                        <li>2.3.8 对人民法院生效的民事判决、裁定、调解书不服的；</li>
                        <li>2.3.9 已经在本栏目受理或正在办理的，或已经复查复核依法终结备案的；</li>
                        <li>2.3.10 散布谣言，扰乱社会秩序，破坏社会稳定的；</li>
                        <li>2.3.11 含有淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；</li>
                        <li>2.3.12 以非法民间组织名义活动的；</li>
                        <li>2.3.13含有针对（包含但不限于）国家、种族、地域、肤色、性别、年龄、生理特征、性取向、宗教、民族、社会经济状况等的歧视和仇恨言论的；</li>
                        <li><b>2.3.14 含有虚假、诈骗、侮辱、胁迫、侵害他人隐私、骚扰、诽谤、中伤、侵害、粗俗、猥亵、嘲讽或其他道德上令人反感内容、不友善行为的；</b></li>
                        <li>2.3.15 明显缺乏章法、错别字过多、内容晦涩空泛的；<b>正文无文字描述或文字描述不清晰、不完整的；</b></li>
                        <li>2.3.16 含有法律、法规，以及相关管理部门禁止展示的内容的；</li>
                        <li><b>2.3.17 未经公开报道、未经证实的消息（发布本人亲身经历的事件需如实提供个人信息，以及佐证事件的材料）；</b></li>
                        <li>2.3.18 未经授权，在公开展示区（包含但不限于标题、正文、备注、附件、位置定位）内发布可能泄露或侵犯第三方隐私或其他合法权益内容的；</li>
                        <li>2.3.19 可能妨害第三方权益的文件或者信息，例如（包括但不限于）病毒代码、黑客程序、软件破解注册信息；</li>
                        <li>2.3.20 抄袭及剽窃他人的作品。转载及引用请注明出处，不得发表原作者禁止转载的文章；</li>
                        <li>2.3.21 缺乏理性讨论诚意、无理纠缠、恶意灌水等浪费版面资源的；重复咨询，测试咨询；过于私人化的聊天、灌水、无意义刷屏的；含有引战行为或过于偏激的主观判断的；含有激进时政、意识形态方面的内容的；</li>
                        <li>2.3.22 用户在咨询中表示不愿意公开展示，或不愿意让第三方知晓的；</li>
                        <li>2.3.23 冒充其他任何人或机构，或以虚伪不实的方式陈述或谎称与任何人或机构有关的；有意模仿或冒充他人注册名或冒充本平台管理人员发布信息的；</li>
                        <li>2.3.24 破坏咨询板秩序，侵害本平台及人民网利益的；滥用产品功能的；破坏本平台生态及氛围的；发布与《领导咨询板》主旨无关内容的；</li>
                        <li>2.3.25 未经同意，张贴任何形式的广告；</li>
                        <li>2.3.26 在咨询的标题和内容中加入各种特殊符号的；</li>
                        <li>2.3.27 在咨询（包括但不限于标题、正文、附件等）中加入如下符号组合：ASIIC码、区位码字符、汉字空字符、汉字全角字符、键盘上位字符（由按SHIFT引出的符号）等字符；</li>
                        <li><b>2.3.28 同一账号短时间内连续多次咨询，并造成版面被同一账号的咨询大面积冲击等恶意行为；不同账号短时间内连续多次就同一事项咨询，并造成版面被反映同一事项的咨询大面积冲击等行为；</b></li>
                        <li>2.3.29 咨询事项应一事一单，请勿就同一事项重复咨询，请勿在一条咨询中对不同主体提出诉求。</li>
                        <li>2.3.30 申请政府信息公开的；申请行政复议的；申请行政诉讼的；申请立案的；申请执行的；</li>
                        <li>2.3.31 咨询内容与用户所选择的板块、话题、类型等不匹配的；咨询内容不属于用户所选择的相关板块办理单位职责范围内的；</li>
                        <li>2.3.32 询问或投诉受理状态、办理进度、办理结果的；询问或投诉其他平台或渠道的受理状态、办理进度、办理结果的；</li>
                        <li>2.3.33 因工作需要开设的特定征集活动中的；</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="2-4"></a>
                    <h5>2.4 笔名管理规定</h5>
                    <ol>
                        <li>2.4.1 请勿以党和国家领导人或其他具有社会影响的真实姓名、字号、艺名、笔名注册；</li>
                        <li>2.4.2 请勿以国家名称、国家机关、地方各级党政机关或其他机构的名称注册；</li>
                        <li>2.4.3 请勿以社会公共机构名称、社会名人姓名和媒体名称注册；</li>
                        <li>2.4.4 请勿以外国国家名称、国际组织名称、境外政要姓名、境外媒体名称注册；</li>
                        <li>2.4.5 请勿注册不文明、不健康的笔名；</li>
                        <li>2.4.6 请勿注册易产生歧义、引起他人误解的笔名；</li>
                        <li>2.4.7 请勿注册图形符号的笔名；</li>
                        <li>2.4.8 注册笔名只能使用汉字、英文字母、数字及短横线，不可使用如下符号组合：ASIIC码、区位码字符、汉字空字符、汉字全角字符、键盘上位字符（由按SHIFT引出的符号）字符；</li>
                        <li>2.4.9 对于和其他用户笔名名称相近的笔名并可能引起争执的，《领导咨询板》将支持先注册的笔名用户，而保留取消后注册笔名用户的权利；</li>
                        <li>2.4.10 对于严重违反《领导咨询板》规则的，人民网保留随时取消其笔名的权力；</li>
                        <li>2.4.11 笔名一旦注册不能更改；</li>
                        <li>2.4.12 用户需对自己的笔名和密码安全负责，如遗失密码或遗忘用户名，可通过《领导咨询板》“找回密码”功能重新获得密码。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="2-5"></a>
                    <h5>2.5 注销账号</h5>
                    <ol>
                        <li>您可先登录《领导咨询板》客户端，点击“我的”，点击页面右上角“设置”，选择“账号与安全”，点击“注销账号”，并按照相关步骤进行操作。</li>
                        <li>在您注销您的《领导咨询板》账号之前，请您充分阅读、理解并同意下列事项： </li>
                        <li>2.5.1 您所申请注销的账号应当是您本人依照《领导咨询板》产品《用户服务协议》的约定注册的账号。您应当依照产品提示进行账号注销。</li>
                        <li>2.5.2 注销账号是不可恢复的操作，您将无法再使用该账号或找回您添加或绑定在该账号上的任何内容，包括但不限于头像、昵称、内容收藏、阅读历史、评论内容信息。您应自行备份该账号相关的信息和数据。操作之前，请确认与该账号相关的所有交易及服务均已进行妥善处理。</li>
                        <li>2.5.3 《领导咨询板》产品账号注销将导致《领导咨询板》产品《用户服务协议》及相关规则约定的双方的权利义务终止（依本协议其他条款另行约定不得终止的或依其性质不能终止的除外），同时还可能对于该账号产生如下结果，且均由您自行承担：</li>
                        <li style="margin-left: 1rem;">A.该账号的全部个人资料和历史信息都将无法找回。</li>
                        <li style="margin-left: 1rem;">B.该账号如有未使用完毕的会员权益都将同时作废，相应费用（如有）将不予退回。</li>
                        <li style="margin-left: 1rem;">C.任何您之前累积的会员等级、积分权益等都将作废且无法恢复。</li>
                        <li style="margin-left: 1rem;">D.您通过领导咨询板产品账号使用、授权登录或绑定该账号后使用的任何第三方的其他服务，您将无法通过该账号再登录、使用或继续使用前述第三方服务，所有记录将无法找回。</li>
                        <li>2.5.4 您同意在您申请注销账号期间或注销后，如果您的账号涉及或可能涉及争议、纠纷，包括但不限于投诉、举报、诉讼、仲裁、国家有权机关调查等，本平台有权自行中止或终止您的账号注销申请而无需另行得到您的同意；另，注销您的《领导咨询板》账号并不代表该账号注销前的账号行为和相关责任得到豁免或减轻。</li>
                        <li>2.5.5 如您在《领导咨询板》账号注销过程中有任何问题，您无法处理的，或在处理过程中有任何疑惑的，可联系《领导咨询板》协助处理。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="2-6"></a>
                    <h5>2.6 隐私权保护</h5>
                    <ol>
                        <li>2.6.1 保护您个人信息安全既是法律要求，也是人民网长期坚持的一项基本原则。您使用或继续使用我们的服务，即意味着同意我们按照《人民网个人信息保护政策》及《领导咨询板》的相关服务协议，收集、使用、储存和透露您的相关信息。详细内容请见
                            <a href="javascript:void(0)" onclick="showmen(9)">《&lt领导咨询板&gt隐私政策》</a>。</li>
                        <li>2.6.2 《领导咨询板》同时保护用户本人及咨询中涉及的当事人的隐私权和其他合法权益，建议用户勿在咨询、评价、回复的公开区域发布当事人的各种信息。如为办理核实需要，文字内容请放置在咨询的备注区内，图片、视频、位置定位等请选择“不公开”。 </li>
                    </ol>
                </div>
                <div class="item">
                    <a name="2-7"></a>
                    <h5>2.7 版权声明</h5>
                    <ol>
                        <li>2.7.1 用户在《领导咨询板》发表的文字内容、图片、视频仅代表用户本人观点，文责自负。</li>
                        <li>2.7.2 转帖文章，请注明文章原始出处和发布时间，并注意原作者的版权声明，由此产生的版权纠纷由转帖用户承担。</li>
                        <li>2.7.3 《领导咨询板》提供的网络服务中包含的标识、版面设计、排版方式、文本、图片、图形等均受著作权、商标权及其它法律保护，未经相关权利人（含《领导咨询板》及其他原始权利人）同意，上述内容均不得在任何平台被直接或间接发布、使用、出于发布或使用目的地改写或再发行，或被用于其他任何商业目的。</li>
                        <li>2.7.4 《领导咨询板》有权将栏目内发表的文章或图片/视频（附带版权声明除外）自行或与他人合作使用，包括但不限于网站、电子杂志、平面出版等。用于平面出版等商业性用途时，将按同行业的稿费标准支付稿酬并于使用前通知咨询作者。</li>
                        <li>2.7.5《领导咨询板》内的文章及图片/视频（包括转帖的文章及图片/视频）版权仅归原作者所有，若作者有版权声明或原文章从其它网站转载而附带有原版权声明者，其版权归属以附带声明为准；因用户发表在《领导咨询板》上的文章及图片/视频产生的法律责任由用户承担，该责任包括但不限于侵犯文章或图片/视频原作者或第三人的著作权、人身权所导致的民事责任，以及遭受行政机关处罚所导致的行政责任。</li>
                        <li>2.7.6《领导咨询板》根据版面管理需要有权删除转帖；</li>
                        <li>2.7.7 任何转载、引用发表于《领导咨询板》的版权文章须符合以下规范：</li>
                        <li style="margin-left: 1rem;">（1）征得文章或图片/视频原作者同意，注明作者文章及图片/视频的出处为人民网《领导咨询板》（liuyan.people.com.cn）或人民网《领导咨询板》的某地分板。如用于商业性用途，需向作者支付稿酬。</li>
                        <li style="margin-left: 1rem;">（2）任何文章或图片/视频的修改或删除均应保持作者原意并征求原作者同意，并注明授权范围。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="2-8"></a>
                    <h5>2.8 免责声明</h5>
                    <ol>
                        <li>2.8.1 用户于本平台发布的一切内容（包含但不限于通过《领导咨询板》目前各产品功能，如咨询、评价、回复等发布的内容）仅代表用户个人观点，不视为人民网和《领导咨询板》赞同其内容之观点或证明其内容的真实性。作为内容的发布者，需对所发布内容负责，因所发布内容引发的一切纠纷，由该内容的发布者承担全部法律责任。在法律允许的范围内，人民网和《领导咨询板》对上述内容予以免责。</li>
                        <li>2.8.2 《领导咨询板》用户之间通过栏目相识、交往，咨询办理过程中所发生或可能发生的任何心理、生理上的伤害和经济上的损失，人民网不承担任何责任。</li>
                        <li>2.8.3 咨询（或评价）中含有违反法律法规、违反服务协议和管理部门要求的，用户未提供相关证明材料可能会对第三方（包括但不限于个人、法人及非法人组织）造成侵权的，含有不适合公开展示内容的，《领导咨询板》有权对相关内容不公开展示。</li>
                        <li>2.8.4 个人、法人及非法人组织（以下简称“投诉人”）如认为本平台上存在侵犯自身合法权益的内容，应依照法律规定向《领导咨询板》发出通知，并提供有法律效力的证明材料。《领导咨询板》将依照投诉人通知内容以及现行法律规定对涉嫌侵权内容进行处理。<b>《领导咨询板》依法处理相关内容，即视为履行完毕相关法律义务，不再对涉嫌侵权内容承担任何法律责任。出现《领导咨询板》已经删除或处理的内容，但是搜索引擎依然可以搜索到的现象，是因为搜索引擎自带缓存，此类问题人民网及《领导咨询板》无权也无法处理，您可以自行联系搜索引擎服务商进行处理。</b></li>
                        <li>2.8.5 用户因其自身原因（包括但不限于用户自行将当事人信息发布在公开展示区、其个人资料保管不当等）而导致个人隐私被泄露的，或引起任何其他心理、生理上的伤害或经济上的损失的，人民网及《领导咨询板》不承担任何责任。</li>
                        <li>2.8.6 《领导咨询板》各项服务不一定能满足用户的所有需求。</li>
                        <li>2.8.7 鉴于网络服务的特殊性（包括但不限于服务器的稳定性问题、恶意的网络攻击等行为的存在及其他无法控制的情形），用户同意人民网有权随时中断或终止部分或全部的服务，若发生该等中断或中止服务的情形，人民网将尽可能及时通过网页公告、系统通知、短信提醒或其他合理方式通知受到影响的用户。</li>
                        <li>2.8.8 由于非故意或不可抗力等原因（含系统维护和升级、网络故障），导致用户数据丢失、服务的中断、服务的延迟、服务的暂停或停止、服务的安全性等问题，人民网及《领导咨询板》不承担赔偿及其他连带法律责任，但将尽力减少因此而给用户造成的损失和影响。</li>
                        <li>2.8.9 《领导咨询板》不保证为用户便利而提供的外部链接的准确性和完整性，同时，对于该外部链接指向的不由人民网实际控制的任何网页上的内容，人民网及《领导咨询板》不承担任何责任。</li>
                        <li>2.8.10 《领导咨询板》给用户的通知（包括但不限于信息展示状态变更、咨询状态变更等）仅作为一种信息提醒或建议，不具有法定效力，不能作为用户提起信访和/或诉讼的依据。具体业务办理以相关法律法规为准。</li>
                        <li>2.8.11 人民网禁止未经合法授权而截获、篡改、收集、储存或删除他人的个人信息或其他数据资料，或将获知的此类资料用于任何非法或不正当目的。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="2-9"></a>
                    <h5>2.9 违反用户协议及管理条例的处理</h5>
                    <ol>
                        <li>2.9.1 违反《领导咨询板》用户协议及管理条例的咨询、评价，管理员有权直接删改，无需通知用户。</li>
                        <li>2.9.2 违反《领导咨询板》用户协议及管理条例的用户，管理员有权删除相关内容并对该用户采取警告、屏蔽用户发言权直至取消用户会员资格的处理。</li>
                        <li>2.9.3 严重违反《领导咨询板》服务协议的，管理员有权封禁用户IP和账号。</li>
                        <li>2.9.4 本平台将保存违规内容，并不定期把违规内容记录上报至中国互联网违法和不良信息举报中心等相关部门。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="2-10"></a>
                    <h5>2.10 协议修改</h5>
                    <ol>
                        <li>2.10.1 随着互联网的发展和有关法律、法规及规范性文件的变化，或者因业务发展需要，《领导咨询板》有权对本协议的条款作出修改或变更，一旦本协议的内容发生变动，《领导咨询板》将会直接在《领导咨询板》网站上公布修改之后的协议内容，该公布行为视为《领导咨询板》已经通知用户修改内容。《领导咨询板》也可采用站内通知、短信、电子邮件或私信传送方式，提示用户协议条款的修改、服务变更，或其它重要事项。</li>
                        <li>2.10.2 如果不同意《领导咨询板》对本协议相关条款所做的修改，用户有权并应当停止使用《领导咨询板》。如果用户继续使用《领导咨询板》，则视为用户接受《领导咨询板》对本协议相关条款所做的修改。</li>
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
