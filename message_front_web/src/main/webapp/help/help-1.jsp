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
                    <a href="help-1.jsp" id="title_1" class="active">新用户必读</a>
                </li>
                <li>
                    <a href="help-2.jsp" id="title_2" >服务协议</a>
                </li>
                <li>
                    <a href="help-3.jsp" id="title_3" >留言基础操作</a>
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
                    <a href="help-8.jsp" id="title_9" >隐私政策</a>
                </li>
            </ul>
        </div>

        <div class="col-right" id="noresult" style="display:none;">未找到相关内容！</div>

        <div class="col-right" id="content_1" style="display:block;">
            <div class="table">
                <ol>
                    <li>
                        <h4>引言</h4></li>
                    <li>欢迎您来到《领导留言板》。</li>
                    <li>请您务必仔细、审慎阅读,充分理解以下相关条款内容。</li>
                    <li>您需在认真阅读及独立思考的基础上认可、同意本协议的全部条款。如您对本协议或协议的任何部分,及/或随时对其的修改存有任何异议，立即停止注册及/或使用本平台所提供的全部服务。如您是未成年用户，请在法定监护人的陪同下仔细阅读本服务协议，您及法定监护人应按照法律及本协议规定承担责任。</li>
                    <li>直接（包括但不限于下载、安装、使用《领导留言板》客户端、小程序、网页版）,或通过各类方式（如RSS 源、站外 API引用）间接使用本平台服务和数据的行为，都将被视作您已了解并无条件接受本协议各项条款，包括人民网对本协议随时所做的任何修改。</li>
                </ol>
                <h4>1 新用户必读</h4>
                <ul>
                    <li>
                        <a href="#1-1">1.1 注册账号</a>
                    </li>
                    <li>
                        <a href="#1-2">1.2 撰写留言</a>
                    </li>
                    <li>
                        <a href="#1-3">1.3 办理结果</a>
                    </li>
                    <li>
                        <a href="#1-4">1.4 评价反馈</a>
                    </li>
                    <li>
                        <a href="#1-5">1.5 留言渠道</a>
                    </li>
                </ul>
            </div>
            <div class="details">
                <div class="item">
                    <a name="1-1"></a>
                    <h5>1.1 注册账号</h5>
                    <ol>
                        <li>1.1.1 普通用户的注册：本平台使用手机号码注册，如果您有人民网其他产品的账号，可以直接登录。</li>
                        <li>1.1.2 如留言办理单位需要开通回复账号，可开通机构用户账号（
                            <a target="_blank" href="javascript:if(confirm('http://leaders.people.com.cn/GB/178291/218130/396788/index.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://leaders.people.com.cn/GB/178291/218130/396788/index.html'" tppabs="http://leaders.people.com.cn/GB/178291/218130/396788/index.html">查看详情</a>）。</li>
                        <li>1.1.3 如果您需要以企业名义发布涉及经营问题、营商环境提升方面的留言，可以进行企业账号认证（
                            <a target="_blank" href="help-cat=5.htm#" tppabs="http://liuyan.people.com.cn/help?cat=5#">查看详情</a>）。</li>
                        <li>1.1.4 用户的其他权利和责任可详阅《用户权利与责任》及其他相关条款。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="1-2"></a>
                    <h5>1.2 撰写留言</h5>
                    <ol>
                        <li>1.2.1 选取留言给哪位领导，选择留言的类型及其所属领域，填写标题和正文。</li>
                        <li>1.2.2 请使用中文简体字进行留言。</li>
                        <li>1.2.3 正文中必须有逻辑清晰、要素齐备的文字描述。对于无文字描述或文字描述不清晰、不完整的留言，本平台暂不支持。留言形式除文字外，您还可以添加位置信息，以及有合法来源的图片、视频以辅助描述情况。</li>
                        <li>1.2.4 为便于办理单位及时与您取得联系，并进行办理，请提供请填写真实有效的联系方式，以及准确的当事人（个人、法人或非法人组织）名称，与留言相关所必需的地址、事情经过、诉求等信息。<b>请尽量避免只是情绪性表达而无实质描述。</b></li>
                        <li>1.2.5 目前APP和小程序支持视频文件的拍摄和上传，可按需使用。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="1-3"></a>
                    <h5>1.3 办理结果</h5>
                    <ol>
                        <li>1.3.1 办理机构收到您的留言后，将按照您提供的信息进行核实、办理、回复。</li>
                        <li>1.3.2 根据您提供信息的详实程度、事项办理的难易程度，及是否有办理机构进行办理，具体回复时间无法估计，请耐心等待。</li>
                        <li>1.3.3 如有进展，会通过《领导留言板》APP推送给您。您也可以通过微信小程序随时进行查阅。</li>
                        <li><b>1.3.4 在等待过程中，请不要就同一事项重复留言。</b></li>
                    </ol>
                </div>
                <div class="item">
                    <a name="1-4"></a>
                    <h5>1.4 评价反馈</h5>
                    <ol>
                        <li>1.4.1 收到回复后，您可以对这条留言的办理情况进行打分评价。<br/></li>
                        <li>1.4.2 您可以从解决程度、办理时间、办理态度三个方面进行打分，每一方面的打分都会不同程度地决定该留言评价的总分。<br/></li>
                    </ol>
                </div>
                <div class="item">
                    <a name="1-5"></a>
                    <h5>1.5 留言渠道</h5>
                    <ol>
                        <li>《领导留言板》APP<br/></li>
                        <li><img src="../static/www/images/help_app.png" /></li>
                        <li> 小程序 <br/></li>
                        <li><img src="../static/www/images/help_wm.png" /></li>
                        <li> 网站地址：<br/></li>
                        <li>
                            <a href="index.htm" >http://liuyan.people.com.cn/</a>
                        </li>
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

<script src="../static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>
