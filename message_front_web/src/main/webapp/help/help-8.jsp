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
    <meta name="keywords" content="领导留言板" />
    <meta name="description" content="领导留言板" />
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
        <a href="../index.jsp" >领导留言 </a>&nbsp;&gt;&nbsp;
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
                    <a href="help-3.jsp" id="title_3">留言基础操作</a>
                </li>
                <li>
                    <a href="help-4.jsp" id="title_4" >如何删除留言</a>
                </li>
                <li>
                    <a href="help-5.jsp" id="title_6" >常见问题</a>
                </li>
                <li>
                    <a href="help-6.jsp" id="title_7" >留言如何迅速得到办理</a>
                </li>
                <li>
                    <a href="help-7.jsp" id="title_8" >联系我们</a>
                </li>
                <li>
                    <a href="help-8.jsp" id="title_9" class="active">隐私政策</a>
                </li>
            </ul>
        </div>

        <div class="col-right" id="noresult" style="display:none;">未找到相关内容！</div>

        <div class="col-right" id="content_9" style="display:block;">
            <div class="table">
                <h4>8 领导留言板隐私政策</h4>
                <ol>
                    <li>更新日期【2020年01月06日】</li>
                    <li>引言</li>
                    <li>【领导留言板】是由【人民网股份有限公司】（以下简称“我们”）研发和运营的在线【群众工作综合性】平台。</li>
                    <li>我们深知个人信息（含个人敏感信息）对您的重要性，并会全力保护您的个人信息安全。同时，我们承诺将按业界成熟的安全标准，采取相应的安全保护措施来保护您的个人信息。</li>
                    <li>本隐私政策（以下简称“本政策”）适用于【领导留言板】的所有相关服务。在使用【领导留言板】各项服务前，请您务必仔细阅读并透彻理解本政策，并做出您认为适当的选择。一旦你开始使用【领导留言板】的各项服务，即表示您已充分理解并同意本政策。</li>
                    <li>需要提醒您注意，本隐私政策仅适用于我们所收集的信息，不适用于通过我们的服务而接入的第三方服务（包括任何第三方网站）收集的信息以及通过在我们服务中进行广告服务的其他公司或机构所收集的信息。</li>
                    <li>本政策将帮助你了解以下内容：</li>
                </ol>
                <ul>
                    <li>
                        <a href="#8-1">一、我们如何收集和使用个人信息</a>
                    </li>
                    <li>
                        <a href="#8-2">二、我们如何使用Cookie等同类技术</a>
                    </li>
                    <li>
                        <a href="#8-3">三、第三方服务</a>
                    </li>
                    <li>
                        <a href="#8-4">四、我们如何委托处理、共享、转让、公开披露您的个人信息</a>
                    </li>
                    <li>
                        <a href="#8-5">五、我们如何储存和保护个人信息</a>
                    </li>
                    <li>
                        <a href="#8-6">六、您管理个人信息的权利</a>
                    </li>
                    <li>
                        <a href="#8-7">七、我们如何处理未成年人的个人信息</a>
                    </li>
                    <li>
                        <a href="#8-8">八、隐私政策的修订和通知</a>
                    </li>
                </ul>
            </div>
            <div class="details">
                <div class="item">
                    <a name="8-1"></a>
                    <h5>一、我们如何收集和使用个人信息</h5>
                    <ol>
                        <li>（一）我们将通过以下途径收集和获得您的信息</li>
                        <li style="margin-left: 1rem;">1. 您提供的信息。</li>
                        <li style="margin-left: 2rem;">（1）您在注册我们服务的帐号或使用我们服务时，向我们提供的信息；</li>
                        <li style="margin-left: 2rem;">（2）您通过我们服务向其他方提供的共享信息，以及您使用我们服务时所储存的信息。</li>
                        <li style="margin-left: 1rem;">2. 其他方分享的您的信息。亦即其他方使用我们服务时所提供有关您的共享信息。</li>
                        <li style="margin-left: 1rem;">3. 我们获取的您的信息。您在使用我们服务时，我们收集、汇总、记录的信息，日志信息、位置信息、设备信息等。</li>
                        <li>（二）我们会出于以下目的，收集和使用您的信息</li>
                        <li style="margin-left: 1rem;">1. 帮助您完成注册</li>
                        <li>为便于我们为您提供服务，您需要提供基本注册信息，包括手机号码、电子邮箱地址、QQ、微博或微信的唯一标识，并创建您的用户名和密码。在部分单项服务中，如果您仅需使用浏览、搜索等基本服务，您不需要注册成为我们用户及提供上述信息。</li>
                        <li style="margin-left: 1rem;">2. 向您提供服务</li>
                        <li>我们所收集和使用的信息是为您提供我们服务的必要条件，如缺少相关信息，我们将无法为您提供我们服务的核心内容，包括以下：</li>
                        <li style="margin-left: 2rem;"><b>(1) 在留言服务中，为便于您反馈问题的解决，您需提供个人姓名、联系电话。因为办理核实情况的需要，该信息会向对应办理单位公开，任何时候都不会在互联网上公开。</b></li>
                        <li style="margin-left: 2rem;"><b>(2) 为了更精准的办理提交的留言，我们会收集和使用您的定位信息并同步给对应留言办理机构，以便更加高效地办理您的诉求。</b></li>
                        <li style="margin-left: 2rem;">(3) 为了方便您提供有利于留言快速办理的素材，我们会使用您的相机和录音权限，当您在留言时选择使用上传或拍摄照片或视频功能，我们需申请调用您的相机权限和录音权限，如果您拒绝调用，将无法在留言时添加照片或视频附件，但不影响其他无需该权限的功能；为了保护您的隐私信息，您可在留言时选择是否公开定位信息、照片或视频。如不公开，则仅对办理单位可见，不会在互联网上公开。</li>
                        <li style="margin-left: 2rem;">(4) 为展示您在留言服务中所提问题的回复信息，我们会收集您在提交问题时的编号、提交对象、提交时间信息用于向您展示及便于您对所提问题进行管理；</li>
                        <li style="margin-left: 2rem;">(5) 当您与我们的客服人员联系时，我们可能会保存您的通信/通话记录和内容或您留下的联系方式等信息，以便与您联系或帮助您解决问题，或记录相关问题的处理方案及结果。</li>
                        <li style="margin-left: 2rem;">(6) 手机号创建账号、网络头像、昵称：在您访问我们的客户端时，虽然您可匿名浏览信息，但您需要注册成会员后才能进行个性化内容提交及享受其他会员服务。</li>
                        <li style="margin-left: 2rem;">(7) 授权第三方账号登录：授权我们获取您在第三方平台注册的公开信息（头像、昵称以及您授权的其他信息），方便第三方平台登录。</li>
                        <li style="margin-left: 2rem;">(8) 资讯浏览：点击查看新闻、对新闻内容点赞，用于统计数据。</li>
                        <li style="margin-left: 2rem;">(9) 评论互动：用户发表评论会保存在后台，审核后才会发布，对用户发表的评论进行点赞，回复。</li>
                        <li style="margin-left: 2rem;">(10) 意见反馈：对用户主动提交的反馈内容和联系方式会保存在后台</li>
                        <li style="margin-left: 2rem;">(11) 搜索记录：对您搜索过的历史记录保存在手机本地，方便用户查看自己的搜索记录。</li>
                        <li style="margin-left: 2rem;">(12) 我的收藏：记录用户主动收藏的内容到后台，包括留言和资讯数据</li>
                        <li style="margin-left: 2rem;">(13) 留言提交：对于用户主动提交的留言，会保存在后台。</li>
                        <li style="margin-left: 2rem;">(14) 留言浏览：点击查看留言、对留言内容点赞，用于后台统计数据。</li>
                        <li style="margin-left: 2rem;">(15) 推送功能：我们会记录推送消息记录，方便您在app中查找未读的推送消息。</li>
                        <li style="margin-left: 2rem;">(16) 浏览历史：会记录用户的资讯或留言详情的浏览历史，以便于用户可以第一时间知道当前文章是否已阅览过。</li>
                        <li style="margin-left: 2rem;">(17) 设备信息：设备识别码将被用于生成唯一的推送目标ID（IMEI或UUID），即CID。设备平台、设备厂商、设备品牌、系统版本、屏幕尺寸等硬件设备相关信息有助于我们或我们的第三方合作伙伴给您提供更精准的信息推送服务和体验。</li>
                        <li style="margin-left: 2rem;">(18) 应用列表信息：我们使用合并链路技术进行技术推送，当一个设备有多个APP的推送链路同时活跃时，推送服务会随机合并成一条链路，以达到为您省电省流量的目的，因此需获得应用列表信息；</li>
                        <li style="margin-left: 2rem;">(19) 网络信息：为了最大程度保持网络连接的稳定性，建立长链接，我们需要了解设备的网络状态和变化，从而实现稳定连续的推送服务。</li>
                        <li style="margin-left: 2rem;">(20) 互联网权限：我们需要连接您的设备网络，为您动态获取最新的资讯内容以及您与好友的即时交互信息。</li>
                        <li style="margin-left: 2rem;">(21) 读取WIFI状态权限：我们读取WIFI 状态，并根据WIFI的状态变化，实时提醒您当前是否消耗的是移动流量，避免给您造成流量和财产损失。</li>
                        <li style="margin-left: 2rem;">(22) 更改WIFI状态权限：更改WIFI 链接状态，我们征求您的同意，在应用中帮您切换WIFI状态，从而达到流量切换的目的。</li>
                        <li style="margin-left: 2rem;">(23) SD卡存储权限：我们会将一部分资讯类型或者交互类型的信息和图片，存储到您的SD卡，便于在每次无网状态或者没有最新数据的时候使用。</li>
                        <li style="margin-left: 2rem;">(24) SD卡读取权限：我们会在每次无网状态或者没有最新数据的情况下，调取SD卡中缓存的数据展示到应用界面，用来提升用户体验。</li>
                        <li style="margin-left: 2rem;">(25) 系统闹铃权限：我们的应用，提供定时推送和获取最新交互信息以及资讯的功能，因此会使用到您的系统闹铃权限，以便到点提醒您。</li>
                        <li style="margin-left: 2rem;">(26) 安装应用权限：我们在应用内提供最新版本下载安装功能，在您下载完最新版本应用后，会提示您是否安装，如您同意安装，会在应用内帮您安装最新版本以便覆盖旧版本。</li>
                        <li style="margin-left: 2rem;">(27) 屏幕唤醒权限：我们提供推送服务，所以在应用使用期间可以唤醒您的屏幕，让您第一时间看到最新消息。</li>
                        <li style="margin-left: 2rem;">(28) 开机启动权限：为了让您第一时间接收到最新的推送消息和资讯内容，我们需要在您的设备启动时，自启动应用，以便能够提升推送的保活概率，并增加推送到达率。</li>
                        <li style="margin-left: 2rem;">(29) 手机震动权限：我们的应用在收到推送时，会发出震动以便提醒您及时查看。</li>
                        <li style="margin-left: 2rem;">(30) 显示在其他应用上层权限：为了给您提供第一视角的可见信息，我们会在其他应用上面显示浮动通知。</li>
                        <li style="margin-left: 2rem;">(31) 前台服务权限：我们的应用在前台运行，当显示地图的时候需要使用前台服务。</li>
                        <li style="margin-left: 2rem;">(32) 录音权限：如果您发布评论选择了语音功能时，我们需申请调用您的录音权限。</li>
                        <li style="margin-left: 2rem;">(33) 用户画像信息：我们构建用户画像功能，会在数据包传输中，访问用户设备状态和身份标识，包括用户手机IMEI、IMSI、手机型号、系统版本号、应用版本号、cookie信息等相关信息，这些信息有助于我们生成更丰富的画像，如设备品牌、设备版本等画像标签。除此之外，信息不作他用。</li>
                        <li style="margin-left: 1rem;">3. 征得授权同意的例外</li>
                        <li style="margin-left: 1rem;">根据相关法律法规规定，以下情形中收集您的信息无需征得您的授权同意：</li>
                        <li style="margin-left: 2rem;">（1）与国家安全、国防安全有关的；</li>
                        <li style="margin-left: 2rem;">（2）与公共安全、公共卫生、重大公共利益有关的；</li>
                        <li style="margin-left: 2rem;">（3）与犯罪侦查、起诉、审判和判决执行等有关的；</li>
                        <li style="margin-left: 2rem;">（4）出于维护信息主体或其他个人的生命、财产等重大合法权益但又很难得到您本人同意的；</li>
                        <li style="margin-left: 2rem;">（5）所收集的信息是您自行向社会公众公开的；</li>
                        <li style="margin-left: 2rem;">（6）从合法公开披露的信息中收集信息的，如合法的新闻报道、政府信息公开等渠道；</li>
                        <li style="margin-left: 2rem;">（7）根据您的要求签订合同所必需的；</li>
                        <li style="margin-left: 2rem;">（8）用于维护我们服务的安全稳定运行所必需的，例如发现、处置产品或服务的故障；</li>
                        <li style="margin-left: 2rem;">（9）为合法的新闻报道所必需的；</li>
                        <li style="margin-left: 2rem;">（10）学术研究机构基于公共利益开展统计或学术研究所必要，且对外提供学术研究或描述的结果时，对结果中所包含的信息进行去标识化处理的；</li>
                        <li style="margin-left: 2rem;">（11）法律法规规定的其他情形。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="8-2"></a>
                    <h5>二、我们如何使用Cookie等同类技术</h5>
                    <ol>
                        <li>我们或我们的第三方合作伙伴可能通过COOKIES获取和使用您的信息，并将该等信息储存为日志信息。</li>
                        <li>通过使用COOKIES，我们向用户提供简单易行并富个性化的网络体验。一个COOKIES是少量的数据，它们从一个网络服务器送至您的浏览器并存在计算机硬盘上。我们使用COOKIES是为了让其用户可以受益。比如，为使得您的登录过程更快捷，您可以选择把用户名存在一个COOKIES中。这样下次当您要登录我们的服务时能更加方便快捷。COOKIES能帮助我们确定您连接的页面和内容，您在特定服务上花费的时间和您所选择的服务。</li>
                        <li>COOKIES使得我们能更好、更快地为您服务，并且使您在服务上的经历更富个性化。然而，您应该能够控制COOKIES是否以及怎样被你的浏览器接受。请查阅您的浏览器附带的文件以获得更多这方面的信息。</li>
                        <li>我们和第三方合作伙伴可能通过COOKIES收集和使用您的信息，并将该等信息储存。</li>
                        <li>我们使用自己的COOKIES用于以下用途：</li>
                        <li style="margin-left: 1rem;">（1）记住您的身份</li>
                        <li style="margin-left: 1rem;">（2）分析您使用我们服务的情况。我们可利用COOKIES来了解您使用服务进行什么活动、或哪些服务或服务最受欢迎；</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="8-3"></a>
                    <h5>三、第三方服务</h5>
                    <ol>
                        <li>我们服务可能链接至第三方提供的社交媒体或其他服务（包括网站或其他服务形式）。包括：</li>
                        <li style="margin-left: 1rem;">（1）您可利用“分享”键将我们的资讯内容分享到至朋友圈、微博或其他社交平台，或您可利用第三方服务登录我们服务。这些功能可能会收集您的信息（包括您的日志信息），并可能在您的电脑装置COOKIES，从而正常运行上述功能；</li>
                        <li style="margin-left: 1rem;">（2）我们生活服务和生活缴费栏目向您提供链接，使您可以接入第三方的服务或网站；</li>
                        <li>该等第三方社交媒体或其他服务由相关的第三方负责运营。您使用该等第三方的社交媒体服务或其他服务（包括您向该等第三方提供的任何信息），须受第三方自己的服务条款及信息保护声明（而非本《隐私政策》）约束，您需要仔细阅读其条款。本《隐私政策》仅适用于我们所收集的任何信息，并不适用于任何第三方提供的服务或第三方的信息使用规则，而我们对任何第三方使用由您提供的信息不承担任何责任。</li>
                        <li style="margin-left: 1rem;">（3）MobTech (ShareSDK)</li>
                        <li>使用目的：分享</li>
                        <li>收集数据类型：设备识别信息（IMEI、IMSI）、应用安装列表</li>
                        <li>官网链接：
                            <a href="javascript:if(confirm('http://m.mob.com/about/policy  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://m.mob.com/about/policy'" tppabs="http://m.mob.com/about/policy">http://m.mob.com/about/policy</a>
                        </li>
                        <li style="margin-left: 1rem;">（4）个推</li>
                        <li>使用目的：信息推送</li>
                        <li>收集数据类型：设备识别信息（IMEI、IMSI）</li>
                        <li>官网链接：
                            <a href="javascript:if(confirm('https://www.getui.com/privacy  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://www.getui.com/privacy'" tppabs="https://www.getui.com/privacy">https://www.getui.com/privacy</a>
                        </li>
                        <li style="margin-left: 1rem;">（5）科大讯飞</li>
                        <li>使用目的：语音朗读、语音转写</li>
                        <li>收集数据类型：设备信息（IMEI、IMSI）</li>
                        <li>官网链接：
                            <a href="javascript:if(confirm('https://www.xfyun.cn/doc/policy/privacy.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://www.xfyun.cn/doc/policy/privacy.html'" tppabs="https://www.xfyun.cn/doc/policy/privacy.html">https://www.xfyun.cn/doc/policy/privacy.html</a>
                        </li>
                        <li style="margin-left: 1rem;">（6）Mlink</li>
                        <li>使用目的：分享网页、网页调起客户端</li>
                        <li>收集数据类型：设备信息（IMEI、IMSI）</li>
                        <li>官网链接：
                            <a href="javascript:if(confirm('http://www.magicwindow.cn/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.magicwindow.cn/'" tppabs="http://www.magicwindow.cn/">http://www.magicwindow.cn/</a>
                        </li>
                    </ol>
                </div>
                <div class="item">
                    <a name="8-4"></a>
                    <h5>四、我们如何委托处理、共享、转让、公开披露您的个人信息</h5>
                    <ol>
                        <li>（一）分享</li>
                        <li>除以下情形外，未经您同意，我们不会与我们之外的任何第三方分享您的信息：</li>
                        <li style="margin-left: 1rem;">1.履行我们在本《隐私政策》或我们与您达成的其他协议中的义务和行使我们的权利；</li>
                        <li style="margin-left: 1rem;">2.在获取明确同意的情况下共享：获得你的明确同意后，我们会与其他方共享你的个人信息；</li>
                        <li style="margin-left: 1rem;">3.与我们的关联公司共享：你的个人信息可能会与【领导留言板】的关联公司共享。我们只会共享必要的个人信息，且受本隐私政策中所声明目的的约束。关联公司如要改变个人信息的处理目的，将再次征求你的授权同意；</li>
                        <li style="margin-left: 1rem;">4.与授权合作伙伴共享：仅为实现本政策中声明的目的，我们的某些服务将由授权合作伙伴提供。我们可能会与合作伙伴共享你的某些个人信息，以提供更好的客户服务和用户体验。</li>
                        <li style="margin-left: 1rem;">5.基于符合法律法规的社会公共利益而提供。</li>
                        <li>我们仅会出于合法、正当、必要、特定、明确的目的共享您的信息。对我们与之共享信息的公司、组织和个人，我们会与其签署严格的保密协定，要求他们按照我们的说明、本《隐私政策》以及其他任何相关的保密和安全措施来处理信息。</li>
                        <li>（二）转让</li>
                        <li>我们不会将你的个人信息转让给任何公司、组织和个人，但以下情况除外：</li>
                        <li style="margin-left: 1rem;">1. 随着我们的持续发展，我们有可能进行合并、收购、资产转让或类似的交易，而您的信息有可能作为此类交易的一部分而被转移。我们会要求新的持有您信息的公司、组织继续受本《隐私政策》的约束，否则,我们将要求该公司、组织重新向您征求授权同意。</li>
                        <li style="margin-left: 1rem;">2. 在获得您的明确同意后，我们会向其他方转让您的信息。</li>
                        <li>（三）披露</li>
                        <li>我们仅会在以下情况下，且采取符合业界标准的安全防护措施的前提下，才会披露您的信息：</li>
                        <li style="margin-left: 1rem;">1. 根据您的需求，在您明确同意的披露方式下披露您所指定的信息；</li>
                        <li style="margin-left: 1rem;">2. 根据法律、法规的要求、强制性的行政执法或司法要求所必须提供您信息的情况下，我们可能会依据所要求的信息类型和披露方式披露您的信息。</li>
                    </ol>
                </div>

                <div class="item">
                    <a name="8-5"></a>
                    <h5>五、我们如何储存和保护个人信息</h5>
                    <ol>
                        <li>我们仅在本《隐私政策》所述目的所必需期间和法律法规要求的时限内保留您的信息。具体存储期限：日志信息不少于6个月，记录备份不少于60日，除非法律有强制的存留要求；在您的个人信息超出保留期间后，我们会根据适用的反馈要求删除您的个人信息、或使其匿名化处理。</li>
                        <li>个人信息出境情况说明：我们在中华人民共和国境内运营中收集和产生的信息，存储在中国境内。</li>
                        <li>我们将采取以下手段保护您的信息：</li>
                        <li style="margin-left: 1rem;">（一）数据安全技术措施</li>
                        <li>我们会采用符合业界标准的安全防护措施，包括建立合理的制度规范、安全技术来防止您的信息遭到未经授权的访问使用、修改,避免数据的损坏或丢失。网络服务采取了多种加密技术，在某些服务中，我们将利用加密技术来保护您的信息，采取加密技术对您的信息进行加密保存，并通过隔离技术进行隔离。</li>
                        <li style="margin-left: 1rem;">（二）我们为保护信息采取的其他安全措施</li>
                        <li>通过建立数据分类分级制度、数据安全管理规范、数据安全开发规范来管理规范信息的存储和使用。</li>
                        <li style="margin-left: 1rem;">（三）我们仅允许有必要知晓这些信息的我们员工、合作伙伴访问您的信息，并为此设置了严格的访问权限控制和监控机制。我们同时要求可能接触到您的信息的所有人员履行相应的保密义务。如果未能履行这些义务，可能会被追究法律责任或被中止与我们的合作关系。</li>
                        <li style="margin-left: 1rem;">（四）我们会采取一切合理可行的措施，确保未收集无关的信息。</li>
                        <li style="margin-left: 1rem;">（五）互联网并非绝对安全的环境，而且电子邮件、即时通讯、社交软件或其他服务软件等与其他用户的交流方式无法确定是否完全加密，我们建议您使用此类工具时请使用复杂密码，并注意保护您的信息安全。</li>
                        <li style="margin-left: 1rem;">（六）互联网环境并非百分之百安全，我们将尽力确保或担保您发送给我们的任何信息的安全性。如果我们的物理、技术、或管理防护设施遭到破坏，导致信息被非授权访问、公开披露、篡改、或毁坏，导致您的合法权益受损，我们将承担相应的法律责任。</li>
                        <li style="margin-left: 1rem;">（七）安全事件处置</li>
                        <li>为应对信息泄露、损毁和丢失等可能出现的风险，我们制定了多项制度，明确安全事件、安全漏洞的分类分级标准及相应的处理流程。我们也为安全事件建立了专门的应急响应团队，按照安全事件处置规范要求，针对不同安全事件启动安全预案，进行止损、分析、定位、制定补救措施、联合相关部门进行溯源和打击。</li>
                        <li>若不幸发生信息安全事件，我们将按照法律法规的要求，及时向您告知：安全事件的基本情况和可能的影响、我们已采取或将要采取的处置措施、您可自主防范和降低风险的建议、对您的补救措施等。我们同时将及时将事件相关情况以邮件、信函、电话、推送通知等方式告知您，难以逐一告知信息主体时，我们会采取合理、有效的方式发布公告。同时，我们还将按照监管部门要求，主动上报信息安全事件的处置情况。</li>
                        <li>请您理解，由于技术的限制以及风险防范的局限，即便我们已经尽量加强安全措施，也无法始终保证信息百分之百的安全。您需要了解，您接入我们服务所用的系统和通讯网络，有可能因我们可控范围外的情况而发生问题。</li>

                    </ol>
                </div>

                <div class="item">
                    <a name="8-6"></a>
                    <h5>六、您管理个人信息的权利</h5>
                    <ol>
                        <li style="margin-left: 1rem;">（一）访问、修改和删除信息</li>
                        <li>您可以在使用我们服务的过程中，访问、修改和删除您提供的注册信息和其他个人信息。您访问、修改和删除个人信息的范围和方式将取决于您使用的具体服务。 </li>
                        <li>们将按照本政策所述，仅为实现我们产品或服务的功能，收集、使用您的信息。如您发现我们违反法律、行政法规的规定或者双方的约定收集、使用您的个人信息，您可以要求我们删除。如您发现我们收集、存储的您的个人信息有错误的，您也可以要求我们更正。</li>
                        <li>您可以通过以下方式访问、修改或删除自己的信息：</li>
                        <li>登录人民网 www.people.com.cn，点击您的笔名，进入“人民网通行证”后访问、修改或删除；</li>
                        <li style="margin-left: 1rem;">（二）注销账号</li>
                        <li>在符合我们用户协议约定条件及国家相关法律法规规定的情况下，您的帐号可能被注销或删除。当帐号注销或被删除后，与该帐号相关的全部数据将依照用户协议约定删除或处理。</li>
                        <li>我们也提供注册帐号的注销，您可以登录领导留言板APP-我的-设置-账号注销，进行账号注销操作。</li>
                        <li style="margin-left: 1rem;">（三）改变您授权同意的范围</li>
                        <li>每个业务功能需要一些基本的个人信息才能得以完成(见本政策“第一部分”)。对于额外收集的个人信息的收集和使用，您可以随时给予或收回您的授权同意。</li>
                        <li>您可以通过删除信息、关闭移动设备功能等方式改变你授权同意的范围或撤回您的授权。</li>
                        <li>当您撤回授权后，我们无法继续为您提供撤回授权所对应的服务，也不再处理您相应的信息。但您撤回授权的决定，不会影响此前基于您的授权而开展的信息处理</li>
                        <li style="margin-left: 1rem;">（四）我们如何响应您的上述请求</li>
                        <li>在您访问、修改或删除相关信息或账号时，我们可能会要求您进行身份验证，以保障帐号的安全。</li>
                        <li>在以下情形中，按照法律法规或监管要求，我们将无法响应你的请求：</li>
                        <li style="margin-left: 2rem;">1. 与国家安全、国防安全直接相关的。</li>
                        <li style="margin-left: 2rem;">2. 与公共安全、公共卫生、重大公共利益直接相关的。</li>
                        <li style="margin-left: 2rem;">3. 与犯罪侦查、起诉、审判和判决执行等直接相关的。</li>
                        <li style="margin-left: 2rem;">4. 有充分证据表明你存在主观恶意或滥用权利的。</li>
                        <li style="margin-left: 2rem;">5. 响应你的请求将导致你或其他个人、组织的合法权益受到严重损害的。</li>
                    </ol>
                </div>

                <div class="item">
                    <a name="8-7"></a>
                    <h5>七、我们如何处理未成年人的个人信息</h5>
                    <ol>
                        <li>我们的产品、网站、服务主要面向成人。若您是 18 周岁以下的未成年人，在使用我们的产品和/或服务前，您应在监护人的陪同下阅读本《隐私政策》，并应确保已征得您的监护人同意后使用我们的服务并向我们提供您的信息。 我们会根据国家相关法律法规的规定着重保护未成年人的个人信息。</li>
                        <li>如您的监护人不同意您按照本《隐私政策》使用我们的服务或向我们提供信息，请您立即终止使用我们的服务并及时通知我们。</li>
                        <li>对于经父母或法定监护人同意而收集未成年人个人信息的情况，我们只会在受到法律允许、父母或监护人明确同意或者保护未成年人所必要的情况下使用或公开披露此信息。</li>
                        <li>若您是未成年人的监护人，当您对您所监护的未成年人使用我们的服务或其向我们提供的用户信息有任何疑问时，请您及时与我们联系。我们将根据国家相关法律法规及本《隐私政策》的规定保护未成年人用户信息的保密性及安全性。如果我们发现自己在未事先获得可证实的父母或法定监护人同意的情况下收集了未成年人的个人信息，则会设法尽快删除相关数据。</li>
                    </ol>
                </div>

                <div class="item">
                    <a name="8-8"></a>
                    <h5>八、隐私政策的修订和通知</h5>
                    <ol>
                        <li>我们可能适时修改本《隐私政策》的条款，该等修改构成本《隐私政策》的一部分。对于重大变更，我们会提供更显著的通知，您可以选择停止使用我们服务；在该种情况下，如您仍然继续使用我们服务的，即表示同意受经修订的本《隐私政策》的约束。</li>
                        <li>任何修改都会将您的满意度置于首位。我们鼓励您在每次使用我们服务时都查阅我们的隐私政策。</li>
                        <li>我们可能在必需时（例如当我们由于系统维护而暂停某一项服务时）发出与服务有关的公告。您可能无法取消这些与服务有关、性质不属于推广的公告。</li>
                        <li>最后，您必须对您的账号和密码信息负有保密义务。任何情况下，请小心妥善保管。</li>
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
