<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8">
    <meta content="all" name="robots">
    <title>
        领导留言板
    </title>
    <meta name="keywords" content="领导留言板">
    <meta name="description" content="领导留言板">
    <meta name="filetype" content="1">
    <meta name="publishedtype" content="1">
    <meta name="pagetype" content="2">
    <meta name="catalogs" content="XTW_0002000">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/page.css" type="text/css" media="all" charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/message.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cascader.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.webui-popover.css">

    <script src="js/jquery-3.2.1.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.validate.min.js" type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.form.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/jquery.webui-popover.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/layer/layer.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/tmpl.min.js"  type="text/javascript"></script>
    <script src="static/common/js/thirdparty/json2.js"  type="text/javascript"></script>
    <script src="static/common/js/common.js"  type="text/javascript"></script>
    <script src="static/common/js/tab.js"  type="text/javascript"></script>


<body>
<!--nav-->
<%@ include file="/common/common-top.jsp"%>
<!--nav end-->

<div class="path_2j w1200 grey2">
    当前位置 ：
    <a href="../index.jsp" >领导留言板</a> > 北京市 &gt;&nbsp;留言
</div>


<!--留言区-->
<form name="postForm" id="postForm" action="http://liuyan.people.com.cn/threads/post" method="post" onsubmit="return false">
    <div class="liuyan_box01 w1200 clearfix">
        <input type="hidden" id="form_position" name="position" value="0">
        <input type="hidden" name="uploadFiles" id="uploadFiles">
        <input type="hidden" name="fid" id="fid" value="545">
        <div class="box01 grey2">
        </div>
        <div class="w1200">
            <h3 class="message_title">留言信息</h3>
            <table class="message_box" cellpadding="0" cellspacing="0">
                <tbody><tr>
                    <td>*类别</td>
                    <td>


                        <input type="radio" id="typeId" onclick="getIndex()" name="typeId" value="1" style="margin-left:18px;">咨询

                        <input type="radio" id="typeId" onclick="getIndex()" name="typeId" value="5" style="margin-left:18px;">建言

                        <input type="radio" id="typeId" onclick="getIndex()" name="typeId" value="2" style="margin-left:18px;">投诉

                        <input type="radio" id="typeId" onclick="getIndex()" name="typeId" value="6" style="margin-left:18px;">求助

                        <input type="radio" id="typeId" onclick="getIndex()" name="typeId" value="9" style="margin-left:18px;">感谢




                    </td>
                </tr>

                <tr>
                    <td>*领域</td>
                    <td style="margin-top:20px">
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <input type="text" id="a" class="layui-input" readonly="readonly" value="请选择领域"><div class="urp-cascader-content"><ul class="urp-cascader-child" style="display: none;"><li>城建<i class="layui-icon layui-icon-right"></i></li><li>交通<i class="layui-icon layui-icon-right"></i></li><li>三农<i class="layui-icon layui-icon-right"></i></li><li>环保<i class="layui-icon layui-icon-right"></i></li><li>教育<i class="layui-icon layui-icon-right"></i></li><li>医疗<i class="layui-icon layui-icon-right"></i></li><li>治安<i class="layui-icon layui-icon-right"></i></li><li>旅游<i class="layui-icon layui-icon-right"></i></li><li>就业<i class="layui-icon layui-icon-right"></i></li><li>文娱<i class="layui-icon layui-icon-right"></i></li><li>金融<i class="layui-icon layui-icon-right"></i></li><li>企业<i class="layui-icon layui-icon-right"></i></li><li>政务<i class="layui-icon layui-icon-right"></i></li></ul></div><i class="layui-icon layui-icon-down"></i>
                                <input type="hidden" id="domainId" name="domainId">
                                <input type="hidden" id="subDomainId" name="subDomainId">
                            </div>
                        </div>
                    </td>
                </tr>


                <tr>
                    <td>*标题</td>
                    <td>
                        <input name="subject" id="subject" type="text" maxlength="22" placeholder="请输入标题，不超过22字，请勿填写特殊符号" class="titlemessage">
                    </td>
                </tr>

                <tr id="leiBie">
                    <td>*正文</td>
                    <td>
                        <li class="t02">
                        <textarea name="content" id="content" cols="100" rows="6" placeholder="请输入正文
