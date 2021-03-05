<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8" />
    <meta content="all" name="robots" />
    <title>
        北京市 - 领导留言板 - 人民网
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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css"/>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css" />
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
</head>

<body>
<!--nav-->
<%@ include file="../common/common-top-help.jsp"%>
<!--nav end-->

<script src="../static/www/js/forum.js" type="text/javascript"></script>
<script src="../static/www/js/threads.js-v=R25" type="text/javascript"></script>

<div class="path_2j w1200 grey2">
    当前位置 ：
    <a href="../index.jsp" >领导留言板</a> > 北京市
</div>
<div class="index_content w1200">
    <script type="application/javascript">
        var nav_fid = '4';
        console.info('fid=', nav_fid);
        $(function() {
            $('#' + nav_fid).addClass('actived');
        });
    </script>

    <div class="clearfix district_box02 w1200">
        <div class="fl"><strong>北京市</strong>
            <p>历史留言总量: <i class="red">${beijingTotal.askNum}</i> 条　<span><br/></span>历史回复总量: <i class="red">${beijingTotal.reNum}</i> 条</p>
        </div>
    </div>

    <div class="district_box03 w1200 clearfix">

        <div class="fl">
            <dl class="clearfix">
                <dt>
                    <h2>
                        <b><a href=""  target="_blank" class="forumName" style="display: block;font-weight:bold;">北京市委书记蔡奇</a></b>
                    </h2>
                </dt>

                <div style="width: 300px;margin-left:-10px;">
                    <a href="../threads/list-fid=539.htm"  class="message_index">查看留言</a>
                    <a href="needlogin-referer=http---liuyan.people.com.cn-threads-post-fid=539.htm"  class="message_index_color" onclick="javascript:return Threads.checkCount()">我要留言</a>

                </div>

                <p class="tack_message">
                    <a href="../threads/list-fid=539.htm"  style="margin-top:25px;">年度总留言量: <i class="red">19658</i> 条 &nbsp;&nbsp;</a>
                    <span><br/></span>
                    <a href="../threads/list-fid=539&state=4.htm" >年度公开回复量: <i class="red">18989</i> 条 &nbsp;&nbsp;</a>
                </p>
            </dl>
        </div>

        <div class="fr">
            <dl class="clearfix">
                <dt>
                    <h2>
                        <b><a href=""  target="_blank" class="forumName" style="display: block;font-weight:bold;">北京市市长陈吉宁</a></b>
                    </h2>
                </dt>

                <div style="width: 300px;margin-left:-10px;">
                    <a href="../threads/list-fid=540.htm"  class="message_index">查看留言</a>
                    <a href="needlogin-referer=http---liuyan.people.com.cn-threads-post-fid=540.htm"  class="message_index_color" onclick="javascript:return Threads.checkCount()">我要留言</a>
                </div>

                <p class="tack_message">
                    <a href="../threads/list-fid=540.htm"  style="margin-top:25px;">年度总留言量: <i class="red">5978</i> 条 &nbsp;&nbsp;</a>
                    <span><br/></span>
                    <a href="../threads/list-fid=540&state=4.htm" >年度公开回复量: <i class="red">5786</i> 条 &nbsp;&nbsp;</a>
                </p>
            </dl>
        </div>

    </div>

    <div class="district_box04 clearfix w1200">
        <ul class="clearfix">

            <li>
                <b>



                    <a class="count-limit" href="list-fid=638.jsp" tppabs="http://liuyan.people.com.cn/forum/list?fid=638">东城区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">859</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">854</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=639.jsp" tppabs="http://liuyan.people.com.cn/forum/list?fid=639">西城区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">1069</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">1050</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=642.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=642">朝阳区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">5001</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">4907</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=643.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=643">海淀区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">3199</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">3185</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=644.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=644">丰台区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">2381</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">2353</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=645.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=645">石景山区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">758</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">682</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=646.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=646">门头沟区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">499</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">488</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=647.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=647">房山区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">1093</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">919</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=648.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=648">通州区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">963</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">918</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=649.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=649">顺义区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">1175</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">1178</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=650.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=650">昌平区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">2143</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">2048</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="forum/list-fid=651.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=651">大兴区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">2165</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">2078</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="forum/list-fid=652.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=652">怀柔区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">103</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">99</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="forum/list-fid=654.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=654">密云区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">193</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">193</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="forum/list-fid=655.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=655">延庆区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">96</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">96</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="${pageContext.request.contextPath}/forum/list-fid=653.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=653">平谷区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">106</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">94</i> 条</p>

            </li>

            <li>
                <b>



                    <a class="count-limit" href="list-fid=5117.htm" tppabs="http://liuyan.people.com.cn/forum/list?fid=5117">北京经济技术开发区</a>


                </b>
                <p class="grey2">年度总留言量: <i class="red">339</i> 条</p>
                <p class="grey2">年度公开回复量: <i class="red">328</i> 条</p>

            </li>

        </ul>
        <div>说明：年度留言量/回复量特指从上一年同月1日开始，至当日日期的数据。其中，回复量包括对既往留言的回复情况。</div>
    </div>

    <script type="text/javascript">
        $(function() {
            Forum.initRankBtn(4);
            $(document).click(function(e) {
                var target = e.target,
                    timer;
                if($(target).hasClass('rank-btn')) return;
            });

            $('#rank_panel').mouseleave(function() {
                $(this).hide();
            });
        });
    </script>

    <script id="forum_rank_tpl" type="text/x-tmpl">
				<div class="tab-box">
					<table>
						<tbody>
							{% for(var i=0; i
							<o.rankThreadsNum.length; i++) { %} <tr>
								<td><span class="icon i-num {% if(i>2){ %}i-gray-num{% } %}">{%=(i+1)%}</span></td>
								<td>{%=o.rankThreadsNum[i].forumName%}</td>
								<td>{%=o.rankThreadsNum[i].num%}</td>
								</tr>
								{% } %}
						</tbody>
					</table>
				</div>
				<div class="tab-box" style="display:none">
					<table>
						<tbody>
							{% for(var i=0; i
							<o.rankAnswersNum.length; i++) { %} <tr>
								<td><span class="icon i-num {% if(i>2){ %}i-gray-num{% } %}">{%=i+1%}</span></td>
								<td>{%=o.rankAnswersNum[i].forumName%}</td>
								<td>{%=o.rankAnswersNum[i].num%}</td>
								</tr>
								{% } %}
						</tbody>
					</table>
				</div>
				<div class="tab-box" style="display:none">
					<table>
						<tbody>
							{% for(var i=0; i
							<o.rankAnswersRate.length; i++) { %} <tr>
								<td><span class="icon i-num {% if(i>2){ %}i-gray-num{% } %}">{%=i+1%}</span></td>
								<td>{%=o.rankAnswersRate[i].forumName%}</td>
								<td>{%=o.rankAnswersRate[i].num%}%</td>
								</tr>
								{% } %}
						</tbody>
					</table>
				</div>

			</script>

    <script type="text/javascript">
        $(function() {
            for(var i = 0; i < $(".forumName").length; i++) {
                var ele = $($(".forumName").get(i));
                var fullname = ele.html();
                var seperateName = fullname.replace(/(书记|市长|区长|省长|主席|盟长|州长|行署专员|管理委员会主任|县长|管委会主任|行政长官)/, "$& ");
                ele.html(seperateName);
                ele.css("display", "");
            }
        });
    </script>
