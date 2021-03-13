<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=11" >
    <meta http-equiv="Content-Language" content="utf-8"/>
    <meta content="all" name="robots"/>
    <title>
        北京市委书记蔡奇 - 北京市 - 领导留言板 - 人民网
    </title>
    <meta name="keywords" content="领导留言板"/>
    <meta name="description" content="领导留言板"/>
    <meta name="filetype" content="1"/>
    <meta name="publishedtype" content="1"/>
    <meta name="pagetype" content="2"/>
    <meta name="catalogs" content="XTW_0002000"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css-v=R36.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/message.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css">

    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.validate.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.form.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.webui-popover.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/layer/layer.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/tmpl.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/json2.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/common.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/tab.js" type="text/javascript"></script>
</head>

<body>
<!--nav-->
<!--nav end-->


<script src="../static/common/js/thirdparty/ajaxfileupload.js" tppabs="http://liuyan.people.com.cn/static/common/js/thirdparty/ajaxfileupload.js" type="text/javascript"></script>
<script src="../static/common/js/attach.js" tppabs="http://liuyan.people.com.cn/static/common/js/attach.js" type="text/javascript"></script>
<script src="../static/www/js/threads.js-v=R25" tppabs="http://liuyan.people.com.cn/static/www/js/threads.js?v=R25" type="text/javascript"></script>
<script src="../static/www/js/user.js-v=1" tppabs="http://liuyan.people.com.cn/static/www/js/user.js?v=1" type="text/javascript"></script>





<div class="path_2j w1200 grey2">
    当前位置 ：<a href="../index.htm" tppabs="http://liuyan.people.com.cn/">领导留言板</a> &gt; 地方领导 &gt;

    <a href="../forum/list-fid=4.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=4">北京市</a> &gt;

    <i>北京市委书记蔡奇</i>
</div>

<!--留言列表-->
<div class="liuyan_box02 w1200 clearfix">
    <ul class="clearfix title" id="tab_type" style="cursor: pointer;">
        <li>全部</li>
        <li>待回复</li>
        <li>办理中</li>
        <li>已办理</li>
        <a class="message_my" href="http://bad_redirect"  onclick="javascript:return Threads.checkCount()">
            <img src="../static/www/images/message_new.png" tppabs="http://liuyan.people.com.cn/static/www/images/message_new.png" class="message_new">我要留言</a>
    </ul>

    <div class="clearfix list_box" style="display: block;">
        <ul class="showMoreNChildren" id="list_content">
        </ul>
        <div class="showMorehandle more" id="show_more" style="display: none">加载更多</div>
    </div>
</div>
<!--留言列表 end-->