1、描述尽量简明扼要，过多的修辞、宣泄并不会有助于问题的解决。
2、个人隐私信息，如手机号码、姓名、家庭住址等，请填写在页面下方个人信息备注内容版块内。
3、请勿发布违反管理条例的言论。" class="textmessage" maxlength="1000"></textarea>
                        </li>
                        <li class="t03">
                            <em class="fr grey2" style="padding-right:5px;">
                                <span id="curLen">0</span>/<span id="maxLen">1000</span>字， 还能输入<span id="leftLen">1000</span>字！
                            </em>
                        </li>
                    </td>
                </tr>

                <tr id="touSu" style="display: none">
                    <td>*诉求</td>
                    <td>
                        <li class="t02">
                        <textarea name="appeal" id="appeal" cols="100" rows="6" placeholder="请您以文字方式在留言中简要说明反映问题的具体情况，并尽量提供全面的信息。
提示：
1、需包含：事件经过、地址、诉求等信息。
2、请勿超过200字。" class="textmessage" maxlength="200"></textarea>
                        </li>
                        <li class="t03">
                            <em class="fr grey2" style="padding-right:5px;">
                                <span id="curLen1">0</span>/<span id="maxLen1">200</span>字， 还能输入<span id="leftLen1">200</span>字！
                            </em>
                        </li>
                    </td>
                </tr>
                <tr id="buChong" style="display: none">
                    <td>补充信息</td>
                    <td>
                        <li class="t02">
                    <textarea name="complainContent" id="complainContent" cols="100" rows="6" placeholder="如您还有信息需要补充，可填写在此处。
提示：
1、过多的修辞、情感宣泄会占用篇幅，并影响问题的解决速度。
2、请勿超过800字。" class="textmessage" maxlength="800"></textarea>
                        </li>
                        <li class="t03">
                            <em class="fr grey2" style="padding-right:5px;">
                                <span id="curLen2">0</span>/<span id="maxLen2">800</span>字， 还能输入<span id="leftLen2">800</span>字！
                            </em>
                        </li>
                    </td>
                </tr>

                <tr class="event_adress">
                    <td>发生地</td>
                    <td>
                        <div class="post_position" id="place_btn">打开腾讯地图</div>
                        <span id="del_place_btn" class="delete_buttoun" style="display: none;">删除</span>
                        <input type="hidden" id="j_threadPlace" name="threadPlace">
                        <input type="hidden" id="j_longitude" name="longitude">
                        <input type="hidden" id="j_latitude" name="latitude">

                        <span id="noPublic" style="display: none;"><input type="checkbox" id="public_place" data-public-place="1" class="noPublic" style="background: transparent!important;  ">&nbsp;不公开</span>
                        <input type="hidden" id="input_public_place" name="threadPlacePublic" value="1">
                    </td>
                </tr>

                <tr>
                    <td>附件</td>
                    <td class="clearfix box02" id="text_content_img">
                        <ul>
                            <span class="div1" id="uploadBT" style="display: inline-block">
                                <span class="div2" style="display: inline-block">添加图片</span>
                                <input type="file" class="file_input" id="fileupload" onchange="javascript:Attach.uploadFile();" accept="image/*" name="attach">
                                <span style="margin-left:5px">最多上传5张5M以内的图片 支持格式：jpg,png,jpeg</span>
                            </span>

                            <i id="loading" style="display: none; color: #F00">&nbsp;&nbsp;上传中......</i>
                            <p>
                                <a id="imgArea"></a>
                            </p>
                        </ul>
                    </td>
                </tr>
                </tbody></table>
            <h3 class="message_title" style="margin-top:20px">个人信息</h3>
            <p class="coordinate">为了更好的协调解决具体问题，请您如实填写相关信息。关于隐私权保护的条款请参阅：《服务协议·隐私权保护》</p>
            <table class="message_box" cellpadding="0" cellspacing="0">
                <tbody><tr>
                    <td>*姓名</td>
                    <td>
                        <input id="realName" name="realName" value="" placeholder="真实姓名" class="truename_default">
                    </td>
                </tr>
                <tr>
                    <td>*电话</td>
                    <td>
                        <input id="phone" name="phone" value="15522002039" placeholder="联系电话" class="truename_default" readonly="true" style="background:#e2e2e2" maxlength="11">
                        <button class="replaceTel" id="btn" type="button" style="border: none; background: #fff">更换</button>
                    </td>
                </tr>
                <tr>
                    <td>备注</td>
                    <td>
                        <li class="t02">
                    <textarea name="hiddenRemark" id="hiddenRemark" cols="100" rows="6" style=" resize:none;" class="textmessage" placeholder="涉及到姓名、电话、身份证号码、详细地址、联系方式或其他不便公开发表的信息，请填写在此处。
