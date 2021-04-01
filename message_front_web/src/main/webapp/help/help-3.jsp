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
                    <a href="help-3.jsp" id="title_3" class="active">咨询基础操作</a>
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

        <div class="col-right" id="content_3" style="display:block;">
            <div class="table">
                <h4>3 咨询基础操作</h4>
                <ul>
                    <li>
                        <a href="#3-1">3.1 发表新咨询</a>
                    </li>
                    <li>
                        <a href="#3-2">3.2 对其它用户的咨询发表评价</a>
                    </li>
                    <li>
                        <a href="#3-3">3.3 对官方给我的回复发表评价</a>
                    </li>
                    <li>
                        <a href="#3-4">3.4 编辑自己的咨询</a>
                    </li>
                    <li>
                        <a href="#3-5">3.5 上传图片</a>
                    </li>
                    <li>
                        <a href="#3-6">3.6 上传视频 </a>
                    </li>
                    <li>
                        <a href="#3-7">3.7 上传位置信息 </a>
                    </li>
                    <li>
                        <a href="#3-8">3.8 如何查看个人信息</a>
                    </li>
                </ul>
            </div>
            <div class="details">
                <div class="item">
                    <a name="3-1"></a>
                    <h5>3.1 发表新咨询</h5>
                    <ol>
                        <li>3.1.1 在《领导咨询板》首页导航条选中“咨询”按钮，进入咨询页面，选中您所在的省市区，或者想要沟通的部委，并选择您希望沟通的领导姓名，进入相应版块后，即可进入咨询界面。</li>
                        <li>3.1.2 点选《领导咨询板》首页右上方的“给领导咨询”按钮，进入咨询页面，选中您的咨询位置，发表新咨询。</li>
                        <li>3.1.3 移动端用户登录，首页点击右上方“我要咨询”按钮，或导航条中“咨询”按钮，均可进入咨询页面，选中您所希望沟通的领导姓名或直接选择“我要咨询”，进入“给TA咨询”界面直接进行咨询或重选领导姓名发表咨询。</li>
                        <li>3.1.4 小程序用户登录，直接点击左下方“咨询”按钮，选择咨询类别和所属领域，并选中咨询版块，即可进行咨询。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="3-2"></a>
                    <h5>3.2 对其它用户的咨询发表评价 </h5>
                    <ol>
                        <li>《领导咨询板》目前未开通游客或注册用户对其它网友咨询进行评价的功能，现已开通注册用户对其它网友咨询进行关注的功能，欢迎使用。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="3-3"></a>
                    <h5>3.3 对官方给我的回复发表评价</h5>
                    <ol>
                        <li>3.3.1 咨询办理单位对咨询做出回复后，咨询用户登录后可以点击咨询正文后“评价”按钮，对办理的程度、速度和态度进行打分，选择后会综合算出满意度，如有情况补充，可选择文字描述。请您客观进行评价。</li>
                        <li>3.3.2 游客咨询无法使用评价功能。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="3-4"></a>
                    <h5>3.4 编辑自己的咨询</h5>
                    <ol>
                        <li>《领导咨询板》目前未开通用户对咨询内容进行二次编辑功能。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="3-5"></a>
                    <h5>3.5 上传图片</h5>
                    <ol>
                        <li>3.5.1 用户上传图片最大不超过5M。</li>
                        <li>3.5.2 发表新咨询时上传图片步骤为：点击发布咨询页面内“增加附件”按钮，在添加图片的右侧点击“+”号选择要上传图片的具体文件名，选中并确认后，系统会自动上传图片。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="3-6"></a>
                    <h5>3.6上传视频 </h5>
                    <ol>
                        <li>APP和小程序支持上传时长为15秒的视频。如有视频上传需求，请通过APP或微信小程序进行操作。APP支持视频剪辑。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="3-7"></a>
                    <h5>3.7 上传位置信息 </h5>
                    <ol>
                        <li>点击位置符号，可进入地图。可在地图上选择事发地，或在地址栏填写地址。</li>
                    </ol>
                </div>
                <div class="item">
                    <a name="3-8"></a>
                    <h5>3.8 如何查看个人信息</h5>
                    <ol>
                        <li>3.8.1 只有注册并登录的用户才能够使用该功能。</li>
                        <li>3.8.2 登录之后点击右上角的用户名，即可进入《领导咨询板》的用户中心，看到“我的咨询”等个人信息菜单项，点击链接之后就可进入到用户信息版块，并可以完善个人资料和修改密码。</li>
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
