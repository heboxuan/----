<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        西城区 - 北京市 - 领导留言板 - 人民网
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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css" />
    <link href="/favicon.ico" rel="icon" type="image/x-icon" />

    <script src="../static/common/js/thirdparty/jquery.min.js" type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/jquery.validate.min.js"  type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/jquery.form.js"  type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/jquery.webui-popover.js"  type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/layer/layer.js"  type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/tmpl.min.js"  type="text/javascript"></script>
    <script src="../static/common/js/thirdparty/json2.js"  type="text/javascript"></script>
    <script src="../static/common/js/common.js"  type="text/javascript"></script>
    <script src="../static/common/js/tab.js"  type="text/javascript"></script>
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
<%@include file="../common/common-top-help.jsp"%>
<!--nav end-->


<script src="../static/www/js/forum.js" type="text/javascript"></script>
<script src="../static/www/js/threads.js-v=R25"  type="text/javascript"></script>


    <div class="path_2j w1200 grey2">
        当前位置 ：
        <a href="../index.htm" tppabs="http://liuyan.people.com.cn/">领导留言板</a> > 地方领导 &gt;
        
            <a href="list-fid=4.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=4">北京市</a> &gt;
        
            西城区
    </div>
<div class="index_content w1200">
    <ul class="nav_list clearfix">
        <li class="fl"><a href="../home.htm" tppabs="http://liuyan.people.com.cn/home">部委领导</a></li>
        <li class="nav_active fl"><a href="../home-p=0.htm" tppabs="http://liuyan.people.com.cn/home?p=0">地方领导</a></li>
    </ul>
<script type="application/javascript">
	var nav_fid = '639';
	console.info('fid=',nav_fid);
	$(function () {
		$('#'+nav_fid).addClass('actived');
	});
</script>

    <div class="clearfix district_box02 w1200">
    <div class="fl"><strong>西城区</strong>
        <p>历史留言总量: <i class="red">2315</i> 条　<span><br/></span>历史回复总量: <i
                class="red">1851</i> 条</p></div>
    
</div>

    
    <div class="district_box03 w1200 clearfix">
        
            
                <div class="fl">
                    <dl class="clearfix">
                        <dt>
                        <h2><b><a href="javascript:if(confirm('http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect735.htm  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect735.htm'" tppabs="http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect735.htm" target="_blank" class="forumName" style="display: none;font-weight:bold;">西城区委书记孙军民</a></b><a
                                href="javascript:if(confirm('http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect735.htm  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect735.htm'" tppabs="http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect735.htm"
                                target="_blank" style="color: #b12b2b">查看简历</a>
                            
                            
                        </h2>
                        </dt>
                        
                            <div  style="width: 300px;margin-left:-10px;">
                                <a  href="../threads/list-fid=735.htm" tppabs="http://liuyan.people.com.cn/threads/list?fid=735" class="message_index">查看留言</a>
                                <a href="http://bad_redirect"  class="message_index_color" onclick="javascript:return Threads.checkCount()">我要留言</a>

                            </div>

                        
                        <p class="tack_message">
                            <a href="../threads/list-fid=735.htm" tppabs="http://liuyan.people.com.cn/threads/list?fid=735" style="margin-top:25px;">年度总留言量: <i class="red">603</i> 条 &nbsp;&nbsp;</a>
                            <span><br/></span>
                            <a href="../threads/list-fid=735&state=4.htm" tppabs="http://liuyan.people.com.cn/threads/list?fid=735&state=4">年度公开回复量: <i class="red">590</i> 条 &nbsp;&nbsp;</a>
                        </p>
                    </dl>
                </div>
            
        
            
                <div class="fr">
                    <dl class="clearfix">
                        <dt>
                        <h2><b><a href="javascript:if(confirm('http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect736.htm  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect736.htm'" tppabs="http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect736.htm" target="_blank" class="forumName" style="display: none;font-weight:bold;">西城区区长孙硕</a></b><a
                                href="javascript:if(confirm('http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect736.htm  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect736.htm'" tppabs="http://ldzl.people.com.cn/dfzlk/frontpage/pageSelect736.htm"
                                target="_blank" style="color: #b12b2b">查看简历</a>
                            
                            
                        </h2>
                        </dt>
                        
                            <div  style="width: 300px;margin-left:-10px;">
                                <a  href="../threads/list-fid=736.htm" tppabs="http://liuyan.people.com.cn/threads/list?fid=736" class="message_index">查看留言</a>
                                <a href="http://bad_redirect"  class="message_index_color" onclick="javascript:return Threads.checkCount()">我要留言</a>

                            </div>

                        
                        <p class="tack_message">
                            <a href="../threads/list-fid=736.htm" tppabs="http://liuyan.people.com.cn/threads/list?fid=736" style="margin-top:25px;">年度总留言量: <i class="red">466</i> 条 &nbsp;&nbsp;</a>
                            <span><br/></span>
                            <a href="../threads/list-fid=736&state=4.htm" tppabs="http://liuyan.people.com.cn/threads/list?fid=736&state=4">年度公开回复量: <i class="red">460</i> 条 &nbsp;&nbsp;</a>
                        </p>
                    </dl>
                </div>
            
        
    </div>


    <script type="text/javascript">
        $(function () {
            for (var i = 0; i < $(".forumName").length; i++) {
                var ele = $($(".forumName").get(i));
                var fullname = ele.html();
                var seperateName = fullname.replace(/(书记|市长|区长|省长|主席|盟长|州长|行署专员|管理委员会主任|县长|管委会主任|行政长官)/,"$& ");
                ele.html(seperateName);
                ele.css("display","");
            }
        });
    </script>
</div>




<!--copyright-->
<%@include file="../common/common-bottom-help.jsp"%>

<script src="../static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>