提示：
1、相关信息将不会在留言板上公开展示，仅供人民网工作人员及办理单位核实情况、沟通问题、反馈办理情况使用。
2、请勿超过200字。" maxlength="200"></textarea>
                        </li>
                        <li class="t03">
                            <em class="fr grey2" style="padding-right:5px;">
                                <span id="curLen3">0</span>/<span id="maxLen3">200</span>字， 还能输入<span id="leftLen3">200</span>字！
                            </em>
                        </li>
                    </td>
                </tr>
                </tbody></table>
            <div class="bottom1">
                <p id="phoneNumber" style="display: none"><span class="codecolor">*</span>验证码：<input class="verification" id="phoneCode" name="phoneCode" placeholder="请输入验证码">
                    <input type="hidden" name="verCode" id="verCode">
                    <button type="button" class="feachBtn" style="background: #c63f45;color:#fff;border:none;padding:5px 10px">获取短信验证码</button>
                </p>
                <p id="code" style="display: block"><span class="codecolor">*</span>验证码: <input id="varCode" name="varCode" placeholder="输入验证码" class="input01" data-tipid="verCode-err" style="height: 30px">
                    <span style="cursor:pointer;font-size:16px;" id="refreshImg"><img src="./留言  山西省委书记楼阳生 - 山西省 - 领导留言板 - 人民网_files/rand4" id="codeImg" class="codeimg_img">换一张</span>
                    <label id="verCode-error"></label></p>
                <p class="takecare">查看<a href="http://liuyan.people.com.cn/help?cat=2" target="_blank" class="management">《领导留言板服务协议》</a></p>
                <input name="" type="button" id="submit-msg" value="同意协议并提交" class="submit" style="height: 40px">
            </div>
        </div>
    </div>
</form>
<form id="s_form" style="display:none" method="post">
    <input type="hidden" name="fid" id="add_fid">
    <input type="hidden" name="tid" id="add_tid">
    <input type="hidden" name="anonymousCode" id="add_anonymousCode">
</form>
<div style="padding: 50px 38px;display: none" id="bwTips">
    <p>欢迎您进入“《领导留言板》部委版块”留言。您可对相关部委的工作建言献策。我们将把您的建议进行集中整理，并择选部分内容进行公开发布。</p><br>
    <p>留言须知：</p>
    <p>1、请您自觉遵守中华人民共和国宪法和法律；</p>
    <p>2、请您仔细阅读《领导留言板》<a href="http://liuyan.people.com.cn/help?cat=2" target="_blank" style="color: #d1182a">服务协议</a>相关约定；</p>
    <p>3、请勿发表与您选择留言的部委工作无关的内容；</p>
    <p>4、如您的留言内容涉及具体诉求，请在“《领导留言板》<a href="http://liuyan.people.com.cn/home?p=0" target="_blank" style="color: #d1182a">地方领导版块</a>”向问题发生地进行反映。</p><br>
    <p>感谢您的关注和支持！</p>
</div>


<!--留言区 end-->

<script type="text/javascript">
    function refreshCode() {
        var timestamp = (new Date()).valueOf();
        $("#codeImg").attr("src", "/verifycode/rand4?timestamp=" + timestamp);
        return false;
    }
    /* $(function(type){
        var val = $("#typeId").val();
        alert(val);
        if (val == 1 ) {
            $("#typeId").attr(type[0],"checked");
        }
     });*/

    //图片公开不公开的事件
    function imagePublic(obj){
        switch (parseInt($(obj).data('public'))) {
            case 1:
                $(obj).data('public',0);
                break;
            case 0:
                $(obj).data('public',1);
                break;
        }
    }

    $('#del_place_btn').on('click',function () {
        var threadPlace='打开腾讯地图';
        $('#j_threadPlace').val('');
        $('#j_longitude').val('');
        $('#j_latitude').val('');
        $('#input_public_place').val('');
        $('#place_btn').text(threadPlace);
        $("#del_place_btn").hide();
        $("#noPublic").hide();
    });
    $(function () {
        //默认选中第一个单选框$('input:radio:first').attr('checked','checked');
        $("#del_place_btn").hide();
        $("#noPublic").hide();


        Threads.initPostPage(545);




        var codeSrc = '/verifycode/rand4?t=' + (new Date().getTime())
        $('#codeImg').attr('src',codeSrc)




    });