</div>

<!--copyright-->
<div class="bottom_copyright1 clearfix">
    <div class="clearfix w1200">
        <div class="fl left">
            <h2><i class="icon"></i>一块帮老百姓办事的留言板</h2>
            <p>
                邮箱：leader@people.cn
            </p>
        </div>
        <div class="fl left" style="margin-left:-2rem">
            <h2>帮助中心</h2>
            <ul>
                <li>
                    <a href="../help/help-1.jsp" target="_blank">新用户必读</a>
                </li>
                <li>&emsp;&emsp;
                    <a href="../help/help-2.jsp" target="_blank">服务协议</a>
                </li>
                <li>
                    <a href="../help/help-3.jsp" target="_blank">留言基础操作</a>
                </li>
                <li>
                    <a href="../help/help-4.jsp" target="_blank">如何删除留言</a>
                </li>
                <li>&emsp;&emsp;
                    <a href="../help/help-5.jsp" target="_blank">常见问题</a>
                </li>
                <li>
                    <a href="../help/help-6.jsp" target="_blank">留言如何迅速得到办理</a>
                </li>
                <li>
                    <a href="../help/help-7.jsp" target="_blank">联系我们</a>
                </li>
                <li>&emsp;&emsp;
                    <a href="../help/help-8.jsp" target="_blank">隐私政策</a>
                </li>
            </ul>
        </div>
        <div class="fr right" style="margin-right: -4rem;">
            <p style="margin-right: 15px;"><img src="../static/www/images/khd.png" width="104" border=0 alt="扫码下载客户端" />扫码下载客户端</p>
            <p><img src="../static/www/images/gzh.jpg" width="104" border=0 alt="扫码关注公众号" />扫码关注公众号</p>
        </div>
    </div>
</div>

<script src="../static/common/js/webdig_test.js" tppabs="http://liuyan.people.com.cn/static/common/js/webdig_test.js" language="javascript" type="text/javascript"></script>

</body>

</html>