<script id="threads_content_tpl" type="text/x-tmpl">
<li>
	<h2>
		<b><a href="http://liuyan.people.com.cn/threads/content?tid={%=o.tid%}" target="_blank">{%#o.subject%}</a>
			{% if(o.stateInfo == '待回复'){ %}
				<em class="red">{%=o.stateInfo%}</em>
			{% } %}
			{% if(o.stateInfo == '办理中'){ %}
				<em class="orange">{%=o.stateInfo%}</em>
			{% } %}
			{% if(o.stateInfo != '待回复' && o.stateInfo != '办理中'){ %}
				<em class="green">{%=o.stateInfo%}</em>
			{% } %}

			{% if(o.domainName!=null && o.domainName != ''){ %}
                <em class="domainType">{%=o.domainName%}</em>
			{% } %}
			<em class="domainType">{%=o.typeName%}</em>
		</b>
		<div>
                    <em class="grey2">
                        <div  class="fav-image" id="fav_{%=o.tid%}">
                             <img   {% if(o.userFavStatus == 1){ %}
                            src="../static/www/images/collect_true.png"/*tpa=http://liuyan.people.com.cn/static/www/images/collect_true.png*/
                            {% } %}
                            {% if(o.userFavStatus == 0){ %}
                            src="../static/www/images/collect_false.png"/*tpa=http://liuyan.people.com.cn/static/www/images/collect_false.png*/
                            {% } %}
                            width="25" height="20"
                             onclick="javascript:User.addFav({%=o.tid%})"
                                onmouseover="javascript:User.showTips({%=o.tid%})"
                            />
                            <i id="fav_num_{%=o.tid%}">{%=o.favNum%}</i>
                        </div>


                    </em>
        </div>
		{% if(o.hasReported == 1){ %}
		<i class="white">
			媒体报道
		</i>
		{% } %}
	</h2>
	<h3 class="fl grey2 clearfix">
	<span>
	    {% if(o.userType == 1){ %}
	        <a href="../help-cat=4.htm"/*tpa=http://liuyan.people.com.cn/help?cat=4*/ class="qy_icon_href" target="_blank"><img src="../static/www/images/2018_qy/qy.png"/*tpa=http://liuyan.people.com.cn/static/www/images/2018_qy/qy.png*/ align="bottom" class="qy_icon_small"/></a>
	    {% } %}
		{%=o.nickName%}　　
		{%=new Date(o.threadsCheckTime*1000).format("yyyy-MM-dd HH:mm")%}
		{% if(o.publicAttachment == 1){ %}
			<i class="red"><img src="../static/www/images/message_img.png"/*tpa=http://liuyan.people.com.cn/static/www/images/message_img.png*/ class="message_img"></i>
		{% } %}
		{% if(o.publicAttachment == 2){ %}
			<i class="red"><img src="../static/www/images/message_video.png"/*tpa=http://liuyan.people.com.cn/static/www/images/message_video.png*/ class="message_img"></i>
		{% } %}
		{% if(o.publicAttachment == 3){ %}
			<img src="../static/www/images/message_video.png"/*tpa=http://liuyan.people.com.cn/static/www/images/message_video.png*/ class="message_video"><i class="red"><img src="../static/www/images/message_img.png"/*tpa=http://liuyan.people.com.cn/static/www/images/message_img.png*/ class="message_img"></i>
		{% } %}
	</span>
	</h3>
	<p>
		{%=o.content%}
		{% if(o.answerId == null){ %}
			<i class="red"><a href="http://liuyan.people.com.cn/threads/content?tid={%=o.tid%}" target="_blank">[查看全文]</a></i>
		{% } %}
	</p>
	{% if(o.answerId != null){ %}
	 <div class="list-answer">
		<h2>
			<b>{%=o.answerOrganization%}</b>

			<span class="grey2">
			回复时间：{%=new Date(o.answerDateline * 1000).format("yyyy-MM-dd HH:mm")%}
		    </span>
		</h2>
		<p>
			{%=o.answerContent%}
			<i class="red"><a href="http://liuyan.people.com.cn/threads/content?tid={%=o.tid%}">[查看全文]</a></i>
		</p>
        {% if(o.grade != null){ %}
		<div  class="gradeP">
				<span>
                    {% if(o.grade >4.5){ %}<div class="sec-score"><span style="font-size:13px;margin-left:10px;">很满意</span>
												<span class="score">
												    <img class="i-1-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-2-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-3-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-4-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-5-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
												</span>
											</div>{% } %}
                    {% if(o.grade >4 && o.grade<=4.5){ %}<div class="sec-score"><span style="font-size:13px;margin-left:10px;">很满意</span>
												<span class="score">
												    <img class="i-1-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-2-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-3-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-4-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-5-full" src="../static/www/images/icon-half.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-half.png*/ alt="">
												</span>
											</div>{% } %}
                    {% if(o.grade >3.5 && o.grade<=4){ %} <div class="sec-score"><span style="font-size:13px;margin-left:10px;">满意</span>
												<span class="score">
												    <img class="i-1-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-2-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-3-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-4-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-5-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
												</span>
											</div>{%} %}
                    {% if(o.grade >3 && o.grade<=3.5){ %} <div class="sec-score"><span style="font-size:13px;margin-left:10px;">满意</span>
												<span class="score">
												    <img class="i-1-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-2-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-3-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-4-full" src="../static/www/images/icon-half.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-half.png*/ alt="">
													<img class="i-5-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
												</span>
											</div>{% } %}
                    {% if(o.grade >2.5 && o.grade<=3){ %} <div class="sec-score"><span style="font-size:13px;margin-left:10px;">基本满意</span>
												<span class="score">
												    <img class="i-1-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-2-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-3-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-4-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
													<img class="i-5-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
												</span>
											</div>{% } %}
                    {% if(o.grade >2 && o.grade<=2.5){ %} <div class="sec-score"><span style="font-size:13px;margin-left:10px;">基本满意</span>
												<span class="score">
												    <img class="i-1-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-2-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-3-full" src="../static/www/images/icon-half.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-half.png*/ alt="">
													<img class="i-4-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
													<img class="i-5-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
												</span>
											</div>{% } %}
                    {% if(o.grade >1.5 && o.grade<=2){ %} <div class="sec-score"><span style="font-size:13px;margin-left:10px;">不满意</span>
												<span class="score">
												    <img class="i-1-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-2-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-3-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
													<img class="i-4-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
													<img class="i-5-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
												</span>
											</div>{% } %}
                    {% if(o.grade >1 && o.grade<=1.5){ %} <div class="sec-score"><span style="font-size:13px;margin-left:10px;">不满意</span>
												<span class="score">
												    <img class="i-1-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-2-full" src="../static/www/images/icon-half.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-half.png*/ alt="">
													<img class="i-3-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
													<img class="i-4-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
													<img class="i-5-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
												</span>
											</div>{% } %}
                    {% if(o.grade <=1){ %} <div class="sec-score"><span style="font-size:13px;margin-left:10px;">很不满意</span>
												<span class="score">
												    <img class="i-1-full" src="../static/www/images/icon-full.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-full.png*/ alt="">
													<img class="i-2-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
													<img class="i-3-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
													<img class="i-4-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
													<img class="i-5-full" src="../static/www/images/icon-empty.png"/*tpa=http://liuyan.people.com.cn/static/www/images/icon-empty.png*/ alt="">
												</span>
											</div>{% } %}
				</span>
				<span>
                    <span class="wrapSpan">解决程度：<span class="red back_info">{%=o.gradeLevel%}分</span></span>
                    <span class="wrapSpan">办理态度：<span class="red back_info">{%=o.gradeManner%}分</span></span>
                    <span class="wrapSpan">办理速度：<span class="red back_info">{%=o.gradeSpeed%}分</span></span>
				</span>
		</div>
		{% } %}
	</div>
	{% } %}
</li>

</script>

<!--加载-->
<script type="text/javascript">
    Threads.setState(4);
    Threads.initThreadsListPage();
</script>
<!--加载 end-->
</div>


<!--copyright-->

<script src="../static/common/js/webdig_test.js" tppabs="http://liuyan.people.com.cn/static/common/js/webdig_test.js" language="javascript"
        type="text/javascript"></script>

</body>
</html>