</script>
<script type="text/javascript">
    function getIndex()
    {
        var redioVal =  $('input[type="radio"]:checked').val();
        console.info(redioVal);
        //从document对象中，获取select标签
        var leiBie = document.getElementById("leiBie");
        var touSu = document.getElementById("touSu");
        var buChong = document.getElementById("buChong");
        if (redioVal == 2){
            leiBie.style.display = "none";
            touSu.style.display="block";
            buChong.style.display="block";
        }
        if (redioVal != 2){
            touSu.style.display = "none";
            buChong.style.display = "none";
            leiBie.style.display="block";
        }
    }
</script>

<script type="text/javascript">
    $("#btn").click(function(){
        $("#phone").attr("value", "");
        $(" #phone ").removeAttr("style");
        $(" #phone ").removeAttr("readOnly");
        var phoneNumber=document.getElementById("phoneNumber");
        var code=document.getElementById("code");
        phoneNumber.style.display="block";
        code.style.display="none";
    })
</script>

<script type="text/javascript">
    var isVerCode = true;
    $('.feachBtn').click(function(){
        var phone = $(" #phone ").val();
        if(!(/^1[3456789]\d{9}$/.test(phone))){
            $('#phone').focus();
            layer.tips('输入的手机号码有误，请重新填写', '#phone', {time:5000, tips: [1, '#FF6666']});
            return false;
        }
        if(!isVerCode){
            return;
        }
        isVerCode = false;
        $.ajax({
            url:CONTEXT_PATH + "/threads/verifyCode",
            type: "post",
            data:{"phone":phone},
            success: function(data){
                var newData = JSON.parse(data);
                $(" #verCode ").val(newData.responseData);
                var count = 120;
                const countDown = setInterval(() => {
                    if (count === 0) {
                        isVerCode = true;
                        $('.feachBtn').text('重新获取验证码').removeAttr('disabled');
                        $('.feachBtn').css({
                            background: '#c63f45',
                            color:'#fff',
                            border:'none',
                            padding:'5px 10px',
                        });
                        clearInterval(countDown);
                    } else {
                        $('.feachBtn').attr('disabled', true);
                        $('.feachBtn').css({
                            background: '#c63f45',
                            color:'#fff',
                            border:'none',
                            padding:'5px 10px',
                        });
                        $('.feachBtn').text(count + '秒后可重新获取');
                    }
                    count--;
                }, 1000);
            }
        });
    });
</script>


