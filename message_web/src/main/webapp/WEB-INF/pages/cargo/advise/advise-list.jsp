<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <script src="${ctx}/plugins/jQuery/jquery-2.2.3.min.js"></script>
</head>
<body>
<div id="frameContent" class="content-wrapper" style="margin-left:0px;">
<section class="content-header">
    <h1>
        回复管理
        <small>建言</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="all-admin-index.html"><i class="fa fa-dashboard"></i> 首页</a></li>
    </ol>
</section>
<!-- 内容头部 /-->

<!-- 正文区域 -->
<section class="content">

    <!-- .box-body -->
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">建言留言列表</h3>
        </div>

        <div class="box-body">

            <!-- 数据表格 -->
            <div class="table-box">

                <!--工具栏-->
                <div class="pull-left">
                    <div class="form-group form-inline">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default" title="待回复" onclick='location.href="${ctx}/cargo/advise/unlist.do?typeId=5"'><i class="fa fa-file-o"></i> 待回复</button>
                            <button type="button" class="btn btn-default" title="已回复" onclick='location.href="${ctx}/cargo/advise/allist.do?typeId=5"'><i class="fa fa-file-o"></i> 已回复</button>
                            <button type="button" class="btn btn-default" title="刷新" onclick="window.location.reload();"><i class="fa fa-refresh"></i> 刷新</button>
                        </div>
                    </div>
                </div>
                <div class="box-tools pull-right">
                    <div class="has-feedback" >
                        <form method="get" href="${pageContext.request.contextPath}/cargo/consult/${url}.do?">
                            <input name="typeId" value="5" type="hidden">
                            <input style="display:inline-block;width:100px"  type="text" class="form-control input-sm" name="findByParam" placeholder="搜索"><button name="搜索">搜索</button>
                        </form>
                    </div>
                </div>
                <!--工具栏/-->

                <!--数据列表-->
                <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                    <thead>
                    <tr>
                        <th class="sorting">序号</th>
                        <th class="sorting">用户昵称</th>
                        <th class="sorting">领域</th>
                        <th class="sorting">标题</th>
                        <th class="text-center">正文</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${page.list}" var="o" varStatus="status">
                        <tr>
                            <td>${status.count }</td>
                            <td>${o.username}</td>
                            <td>${o.field}</td>
                            <td>${o.title}</td>
                            <td>${o.passage}......</td>
                            <td>
                                <a href="${ctx }/cargo/advise/toUpdate.do?id=${o.id}">[查看详情]</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <!--
                <tfoot>
                <tr>
                <th>Rendering engine</th>
                <th>Browser</th>
                <th>Platform(s)</th>
                <th>Engine version</th>
                <th>CSS grade</th>
                </tr>
                </tfoot>-->
                </table>
                <!--数据列表/-->

                <!--工具栏/-->

            </div>
            <!-- 数据表格 /-->


        </div>
        <!-- /.box-body -->

        <!-- .box-footer-->
        <div class="box-footer">
            <jsp:include page="../../common/page.jsp">
                <jsp:param value="${ctx}/cargo/contract/list.do" name="pageUrl"/>
            </jsp:include>
        </div>
        <!-- /.box-footer-->


    </div>

</section>
</div>
</body>

</html>