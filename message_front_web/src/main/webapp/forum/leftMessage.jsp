<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="x-ua-compatible" content="IE=11">
    <meta http-equiv="Content-Language" content="utf-8">
    <meta content="all" name="robots">
    <title>
        政务信息咨询
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

    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.validate.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.form.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/jquery.webui-popover.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/layer/layer.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/tmpl.min.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/thirdparty/json2.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/common.js"  type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/common/js/tab.js"  type="text/javascript"></script>


<body>
<!--nav-->
<%@ include file="/common/common-top.jsp"%>
<!--nav end-->

<div class="path_2j w1200 grey2">
    当前位置 ：
    <a href="${pageContext.request.contextPath}/index.jsp" >领导留言板</a> > 北京市 &gt;&nbsp;留言
</div>


<!--留言区-->
<form name="postForm" id="postForm" action="${pageContext.request.contextPath}/frontCity/saveLeftMessage.do" method="post">
    <div class="liuyan_box01 w1200 clearfix">
        <input type="hidden" name="leaderId" value="${leaderId}">
        <div class="box01 grey2">
        </div>
        <div class="w1200">
            <h3 class="message_title">留言信息</h3>
            <table class="message_box" cellpadding="0" cellspacing="0">
                <tbody><tr>
                    <td>*类别</td>
                    <td>
                        <input checked type="radio" id="typeId" onclick="getIndex()" name="typeId" value="1" style="margin-left:18px;">咨询
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
                                <input type="text" name="field" id="a" class="layui-input">
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>*标题</td>
                    <td>
                        <input name="title" id="subject" type="text" maxlength="22" placeholder="请输入标题，不超过22字，请勿填写特殊符号" class="titlemessage">
                    </td>
                </tr>

                <tr id="leiBie">
                    <td>*正文</td>
                    <td>
                        <li class="t02">
                        <textarea name="passage" id="content" cols="100" rows="6" placeholder="请输入正文
                            1、描述尽量简明扼要，过多的修辞、宣泄并不会有助于问题的解决。
                            2、个人隐私信息，如手机号码、姓名、家庭住址等，请填写在页面下方个人信息备注内容版块内。
                            3、请勿发布违反管理条例的言论。" class="textmessage" maxlength="1000"></textarea>
                        </li>
                    </td>
                </tr>

                <tr id="touSu" style="display: none">
                    <td>*诉求</td>
                    <td>
                        <li class="t02">
                        <textarea name="askPassage" id="appeal" cols="100" rows="6" placeholder="请您以文字方式在留言中简要说明反映问题的具体情况，并尽量提供全面的信息。
                            提示：
                            1、需包含：事件经过、地址、诉求等信息。
                            2、请勿超过200字。" class="textmessage" maxlength="200"></textarea>
                        </li>
                    </td>
                </tr>
                <tr id="buChong" style="display: none">
                    <td>补充信息</td>
                    <td>
                        <li class="t02">
                    <textarea name="extraPassage" id="complainContent" cols="100" rows="6" placeholder="如您还有信息需要补充，可填写在此处。
                        提示：
                        1、过多的修辞、情感宣泄会占用篇幅，并影响问题的解决速度。
                        2、请勿超过800字。" class="textmessage" maxlength="800"></textarea>
                        </li>
                    </td>
                </tr>

                </tbody>
            </table>


            <h3 class="message_title" style="margin-top:20px">个人信息</h3>
            <p class="coordinate">为了更好的协调解决具体问题，请您如实填写相关信息。关于隐私权保护的条款请参阅：《服务协议·隐私权保护》</p>
            <table class="message_box" cellpadding="0" cellspacing="0">
                <tbody><tr>
                    <td>*姓名</td>
                    <td>
                        <input id="realName" name="trueUsername" value="" placeholder="真实姓名" class="truename_default">
                    </td>
                </tr>
                <tr>
                    <td>*电话</td>
                    <td>
                        <input id="phone" name="messagePhone" value="${userInfo.phone}" placeholder="联系电话" class="truename_default" style="background:#e2e2e2" maxlength="11">
                    </td>
                </tr>
                <tr>
                    <td>备注</td>
                    <td>
                        <li class="t02">
                    <textarea name="extraMessage" id="hiddenRemark" cols="100" rows="6" style=" resize:none;" class="textmessage" placeholder="涉及到姓名、电话、身份证号码、详细地址、联系方式或其他不便公开发表的信息，请填写在此处。
                            提示：
                            1、相关信息将不会在留言板上公开展示，仅供人民网工作人员及办理单位核实情况、沟通问题、反馈办理情况使用。
                            2、请勿超过200字。" maxlength="200"></textarea>
                        </li>
                    </td>
                </tr>
                </tbody></table>
            <div class="bottom1">
                <p id="code" style="display: block">
                    <span class="codecolor">*</span>验证码:
                    <input id="varCode" name="varCode" placeholder="输入验证码" class="input01" data-tipid="verCode-err" style="height: 30px">
                    <span style="cursor:pointer;font-size:16px;">
                        <img src="${pageContext.request.contextPath}/frontCity/checkCodeServlet.do"
                             id="codeImg" class="codeimg_img" onclick="changeImage()">
                    </span>
                    <label id="verCode-error" style="color: red"></label>
                </p>
                <p class="takecare">查看<a href="${pageContext.request.contextPath}/help/help-2.jsp" target="_blank" class="management">《领导留言板服务协议》</a></p>
                <input type="submit" id="submit-msg" value="同意协议并提交" class="submit" style="height: 40px">
            </div>
        </div>
    </div>
</form>

<!--留言区 end-->

<script type="text/javascript">
    function changeImage() {
        let imgs=document.querySelector("#codeImg")
        imgs.src="${pageContext.request.contextPath}/frontCity/checkCodeServlet.do?time="+new Date().getTime()
    }

    $("#varCode").blur(function () {
        let varCodeCheck=$(this).val();
        if (varCodeCheck=="") {
            alert("验证码不正确");
            return;
        }
        let url="${pageContext.request.contextPath}/frontCity/varCodeCheck.do";
        let data="varCode="+varCodeCheck;
        $.get(url,data,function (resp) {
            if (resp) {
                $("#verCode-error").html("验证码正确");
                $("#submit-msg").attr("disabled",false);
            }else{
                $("#verCode-error").html("验证码不正确");
                $("#submit-msg").attr("disabled","disabled");
            }
        })
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


<!--copyright-->
<%@ include file="/common/common-bottom.jsp"%>

<script src="${pageContext.request.contextPath}/js/webdig_test.js.下载" language="javascript" type="text/javascript"></script>


</body></html>