<script type="text/javascript">
    layui.config({
        base: "/static/www/js/lay/mymodules/"
    }).use(['form',"jquery","cascader","form"], function(){
        var $ = layui.jquery;
        var cascader = layui.cascader;

        //var data = [{"value":"7","label":"城建","children":[{"value":"183","label":"供暖","children":[]},{"value":"184","label":"供水","children":[]},{"value":"185","label":"燃气","children":[]},{"value":"186","label":"房产开发","children":[]},{"value":"187","label":"房屋维修","children":[]},{"value":"188","label":"物业管理","children":[]},{"value":"189","label":"房屋挡光","children":[]},{"value":"190","label":"住房公积金","children":[]},{"value":"191","label":"城市拆迁及棚户区改造","children":[]},{"value":"192","label":"保障性住房","children":[]},{"value":"193","label":"城市规划","children":[]},{"value":"194","label":"市政道路及设施","children":[]},{"value":"195","label":"城市绿化","children":[]},{"value":"196","label":"环卫","children":[]}]},{"value":"6","label":"交通","children":[{"value":"197","label":"公交车管理","children":[]},{"value":"198","label":"出租车管理","children":[]},{"value":"199","label":"客运车辆及客运站","children":[]},{"value":"200","label":"高速公路及服务区","children":[]},{"value":"201","label":"公路建设维修","children":[]},{"value":"202","label":"驾校监管","children":[]},{"value":"203","label":"铁路","children":[]},{"value":"204","label":"地铁","children":[]},{"value":"205","label":"轻轨","children":[]},{"value":"206","label":"机场","children":[]}]},{"value":"9","label":"三农","children":[{"value":"207","label":"土地承包","children":[]},{"value":"208","label":"农村征地拆迁","children":[]},{"value":"209","label":"惠农补贴","children":[]},{"value":"210","label":"农村供水","children":[]},{"value":"211","label":"村屯道路维修","children":[]},{"value":"212","label":"农村垃圾清理","children":[]},{"value":"213","label":"涉农乱收费","children":[]},{"value":"214","label":"村级债务","children":[]},{"value":"215","label":"农村落户","children":[]}]},{"value":"13","label":"环保","children":[{"value":"216","label":"饭店超市噪声","children":[]},{"value":"217","label":"饭店超市油烟","children":[]},{"value":"218","label":"娱乐场所噪声","children":[]},{"value":"219","label":"工矿企业噪声","children":[]},{"value":"220","label":"建筑工地夜间施工","children":[]},{"value":"221","label":"工矿企业废气","children":[]},{"value":"222","label":"不明来源空气异味","children":[]},{"value":"223","label":"电磁辐射污染","children":[]},{"value":"224","label":"畜禽养殖污染","children":[]},{"value":"225","label":"医疗废物","children":[]}]},{"value":"14","label":"教育","children":[{"value":"226","label":"补习班","children":[]},{"value":"227","label":"教辅材料","children":[]},{"value":"228","label":"择校择班","children":[]},{"value":"229","label":"收费","children":[]},{"value":"230","label":"校园安全","children":[]},{"value":"231","label":"课业负担","children":[]},{"value":"232","label":"教学质量","children":[]},{"value":"233","label":"师资配置","children":[]},{"value":"234","label":"校园管理","children":[]},{"value":"235","label":"学区划分","children":[]},{"value":"236","label":"幼儿园","children":[]},{"value":"237","label":"培训机构","children":[]},{"value":"238","label":"招生","children":[]},{"value":"239","label":"中高考","children":[]},{"value":"240","label":"奖助学金","children":[]},{"value":"241","label":"高校","children":[]}]},{"value":"12","label":"医疗","children":[{"value":"256","label":"“四害”和公共场所吸烟","children":[]},{"value":"257","label":"餐饮卫生许可证","children":[]},{"value":"258","label":"餐饮食品安全","children":[]},{"value":"259","label":"保健食品","children":[]},{"value":"260","label":"药品安全","children":[]},{"value":"242","label":"医疗机构管理","children":[]},{"value":"243","label":"医护人员","children":[]},{"value":"244","label":"药品招标采购","children":[]},{"value":"245","label":"医疗机构资质","children":[]},{"value":"246","label":"120救护","children":[]},{"value":"247","label":"医改政策","children":[]},{"value":"248","label":"农村合作医疗","children":[]},{"value":"249","label":"超生政策","children":[]},{"value":"250","label":"计划免疫","children":[]},{"value":"251","label":"独生子女奖励","children":[]},{"value":"252","label":"出生证明","children":[]},{"value":"253","label":"准生证及生育指标","children":[]},{"value":"254","label":"建册立卡","children":[]},{"value":"255","label":"饮用水质","children":[]}]},{"value":"1","label":"治安","children":[{"value":"261","label":"社会治安管理","children":[]},{"value":"262","label":"城市交通管理","children":[]},{"value":"263","label":"智慧停车","children":[]},{"value":"264","label":"交通标识及设施","children":[]},{"value":"265","label":"交通处罚","children":[]},{"value":"266","label":"交通事故处理","children":[]},{"value":"267","label":"消防监管","children":[]},{"value":"268","label":"网络监管","children":[]},{"value":"269","label":"出入境","children":[]},{"value":"270","label":"执法规范及效能问题","children":[]}]},{"value":"5","label":"旅游","children":[{"value":"271","label":"旅游出行","children":[]},{"value":"272","label":"旅游住宿","children":[]},{"value":"273","label":"旅游餐饮","children":[]},{"value":"274","label":"旅游游览","children":[]},{"value":"275","label":"旅游购物","children":[]},{"value":"276","label":"旅游娱乐","children":[]}]},{"value":"11","label":"就业","children":[{"value":"277","label":"医疗保险","children":[]},{"value":"278","label":"生育保险","children":[]},{"value":"279","label":"养老保险","children":[]},{"value":"280","label":"工伤保险","children":[]},{"value":"281","label":"失业保险","children":[]},{"value":"282","label":"退休审批","children":[]},{"value":"283","label":"工龄认定","children":[]},{"value":"284","label":"特殊工种","children":[]},{"value":"285","label":"职业介绍","children":[]},{"value":"286","label":"军转干部","children":[]},{"value":"287","label":"退伍退休军人安置","children":[]},{"value":"288","label":"拖欠工资","children":[]},{"value":"289","label":"社保","children":[]},{"value":"290","label":"公积金","children":[]},{"value":"291","label":"企业收取抵押金（物）","children":[]},{"value":"292","label":"劳动合同签订与出具","children":[]},{"value":"293","label":"未执行休息（假）政策","children":[]},{"value":"294","label":"社会福利和身份认定","children":[]}]},{"value":"10","label":"文娱","children":[{"value":"295","label":"出版发行和版权","children":[]},{"value":"296","label":"广播电视电影","children":[]},{"value":"297","label":"表演及演出场所","children":[]},{"value":"298","label":"文化保护和文化设施服务","children":[]}]},{"value":"20","label":"金融","children":[{"value":"299","label":"银行","children":[]},{"value":"300","label":"保险","children":[]},{"value":"301","label":"证券","children":[]},{"value":"302","label":"基金","children":[]}]},{"value":"4","label":"企业","children":[{"value":"303","label":"工商注册及业务办理","children":[]},{"value":"304","label":"企业违规经营","children":[]},{"value":"305","label":"执法规范及效能问题","children":[]}]},{"value":"2","label":"政务","children":[{"value":"306","label":"户籍管理","children":[]},{"value":"307","label":"身份证","children":[]},{"value":"308","label":"机动车证件","children":[]},{"value":"309","label":"城乡低保和农村五保","children":[]},{"value":"310","label":"优待抚恤","children":[]},{"value":"311","label":"社会福利","children":[]},{"value":"312","label":"社会救助","children":[]},{"value":"313","label":"殡葬管理","children":[]},{"value":"314","label":"婚姻登记","children":[]},{"value":"315","label":"区划地名","children":[]},{"value":"316","label":"社区工作者问题","children":[]},{"value":"317","label":"社区农村选举","children":[]},{"value":"318","label":"福利彩票","children":[]},{"value":"319","label":"业主委员会","children":[]},{"value":"320","label":"残联业务","children":[]}]},{"value":"16","label":"其他","children":[]}]
        var cas=cascader({
            elem: "#a",
            url: CONTEXT_PATH + "/threads/domainList/all/ui",
            value: [],
            success: function (valData,labelData) {
                $("#domainId").val(valData[0])
                if (valData[1] == "null"){
                    $("#subDomainId").val("")
                }
                if (valData[1] != "null"){
                    $("#subDomainId").val(valData[1])
                }
            }
        });
    });
</script>



<script type="text/javascript">
    $("#phone").on('input propertychange',function(){
        var phone = $("#phone").val();
        var userPhone = "15522002039";
        if (phone.length == 11) {
            if(!(/^1[3456789]\d{9}$/.test(phone))){
                $('#phone').focus();
                layer.tips('输入的手机号码有误，请重新填写', '#phone', {time:5000, tips: [1, '#FF6666']});
                return false;
            }
            if (phone == userPhone){
                document.getElementById("phoneNumber").style.display="none";
                document.getElementById("code").style.display="block";
            }else {
                document.getElementById("phoneNumber").style.display="block";
                document.getElementById("code").style.display="none";
            }
        }
    });
</script>






<!--copyright-->
<%@ include file="/common/common-bottom.jsp"%>

<script src="${pageContext.request.contextPath}/js/webdig_test.js.下载" language="javascript" type="text/javascript"></script>


</body></html>
