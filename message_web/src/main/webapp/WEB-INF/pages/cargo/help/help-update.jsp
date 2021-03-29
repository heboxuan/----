<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../../base.jsp"%>
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
            回复管理
            <small>求助</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="all-admin-index.html"><i class="fa fa-dashboard"></i> 首页</a></li>
        </ol>
    </section>
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">

        <!--订单信息-->
        <div class="panel panel-default">
            <div class="panel-heading">求助留言详情</div>
            <form id="editForm" action="${ctx}/cargo/help/edit.do" method="post">
                <input type="hidden" name="id" value="${leftMessageDetail.id}">
                <div class="row data-type" style="margin: 0px">

                    <div class="col-md-2 title">领域</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" readonly="readonly" name="field" value="${leftMessageDetail.field}">
                    </div>

                    <div class="col-md-2 title">标题</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" readonly="readonly" name="title" value="${leftMessageDetail.title}">
                    </div>
                    <div class="col-md-2 title rowHeight2x" style="height: 200px;line-height: 200px">正文</div>
                    <div class="col-md-10 data rowHeight2x" style="height: 200px">
                        <textarea class="form-control" rows="8" name="remark" readonly="passage">${leftMessageDetail.passage}</textarea>
                    </div>
                    <div class="col-md-2 title rowHeight2x" style="height: 200px;line-height: 200px">回复</div>
                    <div class="col-md-10 data rowHeight2x" style="height: 200px">
                        <textarea class="form-control" rows="8" name="responsePassage">${leftMessageDetail.responsePassage}</textarea>
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
<script src="../../plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="../../plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<link rel="stylesheet" href="../../css/style.css">
<script>
    $('#signingDate').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd'
    });
    $('#deliveryPeriod').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd'
    });
    $('#shipTime').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd'
    });
</script>
</html>