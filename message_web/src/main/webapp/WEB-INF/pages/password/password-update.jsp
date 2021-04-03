<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../base.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>数据 - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- 页面meta /-->
</head>
<body>
<div id="frameContent" class="content-wrapper" style="margin-left:0px;">
    <!-- 内容头部 -->
    <section class="content-header">
        <h1>
            个人中心
            <small>修改密码</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="/"><i class="fa fa-dashboard"></i> 首页</a></li>
            <li><a href="${ctx}/system/user/list.do">个人中心</a></li>
        </ol>
    </section>
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">

        <!--订单信息-->
        <div class="panel panel-default">
            <div class="panel-heading">用户信息</div>
            <form id="editForm" action="${ctx}/password/edit.do" method="post">
                <input type="hidden" id="id" name="id" value="${frontLeaderName.id}">
                <div class="row data-type" style="margin: 0px">
                    <div class="col-md-1 title">用户名称</div>
                    <div class="col-md-5 data">
                        <input type="text" class="form-control" placeholder="用户名称" readonly="readonly" name="leaderName" value="${frontLeaderName.leaderName}">
                    </div>

                    <div class="col-md-1 title">性别</div>
                    <div class="col-md-5 data">
                        <div class="form-group form-inline">
                            <div class="radio"><label><input type="radio" ${frontLeaderName.gender==0?'checked':''} name="gender" value="0">男</label></div>
                            <div class="radio"><label><input type="radio" ${frontLeaderName.gender==1?'checked':''} name="gender" value="1">女</label></div>
                        </div>
                    </div>

                    <div class="col-md-1 title">区域</div>
                    <div class="col-md-5 data">
                        <input type="text" class="form-control" placeholder="区域" name="name" value="${frontLeaderName.name}" readonly="readonly">
                    </div>

                    <div class="col-md-1 title">职位</div>
                    <div class="col-md-5 data">
                        <input type="text" class="form-control" placeholder="职位" name="job" value="${frontLeaderName.job}" readonly="readonly">
                    </div>

                    <div class="col-md-1 title">其它职位</div>
                    <div class="col-md-5 data">
                        <input type="text" class="form-control" placeholder="其它职位" name="otherJob" value="${frontLeaderName.otherJob}" readonly="readonly">
                    </div>

                    <div class="col-md-1 title">邮箱</div>
                    <div class="col-md-5 data">
                        <input type="text" class="form-control" placeholder="邮箱" name="email" value="${frontLeaderName.email}" readonly="readonly">
                    </div>

                    <div class="col-md-1 title">密码</div>
                    <div class="col-md-5 data">
<%--                        <input type="password" class="form-control" placeholder="密码" name="password" value="${frontLeaderName.password}">--%>
                        <input type="password" class="form-control" placeholder="密码" name="password" value="">
                    </div>

                    <div class="col-md-1 title">联系电话</div>
                    <div class="col-md-5 data">
                        <input type="text" class="form-control" placeholder="电话" name="telephone" value="${frontLeaderName.telephone}">
                    </div>



                </div>
            </form>
        </div>
        <!--订单信息/-->

        <!--工具栏-->
        <div class="box-tools text-center">
            <button type="button" onclick='document.getElementById("editForm").submit()' class="btn bg-maroon">保存</button>
            <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
        </div>
        <!--工具栏/-->

    </section>
    <!-- 正文区域 /-->

</div>
<!-- 内容区域 /-->
</body>
<script src="${ctx}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${ctx}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<link rel="stylesheet" href="${ctx}/css/style.css">
<script>
    $('#datepicker').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd'
    });
    $('#datepicker1').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd'
    });
</script>
</html>